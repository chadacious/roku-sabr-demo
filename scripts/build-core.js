#!/usr/bin/env node
const fs = require('fs');
const path = require('path');

const ROOT = path.resolve(__dirname, '..');
const SRC_DIR = path.join(ROOT, 'src', 'source');
const DEST_ROOT = path.join(ROOT, 'build', 'core');
const DEST_SRC_DIR = path.join(DEST_ROOT, 'source');

const FILES = [
  'SabrStreamingAdapter.bs',
  'SabrUmpProcessor.bs',
  'SabrMp4Parser.bs',
  'SabrRequestMetadataManager.bs',
  'SabrUtils.bs',
  'httpRequest.bs',
  'taskUtils.bs',
  'utils.bs',
  'http.bs',
  'isItem.bs',
  'logger.bs'
];

const DIRECTORIES = [
  'ytproto'
];

function ensureDir(dirPath) {
  fs.mkdirSync(dirPath, { recursive: true });
}

function copyFileRelative(relPath) {
  const srcPath = path.join(SRC_DIR, relPath);
  const destPath = path.join(DEST_SRC_DIR, relPath);
  if (!fs.existsSync(srcPath)) {
    throw new Error(`Source file not found: ${srcPath}`);
  }
  ensureDir(path.dirname(destPath));
  fs.copyFileSync(srcPath, destPath);
}

function copyDirectoryRelative(relPath) {
  const srcPath = path.join(SRC_DIR, relPath);
  const destPath = path.join(DEST_SRC_DIR, relPath);
  if (!fs.existsSync(srcPath)) {
    throw new Error(`Source directory not found: ${srcPath}`);
  }
  ensureDir(destPath);
  for (const entry of fs.readdirSync(srcPath)) {
    const srcEntry = path.join(srcPath, entry);
    const destEntry = path.join(destPath, entry);
    const stats = fs.statSync(srcEntry);
    if (stats.isDirectory()) {
      copyDirectoryRelative(path.join(relPath, entry));
    } else {
      fs.copyFileSync(srcEntry, destEntry);
    }
  }
}

function writeNoopSabrDebug() {
  const destPath = path.join(DEST_SRC_DIR, 'SabrDebug.bs');
  ensureDir(path.dirname(destPath));
  const stub = `const SABR_DEBUG_ENABLED = false

sub sabr_log(logs as dynamic, level as integer, message as string, debugOnly = true as boolean)
    if debugOnly = false and IsAssociativeArray(logs) and logs.DoesExist("printl")
        logs.printl(level, message)
    end if
end sub

sub sabr_debugUploadText(debugUploadUrl as string, relativePath as string, text as string, logs = invalid as dynamic)
end sub

sub sabr_debugUploadBytes(debugUploadUrl as string, relativePath as string, bytes as dynamic, logs = invalid as dynamic)
end sub

sub sabr_debugUploadContent(debugUploadUrl as string, relativePath as string, content as dynamic, isText as boolean, logs = invalid as dynamic)
end sub

function sabr_debugSanitizeFilename(value as string) as string
    return ""
end function

function sabr_debugUrlEncode(value as string) as string
    return value
end function

function sabr_debugNextDumpSequence() as integer
    return 0
end function

function sabr_debugZeroPadDigits(value as dynamic, width as integer) as string
    return Str(value)
end function

function sabr_debugBuildDumpLabel(playbackContext as object, prefix as string, requestNumber as string, rangeLabel as string, contentType = "" as string, format = invalid as dynamic, dumpCounter = invalid as dynamic) as string
    return prefix
end function
`;
  fs.writeFileSync(destPath, stub, 'utf8');
}

function writeReadme() {
  const readmePath = path.join(DEST_ROOT, 'README.md');
  const content = `# Roku SABR Core\n\nThis folder contains a trimmed copy of the SABR processing pipeline that omits diagnostics and test harness code.\n\n## Contents\n- source/SabrStreamingAdapter.bs\n- source/SabrUmpProcessor.bs\n- source/SabrRequestMetadataManager.bs\n- source/SabrMp4Parser.bs\n- source/SabrUtils.bs\n- source/httpRequest.bs (minimal HTTP helper)\n- source/utils.bs, source/taskUtils.bs, source/logger.bs (support shims)\n- source/SabrDebug.bs (no-op debug implementation)\n- source/ytproto/... protobuf message bindings\n\n## Usage\nCopy the \`source\` directory into your BrightScript project and include the files in \`bsconfig.json\`.\n\n## Notes\n- All logging and debug upload helpers are no-ops in this bundle.\n- You are expected to provide your own HTTP server/task integration around \`SabrStreamingAdapter\`.\n`;
  fs.writeFileSync(readmePath, content, 'utf8');
}

function main() {
  if (!fs.existsSync(SRC_DIR)) {
    throw new Error('src/source directory not found');
  }
  if (fs.existsSync(DEST_ROOT)) {
    fs.rmSync(DEST_ROOT, { recursive: true });
  }
  ensureDir(DEST_SRC_DIR);
  for (const file of FILES) {
    copyFileRelative(file);
  }
  for (const dir of DIRECTORIES) {
    copyDirectoryRelative(dir);
  }
  writeNoopSabrDebug();
  writeReadme();
  console.log(`Core bundle written to ${DEST_ROOT}`);
}

main();
