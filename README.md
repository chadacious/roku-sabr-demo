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
- A working YouTube sabr style manifest (see https://github.com/LuanRT/googlevideo)
- Optional: `bun` if you prefer `bun install` (a `bun.lock` file is present).

## Getting Started
```bash
npm install
```

### Build and packaging
- `npm run build` – Compile the app into `dist/` without zipping.
- `npm run build:prod` – Run the optimizer script that strips debug-only code and produces a lean production bundle.
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
5. `ytsabrServerTask` uses `SabrStreamingAdapter` + protobuf bindings to interpret SABR/UMP responses, stream media chunks directly to disk, store segment metadata via `SabrSimpleCache`, and feed playable data back to the Roku video stack without large in-memory buffers.

## Player Time Strategies

`SabrStreamingAdapter` supports multiple ways to translate a Roku byte-range request into the `playerTimeMs` value SABR expects. The active strategy is controlled by `playbackContext.playerTimeStrategy` (or the `m.top.playerTimeStrategy` override) and can be one of the following:

| Strategy | Description |
| --- | --- |
| `sidx` | Parse the MP4 SIDX index (captured from SABR init segments) and translate the requested byte range to its start time/duration. Uses the raw SABR index; falls back to lower entry if the exact start isn’t found. |
| `metadata` | Predict from segment metadata accumulated as SABR responses arrive (coverage start/end, start time, duration). Also seeds the metadata map from SIDX entries when no coverage exists yet. |
| `hybrid` *(default)* | Try the SIDX path first; if unavailable, fall back to metadata; finally use historical counters (delivered duration, last requested time, etc.) as a safety net. |

The strategy engine logs each decision in the telnet console (e.g., `Strategy hybrid sidxIndex=...`, `Resolved playerTimeMs=... source=...`) which makes it easier to audit how requests were computed.

### Switching Strategies

At runtime you can inject the desired mode before issuing segment requests:

```brightscript
' inside SabrStreamingAdapter or a setup routine
m.top.playerTimeStrategy = "metadata" ' or "sidx", "hybrid"
```

For automated testing, the constant `DEFAULT_PLAYER_TIME_STRATEGY` (in `src/source/SabrStreamingAdapter.bs`) initializes the strategy when nothing else is specified.

### Prediction Paths

#### SIDX Lookups
1. UMP init segments are parsed (`SabrUmpProcessor`) and SIDX entries stored per format.
2. Each entry captures byte start/end, segment duration, and timeline timing in milliseconds.
3. When a request arrives, the adapter finds the SIDX entry whose range matches (or precedes) the requested start and returns `startMs + offset`.

#### Metadata Predictions
1. Every successful SABR response carries coverage/start-time metadata which is cached per format/range.
2. Future requests use the exact range when available, or interpolate from the closest prior segment.
3. If no coverage exists yet, the SIDX entries are used to seed the metadata map so the prediction can still succeed.

Both strategies ultimately write the resolved values back to `playbackContext` (`lastResolvedPlayerTimeMs` / `…Source`) for diagnostics and future fallbacks.

## Cache Management & Culling
Segment data is delivered into `tmp:/sabr-cache/<mediaIdHash>/…`. The cache is aggressively self-managed:

- Every delivery marks the segment metadata (`delivered=true`, timestamps, seek guards). Once the guard window expires, a background maintenance pass removes the file.
- Maintenance runs automatically at the start of each SABR request and after deliveries. It enforces a rolling **10 MB** quota (`SABR_CACHE_TOTAL_SIZE_LIMIT`) and evicts the oldest files when the total directory size exceeds the limit.
- Delivered segments within the last ~1.5 s, or those that fall inside an active seek guard (e.g., after a rewind), are temporarily preserved to avoid thrash.
- Metadata snapshots are logged (see `[SabrCache] state phase=… total=…`) so you can audit how many pending/delivered entries remain across maintenance runs.

If playback stops and no further SABR requests arrive, the cached set remains untouched until the next request triggers maintenance. For automated cleanup you can issue a manual `sabr_cacheRunMaintenance("")` or rely on the next playback session to trim the directory.

## Instrumentation & Debugging

### Forcing Higher Bitrates
- Set `SABR_BANDWIDTH_OVERRIDE_BPS` in `src/source/SabrStreamingAdapter.bs` to a concrete value (in bits per second) to force all SABR requests to advertise that bandwidth. Example: `25_000_000` (~25 Mbps) to target high-profile 1080p streams.
- Alternatively, leave the override at `0` and set `SABR_BANDWIDTH_MULTIPLIER` (e.g., `1.5` or `2.0`) to scale the measured bandwidth upward while keeping adaptive behaviour.
- Both settings are safe to leave at their defaults (`0` override, multiplier `1.0`) for normal operation.
- Internally the adapter falls back to the current format bitrate (or 2 Mbps minimum) before applying the overrides so the SABR server always receives a non-zero estimate.

- `SabrDebug.bs` provides `sabr_log` helpers that honor the global debug flag. Toggle `SABR_DEBUG_ENABLED` when preparing production builds.
- HTTP dumps (request/response bodies, metadata) are uploaded through the debug upload URL when configured; file-backed responses stream via `bodyPath` to keep memory usage low.
- The repeat-guard instrumentation logs state transitions (`RepeatState …`) so you can see when the player is requesting the same range repeatedly.
- Performance timers in `SabrUmpProcessor` (`SABR_PERF_LOGGING_ENABLED`) emit duration/memory snapshots for each major step of UMP processing.

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
