> **Warning:** This project is experimental and not entirely working yet.
# Roku SABR Demo

BrighterScript Roku SceneGraph application that demonstrates how to adapt YouTube SABR (Streaming Adaptive Bitrate) manifests on-device. The app spins up lightweight HTTP servers on the Roku device so that intercepted manifests and SABR segment requests can be rewritten, cached, and served directly to the built-in `Video` node.

## Highlights
- Builds with the BrighterScript CLI (`bsc`) using the configuration in `bsconfig.json`.
- Main scene bootstraps a branded splash screen and loads a DASH manifest stored under `src/assets/mpds/`.
- A local manifest proxy (`httpServerTask`) rehosts the manifest at `http://0.0.0.0:7010/manifest/<id>` for the player.
- Dedicated SABR servers (`ytsabrServerTask`) run on ports 7011 (video) and 7012 (audio) to process adaptive segment requests, decode SABR/UMP payloads, and stream the requested ranges directly from the SABR spool files in `tmp:/`.
- Streaming taps watch the Roku download temp (`*.tmp`) files in-place, copy the completed bytes to a stable `*-res` path before cancelling the transfer, and immediately serve the requested range without waiting for the full SABR response to finish.
- End-to-end smoke test (`scripts/e2e-smoke.js`) can deploy to a developer-enabled Roku, follow the logs, and capture screenshots.

## Prerequisites
- Node.js 18+ (for tooling and the smoke test script).
- Roku device in developer mode with network access and credentials.
- `bsc` is installed automatically via `npm install` (it lives in `node_modules/.bin`).
- A working YouTube sabr style manifest (see https://github.com/LuanRT/googlevideo)
- Optional: `bun` if you prefer `bun install` (a `bun.lock` file is present).

## Getting Started
```bash
npm install
```

### Build and packaging
- `npm run build` – Compile the app into `dist/` without zipping.
- `npm run build:prod` – Run the optimizer script that strips debug-only code, disables debug uploads, drops demo-only assets (MainScene/VideoPlayer/sample MPDs), and copies the reusable sources to `build/prod/`.
- `npx bsc --project bsconfig.prod.json` – Compile and package the production bundle in `dist/prod/` (requires running `npm run build:prod` first).
- `npm run build:core` – Copy only the reusable SABR runtime sources into `build/core/` with debug utilities stubbed out (see _Reusing the SABR core_ below).
- `npm run package` – Compile and create a side-loadable package zip in `dist/`.
- `npm run watch` – Run the compiler in watch mode for local development.
- `bsc --project bsconfig.prod.json` – Compile/deploy against the production-pruned sources under `build/prod/` (run `npm run build:prod` first).

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
- `--bundle prod` (or `--prod`) – Exercise the production bundle. The smoke test runs `npm run build:prod` and deploys using `bsconfig.prod.json`.

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
5. `ytsabrServerTask` uses `SabrStreamingAdapter` + protobuf bindings to interpret SABR/UMP responses, build in-memory spool maps (including SIDX data from init segments), and stream the requested byte ranges straight from the SABR spool file back to the Roku video stack without staging per-segment files.

## Player Time Strategy

`SabrStreamingAdapter` now relies exclusively on the SIDX metadata embedded in SABR init segments to resolve `playerTimeMs`. Each init response is parsed (`SabrUmpProcessor`) and the resulting entries are cached per format. When the Roku player requests a byte range, the adapter locates the SIDX entry that contains (or most closely precedes) the start byte and maps it to a playback timestamp.

If the same byte range keeps arriving, the repeat guard nudges the computed value forward by a small, duration-aware bump so SABR can advance to the next segment. The resolved time, source label, and any nudge amount are persisted to `playbackContext` (`lastResolvedPlayerTimeMs`, `lastResolvedPlayerTimeSource`) for diagnostics.

## Spool Streaming & Cleanup
 UMP responses are written to a single spool file under `tmp:/sabr/<mediaIdHash>/…`. `SabrStreamingAdapter` now has two complementary paths:
   - A **stream tap** tails the active temp file, and as soon as the target `MEDIA_END` part lands it copies the temp (`*.tmp`) file to its `*-res` sibling before cancelling the transfer. The HTTP layer immediately serves the requested range from that copied file so we do not need to await the rest of the SABR response.
   - A **full scan** runs afterwards (or on cache misses) to build the aggregated part map (payload offsets, SIDX data, control directives) so subsequent requests can read ranges straight from disk without redownloading.

Because segments are no longer materialized into `tmp:/sabr-cache`, the legacy cache maintenance routines are effectively no-ops. When a playback session finishes you can remove the entire `tmp:/<mediaIdHash>/` directory to reclaim space, or keep it around for debugging with the spool summary logs (`[YTSABR] UMP spool preview …`).

## Instrumentation & Debugging

### Forcing Higher Bitrates
- Set `SABR_BANDWIDTH_OVERRIDE_BPS` in `src/source/SabrStreamingAdapter.bs` to a concrete value (in bits per second) to force all SABR requests to advertise that bandwidth. Example: `25_000_000` (~25 Mbps) to target high-profile 1080p streams.
- Alternatively, leave the override at `0` and set `SABR_BANDWIDTH_MULTIPLIER` (e.g., `1.5` or `2.0`) to scale the measured bandwidth upward while keeping adaptive behaviour.
- Both settings are safe to leave at their defaults (`0` override, multiplier `1.0`) for normal operation.
- Internally the adapter falls back to the current format bitrate (or 2 Mbps minimum) before applying the overrides so the SABR server always receives a non-zero estimate.

- `SabrDebug.bs` provides `sabr_log` helpers that honor the global debug flag. Toggle `SABR_DEBUG_ENABLED` when preparing production builds.
- HTTP dumps (request/response bodies, metadata) are uploaded through the debug upload URL when configured; file-backed responses stream via `bodyPath` to keep memory usage low.
- The repeat-guard instrumentation logs state transitions (`RepeatState …`) so you can see when the player is requesting the same range repeatedly.
- Spool summaries emitted by `SabrUmpProcessor` log part counts, durations, and byte totals for each decoded UMP response.

## Customizing the Demo
- Swap in your own manifests under `src/assets/mpds/` and adjust `MainScene.bs` to load the file you want.
- Update branding assets (splash, icons) in `src/assets/images/` and refresh `src/manifest` entries if sizes change.
- Extend `VideoPlayer.bs` to add controls, overlays, or analytics hooks.
- Additional diagnostics can be added by expanding `logger.bs` or toggling log levels in individual tasks.

## Reusing the SABR core
The app ships with a stripped-down “core” bundle that contains just the runtime pieces needed to integrate SABR processing into another project.

1. Run `npm run build:core`. This populates `build/core/source/` with the SABR adapters, cache, MP4 parser, protobuf bindings, and a no-op `SabrDebug.bs`.
2. Copy everything under `build/core/source/` into the target project (for example under `source/` or `vendor/sabr/`).
3. Add the copied files to the consuming project’s `bsconfig.json` so BrighterScript can compile them.
4. To sanity-check the generated bundle in this repo, run `bsc --project bsconfig.core.json` (after `npm run build:core`). The config targets `build/core/source/` exclusively, so any syntax or typing problems in the exported files surface before you ship them.

Because the generated stub disables all debug uploads and verbose logging by default, the core bundle is safe to ship in production channels. If you need diagnostics in the host app, replace the stub `SabrDebug.bs` with your own implementation before compiling.

## Troubleshooting
- Check `artifacts/logs-*.txt` for deployment/test run logs.
- Ensure ports 7010–7012 are free; the local HTTP servers bind to those ports on the device.
- If side-load fails, confirm your device credentials and that Developer Mode is enabled (Settings → System → Advanced system settings → Developer options).
- Re-run `npm run build` if you edit generated protobuf files to ensure `dist/` stays in sync.

## License
ISC © Roku SABR Demo authors
