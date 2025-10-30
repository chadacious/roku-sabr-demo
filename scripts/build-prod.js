#!/usr/bin/env node

const fs = require("fs");
const path = require("path");

const SRC_DIR = path.resolve("src");
const BUILD_DIR = path.resolve("build", "prod");

function copyRecursive(from, to) {
    const stats = fs.statSync(from);
    if (stats.isDirectory()) {
        fs.mkdirSync(to, { recursive: true });
        for (const entry of fs.readdirSync(from)) {
            copyRecursive(path.join(from, entry), path.join(to, entry));
        }
    } else {
        fs.copyFileSync(from, to);
    }
}

function rewriteSabrDebug(targetRoot) {
    const debugPath = path.join(targetRoot, "source", "SabrDebug.bs");
    if (!fs.existsSync(debugPath)) return;
    let contents = fs.readFileSync(debugPath, "utf8");
    contents = contents.replace(/const\s+SABR_DEBUG_ENABLED\s*=\s*true/gi, "const SABR_DEBUG_ENABLED = false");
    fs.writeFileSync(debugPath, contents, "utf8");
}

function disableDebugUploadUrl(targetRoot) {
    const xmlPath = path.join(
        targetRoot,
        "components",
        "tasks",
        "ytsabrServerTask",
        "ytsabrServerTask.xml"
    );
    if (!fs.existsSync(xmlPath)) return;
    let contents = fs.readFileSync(xmlPath, "utf8");
    const updated = contents.replace(
        /(<field\s+id="debugUploadUrl"\s+type="string"\s+value=")[^"]*(")/i,
        `$1$2`
    );
    if (updated !== contents) {
        fs.writeFileSync(xmlPath, updated, "utf8");
    }
}

function pruneDemoAssets(targetRoot) {
    const entries = [
        path.join(targetRoot, "components", "MainScene.xml"),
        path.join(targetRoot, "components", "MainScene.bs"),
        path.join(targetRoot, "components", "VideoPlayer.xml"),
        path.join(targetRoot, "components", "VideoPlayer.bs"),
        path.join(targetRoot, "assets", "mpds")
    ];
    for (const entry of entries) {
        if (fs.existsSync(entry)) {
            try {
                fs.rmSync(entry, { recursive: true, force: true });
            } catch (err) {
                console.warn(`[build:prod] Warning: failed to remove ${entry}: ${err.message}`);
            }
        }
    }
}

function main() {
    if (!fs.existsSync(SRC_DIR)) {
        console.error("src directory not found");
        process.exit(1);
    }

    if (fs.existsSync(BUILD_DIR)) {
        fs.rmSync(BUILD_DIR, { recursive: true });
    }

    copyRecursive(SRC_DIR, BUILD_DIR);
    rewriteSabrDebug(BUILD_DIR);
    disableDebugUploadUrl(BUILD_DIR);
    pruneDemoAssets(BUILD_DIR);

    console.log(`Production-ready sources copied to ${BUILD_DIR}`);
    console.log(`SABR_DEBUG_ENABLED set to false in build output.`);
}

main();
