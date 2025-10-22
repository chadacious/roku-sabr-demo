const fs = require("fs");
const path = require("path");

const EXTERNAL_DUMP_ROOT = "/Users/chad/Projects/Temp/roku-dumps/tmp/roku-dumps";
const EXTERNAL_DUMP_DIRECTORIES = [
    EXTERNAL_DUMP_ROOT,
    path.join(EXTERNAL_DUMP_ROOT, "roku-player"),
];
const EXTERNAL_TELNET_LOG_PATH = path.join(EXTERNAL_DUMP_ROOT, "telnet.log");

async function prepareExternalDumpDirectories() {
    for (const directory of EXTERNAL_DUMP_DIRECTORIES) {
        await resetDirectory(directory);
    }
}

async function resetDirectory(targetPath) {
    try {
        await fs.promises.rm(targetPath, { recursive: true, force: true });
    } catch (err) {
        console.warn(`[test] Failed to clear ${targetPath}: ${err.message}`);
    }
    await fs.promises.mkdir(targetPath, { recursive: true });
}

function writeLogFiles(targetPaths, contents) {
    if (!Array.isArray(targetPaths)) {
        return;
    }
    for (const target of targetPaths) {
        if (!target) {
            continue;
        }
        try {
            fs.mkdirSync(path.dirname(target), { recursive: true });
            fs.writeFileSync(target, contents);
        } catch (err) {
            console.warn(`[test] Failed to write log file ${target}: ${err.message}`);
        }
    }
}

module.exports = {
    EXTERNAL_DUMP_ROOT,
    EXTERNAL_DUMP_DIRECTORIES,
    EXTERNAL_TELNET_LOG_PATH,
    prepareExternalDumpDirectories,
    resetDirectory,
    writeLogFiles,
};
