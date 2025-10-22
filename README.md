> **Warning:** This project is experimental and not entirely working yet.
# Roku SABR Demo

BrighterScript Roku SceneGraph application that demonstrates how to adapt YouTube SABR (Streaming Adaptive Bitrate) manifests on-device. The app spins up lightweight HTTP servers on the Roku device so that intercepted manifests and SABR segment requests can be rewritten, cached, and served directly to the built-in `Video` node.

## Highlights
- Builds with the BrighterScript CLI (`bsc`) using the configuration in `bsconfig.json`.
- Main scene bootstraps a branded splash screen and loads a DASH manifest stored under `src/assets/mpds/`.
- A local manifest proxy (`httpServerTask`) rehosts the manifest at `http://0.0.0.0:7010/manifest/<id>` for the player.
- Dedicated SABR servers (`ytsabrServerTask`) run on ports 7011 (video) and 7012 (audio) to process adaptive segment requests, decode SABR/UMP payloads, and cache data under the Roku `tmp:/` filesystem.
- End-to-end smoke test (`scripts/e2e-smoke.js`) can deploy to a developer-enabled Roku, follow the logs, and capture screenshots.

## Prerequisites
- Node.js 18+ (for tooling and the smoke test script).
- Roku device in developer mode with network access and credentials.
- `bsc` is installed automatically via `npm install` (it lives in `node_modules/.bin`).
- Optional: `bun` if you prefer `bun install` (a `bun.lock` file is present).

## Getting Started
```bash
npm install
```

### Build and packaging
- `npm run build` – Compile the app into `dist/` without zipping.
- `npm run package` – Compile and create a side-loadable package zip in `dist/`.
- `npm run watch` – Run the compiler in watch mode for local development.

### Deploy to a Roku device
Provide your Roku credentials via environment variables:
```bash
export ROKU_DEV_TARGET="192.168.1.42"
export ROKU_DEV_PASSWORD="your_dev_password"
export ROKU_DEV_USERNAME="rokudev"   # optional; defaults to rokudev
npm run deploy
```
`npm run deploy` builds, zips, and side-loads the channel using `bsc --deploy`.

### Run the smoke test
The smoke test automates side-loading, waits for key log lines, and captures a screenshot in `artifacts/`.
```bash
npm run test:e2e -- --host 192.168.1.42 --password your_dev_password
```
Optional flags:
- `--profile` – Name of a VS Code launch profile (reads from `.vscode/launch.json`).
- `--username`, `--logPort`, `--ecpPort` – Override defaults (8085 and 8060 respectively).

## Project Layout
```
src/
  manifest                # Channel metadata shipped in the package
  assets/                 # Images, sample DASH/HLS manifests
  components/
    MainScene.xml/.bs     # Root scene wiring and SABR bootstrap logic
    VideoPlayer.xml/.bs   # Wrapper around the Roku Video node
    tasks/                # Background tasks (HTTP server, SABR servers, utilities)
  source/
    main.bs               # Entry point that shows MainScene
    logger.bs             # Structured logging helper
    utils.bs              # Base64, hashing, and file helpers
    http*.bs              # Minimal HTTP server + request parsing
    Sabr*.bs              # SABR adapters, cache, metadata managers, UMP processor
    ytproto/generated/    # Generated protobuf bindings for SABR messages
scripts/
  e2e-smoke.js            # Device automation and screenshot capture
artifacts/                # Log and screenshot outputs from automation
```

## How SABR Playback Works Here
1. `MainScene` loads a DASH manifest (`yt-sabr-dash.mpd`) and inspects any `<SupplementalProperty schemeIdUri="...urn:youtube:sabr">` tags.
2. A SABR payload embedded in the manifest is decoded and cached under `tmp:/<mediaIdHash>/`.
3. Manifest references to `sabr://` URLs are rewritten to local HTTP endpoints (`http://0.0.0.0:7011/` for video, `7012/` for audio).
4. `VideoPlayer` sets `Video.content` to the local manifest proxy (`http://0.0.0.0:7010/manifest/<base64 path>`), so the Roku player fetches segments through the local servers.
5. `ytsabrServerTask` uses `SabrStreamingAdapter` + protobuf bindings to interpret SABR/UMP responses, store segment metadata via `SabrCacheManager`, and feed playable data back to the Roku video stack.

## Customizing the Demo
- Swap in your own manifests under `src/assets/mpds/` and adjust `MainScene.bs` to load the file you want.
- Update branding assets (splash, icons) in `src/assets/images/` and refresh `src/manifest` entries if sizes change.
- Extend `VideoPlayer.bs` to add controls, overlays, or analytics hooks.
- Additional diagnostics can be added by expanding `logger.bs` or toggling log levels in individual tasks.

## Troubleshooting
- Check `artifacts/logs-*.txt` for deployment/test run logs.
- Ensure ports 7010–7012 are free; the local HTTP servers bind to those ports on the device.
- If side-load fails, confirm your device credentials and that Developer Mode is enabled (Settings → System → Advanced system settings → Developer options).
- Re-run `npm run build` if you edit generated protobuf files to ensure `dist/` stays in sync.

## License
ISC © Roku SABR Demo authors
