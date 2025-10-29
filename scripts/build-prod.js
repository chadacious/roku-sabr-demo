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

    console.log(`Production-ready sources copied to ${BUILD_DIR}`);
    console.log(`SABR_DEBUG_ENABLED set to false in build output.`);
}

main();
