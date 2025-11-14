# Generated BrightScript code

Files in this directory are produced by protoc-gen-brs.

## Proto inputs
- ../../Temp/googlevideo/protos/video_streaming/format_initialization_metadata.proto
- ../../Temp/googlevideo/protos/video_streaming/media_header.proto
- ../../Temp/googlevideo/protos/video_streaming/next_request_policy.proto
- ../../Temp/googlevideo/protos/video_streaming/playback_cookie.proto
- ../../Temp/googlevideo/protos/video_streaming/reload_player_response.proto
- ../../Temp/googlevideo/protos/video_streaming/sabr_context_sending_policy.proto
- ../../Temp/googlevideo/protos/video_streaming/sabr_context_update.proto
- ../../Temp/googlevideo/protos/video_streaming/sabr_error.proto
- ../../Temp/googlevideo/protos/video_streaming/sabr_redirect.proto
- ../../Temp/googlevideo/protos/video_streaming/snackbar_message.proto
- ../../Temp/googlevideo/protos/video_streaming/stream_protection_status.proto
- ../../Temp/googlevideo/protos/video_streaming/video_playback_abr_request.proto

## Generated messages
- video_streaming.FormatInitializationMetadata
- video_streaming.NextRequestPolicy
- video_streaming.PlaybackCookie
- video_streaming.SabrContextSendingPolicy
- video_streaming.SabrRedirect
- video_streaming.MediaHeader
- video_streaming.ReloadPlaybackParams
- video_streaming.ReloadPlaybackContext
- video_streaming.SabrContextUpdate
- video_streaming.SabrContextValue
- video_streaming.SabrContextValue.ContentInfo
- video_streaming.SabrContextValue.TimingInfo
- video_streaming.SabrError
- video_streaming.SnackbarMessage
- video_streaming.VideoPlaybackAbrRequest
- video_streaming.UnknownMessage1
- video_streaming.UnknownMessage2
- video_streaming.UnknownMessage3
- video_streaming.StreamProtectionStatus
- video_streaming.TimeRange
- video_streaming.ClientAbrState
- video_streaming.BufferedRange
- video_streaming.BufferedRange.UnknownMessage1
- video_streaming.BufferedRange.UnknownMessage1.UnknownInnerMessage
- video_streaming.BufferedRange.UnknownMessage2
- video_streaming.StreamerContext
- video_streaming.StreamerContext.ClientInfo
- video_streaming.StreamerContext.GLDeviceInfo
- video_streaming.StreamerContext.SabrContext
- video_streaming.StreamerContext.UnknownMessage1
- video_streaming.StreamerContext.UnknownMessage1.UnknownInnerMessage1
- video_streaming.MediaCapabilities
- video_streaming.MediaCapabilities.VideoFormatCapability
- video_streaming.MediaCapabilities.AudioFormatCapability
- misc.HttpHeader
- misc.FormatId
- misc.Range
- misc.IdentifierToken
- misc.KeyValuePair
- misc.AuthorizedFormat
- misc.PlaybackAuthorization

Regenerate with:

```bash
npm run generate:brs -- --proto proto
```
