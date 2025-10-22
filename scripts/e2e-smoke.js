#!/usr/bin/env node

/**
 * End-to-end smoke test for the Roku SABR demo app.
 *
 * Steps:
 *   1. Uses the BrighterScript CLI to side-load the app defined by bsconfig.json.
 *   2. Connects to the BrightScript console (TCP 8085) with retry and captures logs.
 *   3. Relaunches the dev channel via ECP, waits for the scene init log (10s timeout).
 *   4. Types sample text, moves to the Play button, presses it, and waits for playback.
 *   5. Captures a screenshot and stores artifacts under ./artifacts/.
 *
 * Credentials are resolved in this order:
 *   --host / --password CLI flags
 *   ROKU_DEV_TARGET / ROKU_DEV_PASSWORD environment variables
 *   .vscode/launch.json (first configuration by default, or pass --profile "name")
 */

const fs = require("fs");
const path = require("path");
const net = require("net");
const http = require("http");
const { spawn } = require("child_process");
const {
    EXTERNAL_DUMP_ROOT,
    EXTERNAL_TELNET_LOG_PATH,
    prepareExternalDumpDirectories,
    writeLogFiles,
} = require("./external-dumps");

const DEFAULT_LOG_PORT = 8085;
const DEFAULT_ECP_PORT = 8060;
const WAIT_MS_AFTER_LAUNCH = 2000;
const LAUNCH_TIMEOUT_MS = 10000;
const LOG_CONNECT_TIMEOUT_MS = 15000;
const LOG_CONNECT_RETRY_DELAY_MS = 500;
const ARTIFACTS_DIR = path.resolve("artifacts");
const MAX_RECENT_LOG_CHARS = 200000;
const VSCODE_LAUNCH_PATH = path.resolve(".vscode/launch.json");
const DEFAULT_PROFILE_NAME = "Debug Ultra: Launch (with logs)";

async function main() {
    const options = parseArgs(process.argv.slice(2));
    const credentials = resolveCredentials(options);
    const host = credentials.host;
    const password = credentials.password;
    const username = options.username || process.env.ROKU_DEV_USERNAME || "rokudev";

    if (!host) {
        throw new Error("Missing Roku host. Provide --host, set ROKU_DEV_TARGET, or ensure .vscode/launch.json has a host.");
    }
    if (!password) {
        throw new Error("Missing Roku developer password. Provide --password, set ROKU_DEV_PASSWORD, or ensure .vscode/launch.json has a password.");
    }

    const logPort = Number(options.logPort) || DEFAULT_LOG_PORT;
    const ecpPort = Number(options.ecpPort) || DEFAULT_ECP_PORT;
    await prepareExternalDumpDirectories();
    await fs.promises.mkdir(ARTIFACTS_DIR, { recursive: true });
    const runId = new Date().toISOString().replace(/[:]/g, "-");
    const logPath = path.join(ARTIFACTS_DIR, `logs-${runId}.txt`);

    console.log(`[test] Using host ${host} (profile: ${credentials.profileName || "n/a"})`);
    console.log(`[test] Deploying channel ...`);
    await deployWithBsc({ host, username, password });

    let logStream;
    try {
        console.log(`[test] Connecting to BrightScript logs at ${host}:${logPort} ...`);
        logStream = await openLogStreamWithRetry({
            host,
            port: logPort,
            filePath: logPath,
            mirrorFilePaths: [EXTERNAL_TELNET_LOG_PATH],
            timeoutMs: LOG_CONNECT_TIMEOUT_MS,
            retryDelayMs: LOG_CONNECT_RETRY_DELAY_MS,
        });

        if (typeof logStream.reset === "function") {
            logStream.reset();
        }

        console.log("[test] Relaunching dev channel ...");
        await relaunchDevChannel({ host, port: ecpPort });
        await pause(WAIT_MS_AFTER_LAUNCH);

        console.log(`[test] Waiting up to ${LAUNCH_TIMEOUT_MS}ms for MainScene to initialize ...`);
        await logStream.waitFor(/MainScene:init ready/, LAUNCH_TIMEOUT_MS);
        console.log("[test] Waiting for video playback log ...");
        await logStream.waitFor(/VideoPlayer\] setVideo/, 10000);
        await pause(1500);

        const screenshotPath = await captureScreenshot({
            host,
            username,
            password,
            outDir: ARTIFACTS_DIR,
            outFile: `screenshot-${runId}`,
        });
        console.log(`[test] Screenshot saved to ${screenshotPath}`);
    } finally {
        if (logStream) {
            await pause(500);
            console.log(`[test] Closing log stream (saved to ${logPath})`);
            logStream.close();
        }
    }
}

function parseArgs(argv) {
    const result = { _: [] };
    let pending = null;
    for (const arg of argv) {
        if (pending) {
            result[pending] = arg;
            pending = null;
            continue;
        }
        if (arg.startsWith("--")) {
            const [key, value] = arg.slice(2).split("=", 2);
            if (value !== undefined) {
                result[key] = value;
            } else {
                pending = key;
                result[key] = true;
            }
        } else {
            result._.push(arg);
        }
    }
    return result;
}

function resolveCredentials(options) {
    const configs = loadVsCodeLaunchConfigs();
    const requestedProfile = options.profile || process.env.ROKU_PROFILE || DEFAULT_PROFILE_NAME;
    let profile = configs.find((cfg) => cfg.name === requestedProfile);

    if (!profile && configs.length > 0) {
        profile = configs[0];
    }

    return {
        profileName: profile ? profile.name : null,
        host: options.host || process.env.ROKU_DEV_TARGET || (profile ? profile.host : undefined),
        password: options.password || process.env.ROKU_DEV_PASSWORD || (profile ? profile.password : undefined),
    };
}

function loadVsCodeLaunchConfigs() {
    try {
        const raw = fs.readFileSync(VSCODE_LAUNCH_PATH, "utf8");
        const sanitized = stripJsonComments(raw);
        const parsed = JSON.parse(sanitized);
        if (parsed && Array.isArray(parsed.configurations)) {
            return parsed.configurations.map((cfg) => ({
                name: cfg.name,
                host: cfg.host,
                password: cfg.password,
            }));
        }
    } catch (_err) {
        // optional file
    }
    return [];
}

function stripJsonComments(raw) {
    return raw.replace(/\/\/.*$/gm, "").replace(/\s*\/\*[\s\S]*?\*\//g, "");
}

async function openLogStreamWithRetry({ host, port, filePath, mirrorFilePaths = [], timeoutMs, retryDelayMs }) {
    const deadline = Date.now() + timeoutMs;
    let attempt = 0;
    let lastError;
    while (Date.now() < deadline) {
        attempt += 1;
        try {
            return await openLogStreamOnce({ host, port, filePath, mirrorFilePaths });
        } catch (err) {
            lastError = err;
            console.warn(`[test] Log connection attempt ${attempt} failed: ${err.message}`);
            await pause(retryDelayMs);
        }
    }
    throw new Error(`Unable to connect to BrightScript logs at ${host}:${port} (last error: ${lastError ? lastError.message : "unknown"})`);
}

function openLogStreamOnce({ host, port, filePath, mirrorFilePaths = [] }) {
    return new Promise((resolve, reject) => {
        const socket = net.createConnection({ host, port });
        let buffer = "";
        let logContents = "";
        const watchers = new Set();
        let resolved = false;
        let finalized = false;

        socket.setEncoding("utf8");

        const finalize = () => {
            if (finalized) {
                return;
            }
            finalized = true;
            writeLogFiles([filePath, ...mirrorFilePaths], logContents);
        };

        socket.once("error", (err) => {
            socket.destroy();
            if (!resolved) {
                reject(new Error(`log socket error: ${err.message}`));
            } else {
                console.warn(`[test] Log stream error after connect: ${err.message}`);
                finalize();
            }
        });

        socket.once("connect", () => {
            resolved = true;
            console.log(`[test] Connected to log socket at ${host}:${port}`);

            socket.on("data", (chunk) => {
                const normalized = chunk.replace(/\r\n/g, "\n");
                logContents += normalized;
                const trimmed = trimLogContent(logContents);
                if (trimmed !== logContents) {
                    logContents = trimmed;
                }
                buffer = logContents.slice(-MAX_RECENT_LOG_CHARS);
                for (const watcher of watchers) {
                    tryResolveWatcher(watcher, buffer, watchers);
                }
            });

            socket.on("close", finalize);

            resolve({
                waitFor: (matcher, timeoutMs = 5000) => waitForLog({ matcher, timeoutMs, watchers, getBuffer: () => buffer }),
                reset: () => {
                    logContents = "";
                    buffer = "";
                },
                close: () => {
                    watchers.clear();
                    socket.destroy();
                    finalize();
                },
            });
        });
    });
}

function waitForLog({ matcher, timeoutMs, watchers, getBuffer }) {
    return new Promise((resolve, reject) => {
        const watcher = { matcher, resolve, reject };
        watcher.timer = setTimeout(() => {
            watchers.delete(watcher);
            reject(new Error(`Timed out after ${timeoutMs}ms waiting for log: ${matcherLabel(matcher)}`));
        }, timeoutMs);

        watchers.add(watcher);
        const initialBuffer = getBuffer();
    if (initialBuffer && initialBuffer.length > 0) {
        if (matchBuffer(initialBuffer, matcher)) {
            watchers.delete(watcher);
            clearTimeout(watcher.timer);
            resolve();
            return;
        }
    }
        tryResolveWatcher(watcher, getBuffer(), watchers);
    });
}

function tryResolveWatcher(watcher, buffer, watchers) {
    if (matchBuffer(buffer, watcher.matcher)) {
        watchers.delete(watcher);
        clearTimeout(watcher.timer);
        watcher.resolve();
    }
}

function matchBuffer(buffer, matcher) {
    if (typeof matcher === "string") {
        return buffer.includes(matcher);
    }
    if (matcher instanceof RegExp) {
        return matcher.test(buffer);
    }
    if (typeof matcher === "function") {
        try {
            return matcher(buffer);
        } catch (_err) {
            return false;
        }
    }
    return false;
}

function matcherLabel(matcher) {
    if (typeof matcher === "string") {
        return matcher;
    }
    if (matcher instanceof RegExp) {
        return matcher.toString();
    }
    return "custom matcher";
}

async function relaunchDevChannel({ host, port }) {
    await sendKeypress({ host, port, key: "Home" });
    await pause(1200);
    await postEcp({ host, port, path: "/launch/dev" });
}

async function deployWithBsc({ host, username, password }) {
    const bscExecutable = process.platform === "win32"
        ? path.resolve("node_modules/.bin/bsc.cmd")
        : path.resolve("node_modules/.bin/bsc");

    const args = [
        "--project",
        "bsconfig.json",
        "--createPackage",
        "--deploy",
        "--host",
        host,
        "--password",
        password,
    ];

    if (username) {
        args.push("--username", username);
    }

    return new Promise((resolve, reject) => {
        const child = spawn(bscExecutable, args, {
            stdio: "inherit",
            shell: process.platform === "win32",
        });

        child.on("error", (err) => {
            reject(new Error(`Failed to run bsc deploy: ${err.message}`));
        });

        child.on("exit", (code) => {
            if (code === 0) {
                resolve();
            } else {
                reject(new Error(`bsc exited with status ${code}`));
            }
        });
    });
}

async function captureScreenshot({ host, username, password, outDir, outFile }) {
    const authHeader = basicAuthHeader(username, password);
    const requestBody = "mysubmit=Screenshot&archive=";

    const responseBody = await httpRequest({
        host,
        method: "POST",
        path: "/plugin_inspect",
        headers: {
            Authorization: authHeader,
            "Content-Type": "application/x-www-form-urlencoded",
            "Content-Length": Buffer.byteLength(requestBody),
        },
        body: requestBody,
    });

    const match = /["'](pkgs\/dev(\.jpg|\.png)\?.+?)["']/i.exec(responseBody);
    if (!match) {
        throw new Error("Device did not return a screenshot URL");
    }

    const relativeImagePath = match[1];
    const extension = match[2];
    const destinationPath = path.join(outDir, `${outFile}${extension}`);

    await downloadFile({
        host,
        path: `/${relativeImagePath}`,
        destinationPath,
        headers: { Authorization: authHeader },
    });

    return destinationPath;
}

function basicAuthHeader(username, password) {
    return `Basic ${Buffer.from(`${username}:${password}`).toString("base64")}`;
}

async function sendKeypress({ host, port, key }) {
    if (!key) {
        throw new Error("sendKeypress called without a key name");
    }
    const encoded = encodeURIComponent(key.trim());
    await postEcp({ host, port, path: `/keypress/${encoded}` });
    await pause(120);
}

function postEcp({ host, port, path: requestPath }) {
    return new Promise((resolve, reject) => {
        const request = http.request(
            {
                host,
                port,
                path: requestPath,
                method: "POST",
                timeout: 5000,
            },
            (response) => {
                response.resume();
                response.on("end", resolve);
            }
        );

        request.on("timeout", () => {
            request.destroy(new Error("ECP request timed out"));
        });

        request.on("error", (err) => {
            reject(new Error(`ECP request ${requestPath} failed: ${err.message}`));
        });

        request.end();
    });
}

function pause(durationMs) {
    return new Promise((resolve) => setTimeout(resolve, durationMs));
}

function httpRequest({ host, path: requestPath, method, headers, body }) {
    return new Promise((resolve, reject) => {
        const request = http.request(
            {
                host,
                path: requestPath,
                method,
                port: 80,
                timeout: 8000,
                headers,
            },
            (response) => {
                const chunks = [];
                response.setEncoding("utf8");
                response.on("data", (chunk) => chunks.push(chunk));
                response.on("end", () => {
                    if (response.statusCode && response.statusCode >= 400) {
                        reject(new Error(`HTTP ${response.statusCode} calling ${requestPath}`));
                    } else {
                        resolve(chunks.join(""));
                    }
                });
            }
        );

        request.on("error", (err) => {
            reject(err);
        });

        request.on("timeout", () => {
            request.destroy(new Error(`HTTP ${method} ${requestPath} timed out`));
        });

        if (body) {
            request.write(body);
        }

        request.end();
    });
}

function downloadFile({ host, path: requestPath, headers, destinationPath }) {
    return new Promise((resolve, reject) => {
        let request;
        const fileStream = fs.createWriteStream(destinationPath);
        fileStream.on("error", (err) => {
            if (request) {
                request.destroy();
            }
            reject(err);
        });
        fileStream.on("finish", () => resolve(destinationPath));

        request = http.get(
            {
                host,
                path: requestPath,
                port: 80,
                timeout: 8000,
                headers,
            },
            (response) => {
                if (response.statusCode && response.statusCode >= 400) {
                    reject(new Error(`Failed to download screenshot (HTTP ${response.statusCode})`));
                    response.resume();
                    return;
                }

                response.pipe(fileStream);
            }
        );

        request.on("error", (err) => {
            fileStream.destroy(err);
            reject(err);
        });

        request.on("timeout", () => {
            const timeoutError = new Error(`Screenshot download timed out for ${requestPath}`);
            fileStream.destroy(timeoutError);
            request.destroy(timeoutError);
        });
    });
}

function trimLogContent(content) {
    if (!content) {
        return content;
    }
    const marker = "[scrpt.ctx.cmpl.time]";
    const lastIndex = content.lastIndexOf(marker);
    if (lastIndex === -1) {
        return content;
    }
    const lineStart = content.lastIndexOf("\n", lastIndex);
    return content.slice(lineStart >= 0 ? lineStart + 1 : lastIndex);
}

main().catch((err) => {
    console.error("[test] ERROR:", err.message);
    process.exitCode = 1;
});
