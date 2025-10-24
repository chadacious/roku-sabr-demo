# SABR Task Parallelization Plan

## Goals
- Remove long-running network, decode, and filesystem work from `ytsabrServerTask` so the task thread can stay responsive.
- Capture request-stage durations to guide the incremental refactor.
- Provide clear message contracts for dedicated worker tasks that can be implemented as Roku `Task` nodes.

## Proposed Task Nodes
- `sabrFetchWorkerTask`: owns proto encode, proxied SABR request, and UMP decode.
- `sabrCacheWriterTask`: flushes delivered segments to disk, runs cache maintenance, and updates in-memory indices.
- `sabrIndexTask` (optional/phase 2): builds and maintains buffered-range indices fed from cache-writer events.

## Message Contracts

### Dispatch from `ytsabrServerTask` → `sabrFetchWorkerTask`
- `type`: `"FETCH_REQUEST"`.
- `requestId`: integer from `utilsTask.getNextId("sabrRequestNumber")`.
- `contentType`: `"VIDEO"` or `"AUDIO"`.
- `mediaIdHash`: string.
- `protoPayloadPath`: `tmp:/` path where the encoded proto was persisted.
- `playbackContext`: trimmed associative array with only the fields the worker needs to make decisions (format info, byte range, debug flags).
- `cacheLookup`: `{ "cacheKey": string, "byteRange": assoc array }` so the worker can feed cache hints back.
- `debugUploadUrl`: optional string.

### Response from `sabrFetchWorkerTask` → `ytsabrServerTask`
- `type`: `"FETCH_RESULT"`.
- `requestId`: integer, mirrors the request.
- `status`: integer HTTP status code from SABR.
- `responsePath`: path to the decoded payload saved to `tmp:/`.
- `segmentInfo`: associative array produced by `sabr_umpProcessor.getSegmentInfo()`.
- `segmentScanSummary`: associative array from `getSegmentScanSummary()` (optional).
- `error`: optional descriptive string; presence indicates failure and the payload path may be invalid.
- `metrics`: `{ "protoEncodeMs": int, "proxyRoundTripMs": int, "umpProcessMs": int }` for telemetry.

### Dispatch from `ytsabrServerTask` → `sabrCacheWriterTask`
- `type`: `"STORE_REQUEST"`.
- `requestId`: integer.
- `mediaIdHash`: string.
- `contentType`: string.
- `segmentPayloadPath`: temp file with response bytes.
- `storeOptions`: existing associative array passed to `sabr_cacheStoreSegment`.
- `playbackContextSnapshotPath`: optional path if the writer should persist the latest context.
- `debugUploadUrl`: optional string for dumps.

### Response from `sabrCacheWriterTask`
- `type`: `"STORE_RESULT"`.
- `requestId`: integer.
- `storedPath`: cache path that now holds the segment (invalid if skipped).
- `cacheBytesWritten`: integer total bytes written.
- `maintenanceSummary`: `{ "removed": int, "remainingBytes": int, "durationMs": int }`.
- `error`: optional descriptive string.

## Integration Notes
- Each worker task should own an `roMessagePort` and expose a `queue` field (array) that the server task appends to; the worker drains the queue inside its run loop.
- Responses should be posted back via `m.top.response` (observed by `ytsabrServerTask`) or a shared message port to avoid tight coupling.
- The new instrumentation that landed in `SabrStreamingAdapter.bs` will help validate improvements once the worker hand-off is wired.
- Start with synchronous fallbacks so that if a worker task fails to start the server task can execute the legacy in-thread path for robustness.

## Current Synchronous Flow (Snapshot)
1. `handle_tcp` reads the HTTP body, then `process_request` calls `sabr_handleRequest`.
2. Request metadata is populated, cache checked, and if miss:
   - Proto payload encoded (`VideoPlaybackAbrRequestEncode`).
   - `makeRequest` performs a blocking proxy call.
   - UMP payload decoded (`sabr_umpProcessor.processChunk`) until the desired media part is found; the same loop also infers redirects, policies, and diagnostic metadata.
   - Segment stored via `sabr_cacheStoreSegment`, maintenance runs inline.
   - Playback context persisted before returning the HTTP reply.
3. Any additional instructions in the UMP (prefetch hints, stream info updates, fatal errors) are applied on the same thread before the response is written to the socket.

This means the roStreamSocket stays blocked on every stage—including the multi-second UMP processing window—before the player receives its bytes.

## Target Architecture Overview
- Keep `ytsabrServerTask` focussed on socket I/O, basic cache lookups, and coordinating state machines.
- Offload heavy work to child tasks:
  - `sabrFetchWorkerTask` handles proto encode → proxy call → incremental UMP parsing.
  - `sabrCacheWriterTask` persists data to disk, updates metadata/context, and triggers cache maintenance.
- Introduce an in-memory request registry so the server can immediately respond when the target segment is ready while the fetch worker continues scanning the UMP for secondary actions.
- Shared data structures live in the server task; workers only mutate state via explicit messages to avoid race conditions.

## Request Lifecycle (Async)
1. **Receive**: server validates headers, builds cache key, and checks `sabr_cacheLoadSegment`.
2. **In-flight coordination**:
   - If cache miss but a fetch is already running for the same cache key, the server registers the current socket as a waiter and returns to the message loop.
   - Otherwise it creates a `RequestState` entry: `{ status: "fetching", waiters: [connection], cacheKey, byteRange, ... }`.
3. **Dispatch fetch**:
   - Server serializes minimal request payload (proto JSON, playback context fragment, etc.), writes it to `tmp:/`, and enqueues a `FETCH_REQUEST`.
   - RequestState keeps a deadline; if a worker fails to respond within configurable timeout, the server can fall back to the synchronous path.
4. **Fetch worker executes in phases**:
   - Option A: encode proto inside worker (keeps server light). Option B: have server send base64 (if encode remains local for now).
   - Performs `makeRequest` and streams UMP data. As soon as the desired media part is assembled, the worker emits a `"SEGMENT_READY"` interim message containing the ByteArray (or file path) and coverage metadata. Further UMP parts (context updates, policies) continue processing; the worker sends additional `"SEGMENT_APPEND"` or `"POST_PROCESS"` messages as needed.
5. **Respond to player**:
   - Upon `"SEGMENT_READY"`, the server retrieves the pending waiters, writes the HTTP response, and marks the RequestState as `delivered`.
   - The same event triggers a `STORE_REQUEST` so persistence happens after the socket flush.
6. **Post-processing**:
   - Worker continues scanning remaining UMP parts. Once done it emits `"FETCH_RESULT"` summarising segment info, redirect instructions, and any queued metadata updates. The server updates playback context and schedules follow-up actions (prefetch, fatal errors).
7. **Cleanup**:
   - Cache writer completes persistence; when it returns `"STORE_RESULT"` the server merges maintenance stats and clears the RequestState. For waiters that arrived after the primary response, the cache hit path now succeeds.

## Response Integrity Guarantees
- **Single writer per connection**: RequestState stores the socket object; only the server task writes to it, ensuring we do not respond before the segment arrives.
- **Segment-first rule**: workers are required to emit `"SEGMENT_READY"` only after the requested range is complete. All subsequent instructions are optional for the initial response.
- **Post-response safeguards**: if post-processing indicates an error (e.g., SABR fatal reason) after we already responded, the server updates playback context and, if needed, forces future requests to error out. Since Roku players expect idempotent segment delivery, this matches existing behaviour.

## Concurrency Controls & Guards
- `inFlightRequests` keyed by `cacheKey` or `(mediaIdHash, contentType, byteRange)` ensures only one fetch runs per segment. Waiters are stored as `{ connection, requestId, timestamp }`.
- `inFlightSegments` keyed by `requestNumber` track workers currently producing output; used to cancel on timeout or on socket close.
- When a `"SEGMENT_READY"` arrives, the server removes all waiters and pushes them to `send_http_reply_raw`. Late arrivals check `inFlightRequests` and, if `status = delivered` but `storedPath` still pending, they can wait on writer completion or read directly from the worker-provided ByteArray retained in RequestState.
- Cache writer publishes `storedPath`; the server updates `CacheMetadataTable` so subsequent `sabr_cacheLoadSegment` hits succeed even before maintenance.

## Worker Responsibilities (Detailed)
### Fetch Worker
- Maintains its own message loop with queue to support multiple concurrent requests (bounded by `MAX_CONCURRENT_FETCHES`).
- Steps per request:
  1. Deserialize payload, ensure tmp directories exist.
  2. Encode proto (if not already encoded).
  3. Perform `makeRequest` (retries & error classification).
  4. Feed `sabr_umpProcessor` incrementally. On part that matches requested byte range:
     - Build `SegmentPayload` struct (`bytes`, `coverage`, `streamInfo`, `metrics`).
     - Emit `"SEGMENT_READY"`.
  5. Continue scanning for additional parts, e.g., `NextRequestPolicy`, `SabrContextUpdate`, `ReloadPlaybackContext`.
  6. Emit final `"FETCH_RESULT"` summarising metrics and leftover instructions.
- If the worker encounters fatal errors before producing a segment:
  - Sends `"FETCH_RESULT"` with `error`.
  - Server can optionally retry synchronously or reply with 5xx.
- Workers should surface metrics (proto, proxy, UMP) in their messages so we retain observability after refactor.

### Cache Writer
- Receives `STORE_REQUEST` after the server responds.
- Responsibilities:
  1. Copy or move segment payload to final cache path (existing `sabr_cacheStoreSegment` logic can be adapted).
  2. Run maintenance opportunistically (batch multiple store requests before scanning).
  3. Persist playback context snapshots; optionally debounce to avoid frequent writes.
  4. Notify server with `storedPath`, new cache size, and errors.
- To prevent redundant maintenance storms, stage (a) and (b) should operate on a batched queue (e.g., run maintenance once per N writes or once per X ms).

## Prefetch and Long-tail Processing
- Currently `sabr_maybeSchedulePrefetch` runs inline. After parallelization:
  - Fetch worker can compute prefetch targets while scanning UMP and include them in `"POST_PROCESS"` payloads.
  - Server schedules these requests via the same fetch dispatch mechanism but marks them as low priority (e.g., queue after direct player requests).
- Any `sabr_cacheMarkDeliveredByPath` should move into the cache writer to keep filesystem touches in one place. The worker/ server passes required metadata with the `STORE_REQUEST`.

## Failure & Timeout Handling
- **Worker timeout**: if no `"SEGMENT_READY"` within configurable window (e.g., 6s), server cancels the RequestState, falls back to synchronous path, and sends cancel message to worker (so it can drop work).
- **Socket close mid-fetch**: server marks RequestState as `aborted` and notifies worker to stop; no HTTP response is sent.
- **Cache writer failure**: server logs warning, keeps ByteArray in memory until eviction or next request, and may requeue persistence. Since the player already received data, failures are non-fatal but should trigger diagnostics.
- **Graceful shutdown**: before the Scene exits, server waits for outstanding writer tasks or flushes contexts to disk.

## Shared Data Structures
```brighterscript
' In ytsabrServerTask
m.requestStates = {
    "<cacheKey>": {
        status: "fetching" | "delivered" | "failed",
        waiters: [ connection, ... ],
        payload: invalid, ' ByteArray until persisted
        metrics: {},
        lastUpdated: nowMs
    }
}

m.fetchWorkerPort = CreateObject("roMessagePort")
m.cacheWriterPort = CreateObject("roMessagePort")
```
- Avoid sharing mutable playback context objects with workers; copy the necessary fields to prevent racey writes.
- Use `utilsTask` (or a lightweight helper) to generate unique IDs for correlating responses.

## Incremental Migration Strategy
1. **Phase 0**: keep current synchronous path; add RequestState scaffolding and log instrumentation (already live).
2. **Phase 1**: introduce fetch worker but still wait for `"FETCH_RESULT"` before replying (functional parity, ensures message plumbing works).
3. **Phase 2**: allow `"SEGMENT_READY"` to trigger early HTTP response; keep cache writing synchronous.
4. **Phase 3**: offload cache persistence + maintenance to writer task.
5. **Phase 4**: move prefetch scheduling & buffered range indexing to background worker.
6. **Phase 5**: tighten timeouts, add retry/backoff policies, and enable optional worker pools for high-throughput scenarios.

## Testing & Instrumentation
- Extend existing smoke test to assert presence of `"SEGMENT_READY"` / `"STORE_RESULT"` logs and collect per-stage metrics.
- Add unit-style task tests:
  - Fetch worker: feed synthetic UMP payloads and ensure early segment events fire.
  - Cache writer: simulate queue bursts and verify maintenance cadence.
- During rollout, keep metrics counters (avg, p90) for each stage to compare before/after.

## Open Questions / Follow-ups
- Do we need more than one fetch worker per content type? If yes, define queuing strategy (simple FIFO vs priority for live requests).
- How to handle memory pressure when multiple waiters hold ByteArrays before cache persistence? Option: respond sequentially, then release ByteArray once writer confirms.
- Should playback context writes be coalesced across audio/video tasks (shared manager task) to avoid races on the same `tmp:/hash/playbackContext.json`?
- Prefetch requests might compete with live requests; consider separate queue or weighting.

These details provide a roadmap for implementing multi-task parallelism while preserving correct segment delivery semantics and guarding against edge cases introduced by asynchronous processing.
