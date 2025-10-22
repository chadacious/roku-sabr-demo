#!/usr/bin/env node

/**
 * VS Code pre-launch helper.
 *
 * Clears the external Roku dump directories so the subsequent debug session
 * starts with a clean slate and recreates the telnet log path.
 */

const { prepareExternalDumpDirectories, EXTERNAL_TELNET_LOG_PATH } = require("./external-dumps");

async function main() {
    console.log("[debug-prep] Clearing Roku dump directories ...");
    await prepareExternalDumpDirectories();
    console.log(`[debug-prep] Telnet log will be written to ${EXTERNAL_TELNET_LOG_PATH}`);
}

main().catch((err) => {
    console.error("[debug-prep] ERROR:", err.message);
    process.exitCode = 1;
});
