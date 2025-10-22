' Auto-generated baseline vector data (do not edit manually)
function GetBaselineData() as Object
    data = {}
    data.generatedAt = "2025-10-17T16:24:15.645Z"
    data.files = []
    data.files.Push("../../Temp/googlevideo/protos/misc/common.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/buffered_range.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/client_abr_state.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/crypto_params.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/format_initialization_metadata.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/format_selection_config.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/innertube_request.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/live_metadata.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/media_capabilities.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/media_header.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/next_request_policy.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/onesie_header.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/onesie_header_type.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/onesie_innertube_request.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/onesie_innertube_response.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/onesie_proxy_status.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/onesie_request.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/playback_cookie.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/playback_start_policy.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/reload_player_response.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/request_cancellation_policy.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/request_identifier.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/sabr_context_sending_policy.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/sabr_context_update.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/sabr_error.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/sabr_redirect.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/sabr_seek.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/snackbar_message.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/stream_protection_status.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/streamer_context.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/time_range.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/ump_part_id.proto")
    data.files.Push("../../Temp/googlevideo/protos/video_streaming/video_playback_abr_request.proto")
    data.files.Push("proto/simple.proto")
    data.cases = []
    case0 = {}
    case0.type = "UstreamerFlags"
    case0.protoType = "video_streaming.UstreamerFlags"
    case0.field = "send_video_playback_config"
    case0.fieldId = 2
    case0.sampleLabel = "false"
    case0.valueType = "bool"
    case0.value = false
    case0.encodedBase64 = ""
    case0.decoded = {}
    case0.decoded.send_video_playback_config = false
    data.cases.Push(case0)
    case1 = {}
    case1.type = "UstreamerFlags"
    case1.protoType = "video_streaming.UstreamerFlags"
    case1.field = "send_video_playback_config"
    case1.fieldId = 2
    case1.sampleLabel = "true"
    case1.valueType = "bool"
    case1.value = true
    case1.encodedBase64 = "EAE="
    case1.decoded = {}
    case1.decoded.send_video_playback_config = true
    data.cases.Push(case1)
    case2 = {}
    case2.type = "UnknownMessage1"
    case2.protoType = "video_streaming.OnesieHeader.UnknownMessage1"
    case2.field = "video_id"
    case2.fieldId = 2
    case2.sampleLabel = "default"
    case2.valueType = "string"
    case2.value = "Hello from UnknownMessage1"
    case2.encodedBase64 = "EhpIZWxsbyBmcm9tIFVua25vd25NZXNzYWdlMQ=="
    case2.decoded = {}
    case2.decoded.video_id = "Hello from UnknownMessage1"
    data.cases.Push(case2)
    case3 = {}
    case3.type = "UnknownMessage2"
    case3.protoType = "video_streaming.OnesieHeader.UnknownMessage2"
    case3.field = "itag_denylist"
    case3.fieldId = 1
    case3.sampleLabel = "multi"
    case3.valueType = "string"
    case3.value = ParseJson("[""Sample-UnknownMessage2-a"",""Sample-UnknownMessage2-b""]")
    case3.encodedBase64 = "ChhTYW1wbGUtVW5rbm93bk1lc3NhZ2UyLWEKGFNhbXBsZS1Vbmtub3duTWVzc2FnZTItYg=="
    case3.decoded = {}
    case3.decoded.itag_denylist = ParseJson("[""Sample-UnknownMessage2-a"",""Sample-UnknownMessage2-b""]")
    data.cases.Push(case3)
    case4 = {}
    case4.type = "RequestIdentifier"
    case4.protoType = "video_streaming.RequestIdentifier"
    case4.field = "token"
    case4.fieldId = 1
    case4.sampleLabel = "default"
    case4.valueType = "string"
    case4.value = "Hello from RequestIdentifier"
    case4.encodedBase64 = "ChxIZWxsbyBmcm9tIFJlcXVlc3RJZGVudGlmaWVy"
    case4.decoded = {}
    case4.decoded.token = "Hello from RequestIdentifier"
    data.cases.Push(case4)
    case5 = {}
    case5.type = "SabrRedirect"
    case5.protoType = "video_streaming.SabrRedirect"
    case5.field = "url"
    case5.fieldId = 1
    case5.sampleLabel = "default"
    case5.valueType = "string"
    case5.value = "Hello from SabrRedirect"
    case5.encodedBase64 = "ChdIZWxsbyBmcm9tIFNhYnJSZWRpcmVjdA=="
    case5.decoded = {}
    case5.decoded.url = "Hello from SabrRedirect"
    data.cases.Push(case5)
    case6 = {}
    case6.type = "SnackbarMessage"
    case6.protoType = "video_streaming.SnackbarMessage"
    case6.field = "id"
    case6.fieldId = 1
    case6.sampleLabel = "zero"
    case6.valueType = "int32"
    case6.value = 0
    case6.encodedBase64 = ""
    case6.decoded = {}
    case6.decoded.id = 0
    data.cases.Push(case6)
    case7 = {}
    case7.type = "SnackbarMessage"
    case7.protoType = "video_streaming.SnackbarMessage"
    case7.field = "id"
    case7.fieldId = 1
    case7.sampleLabel = "mid"
    case7.valueType = "int32"
    case7.value = 107
    case7.encodedBase64 = "CGs="
    case7.decoded = {}
    case7.decoded.id = 107
    data.cases.Push(case7)
    case8 = {}
    case8.type = "SnackbarMessage"
    case8.protoType = "video_streaming.SnackbarMessage"
    case8.field = "id"
    case8.fieldId = 1
    case8.sampleLabel = "max"
    case8.valueType = "int32"
    case8.value = 2147483647
    case8.encodedBase64 = "CP////8H"
    case8.decoded = {}
    case8.decoded.id = 2147483647
    data.cases.Push(case8)
    case9 = {}
    case9.type = "ReloadPlaybackParams"
    case9.protoType = "video_streaming.ReloadPlaybackParams"
    case9.field = "token"
    case9.fieldId = 1
    case9.sampleLabel = "default"
    case9.valueType = "string"
    case9.value = "Hello from ReloadPlaybackParams"
    case9.encodedBase64 = "Ch9IZWxsbyBmcm9tIFJlbG9hZFBsYXliYWNrUGFyYW1z"
    case9.decoded = {}
    case9.decoded.token = "Hello from ReloadPlaybackParams"
    data.cases.Push(case9)
    case10 = {}
    case10.type = "SimpleMessage"
    case10.protoType = "samples.SimpleMessage"
    case10.field = "value"
    case10.fieldId = 1
    case10.sampleLabel = "default"
    case10.valueType = "string"
    case10.value = "Hello from SimpleMessage"
    case10.encodedBase64 = "ChhIZWxsbyBmcm9tIFNpbXBsZU1lc3NhZ2U="
    case10.decoded = {}
    case10.decoded.value = "Hello from SimpleMessage"
    data.cases.Push(case10)
    case11 = {}
    case11.type = "CountMessage"
    case11.protoType = "samples.CountMessage"
    case11.field = "count"
    case11.fieldId = 1
    case11.sampleLabel = "zero"
    case11.valueType = "int32"
    case11.value = 0
    case11.encodedBase64 = ""
    case11.decoded = {}
    case11.decoded.count = 0
    data.cases.Push(case11)
    case12 = {}
    case12.type = "CountMessage"
    case12.protoType = "samples.CountMessage"
    case12.field = "count"
    case12.fieldId = 1
    case12.sampleLabel = "mid"
    case12.valueType = "int32"
    case12.value = 107
    case12.encodedBase64 = "CGs="
    case12.decoded = {}
    case12.decoded.count = 107
    data.cases.Push(case12)
    case13 = {}
    case13.type = "CountMessage"
    case13.protoType = "samples.CountMessage"
    case13.field = "count"
    case13.fieldId = 1
    case13.sampleLabel = "max"
    case13.valueType = "int32"
    case13.value = 2147483647
    case13.encodedBase64 = "CP////8H"
    case13.decoded = {}
    case13.decoded.count = 2147483647
    data.cases.Push(case13)
    case14 = {}
    case14.type = "FlagMessage"
    case14.protoType = "samples.FlagMessage"
    case14.field = "enabled"
    case14.fieldId = 1
    case14.sampleLabel = "false"
    case14.valueType = "bool"
    case14.value = false
    case14.encodedBase64 = ""
    case14.decoded = {}
    case14.decoded.enabled = false
    data.cases.Push(case14)
    case15 = {}
    case15.type = "FlagMessage"
    case15.protoType = "samples.FlagMessage"
    case15.field = "enabled"
    case15.fieldId = 1
    case15.sampleLabel = "true"
    case15.valueType = "bool"
    case15.value = true
    case15.encodedBase64 = "CAE="
    case15.decoded = {}
    case15.decoded.enabled = true
    data.cases.Push(case15)
    case16 = {}
    case16.type = "FloatMessage"
    case16.protoType = "samples.FloatMessage"
    case16.field = "value"
    case16.fieldId = 1
    case16.sampleLabel = "zero"
    case16.valueType = "float"
    case16.value = 0
    case16.encodedBase64 = ""
    case16.decoded = {}
    case16.decoded.value = 0
    data.cases.Push(case16)
    case17 = {}
    case17.type = "FloatMessage"
    case17.protoType = "samples.FloatMessage"
    case17.field = "value"
    case17.fieldId = 1
    case17.sampleLabel = "one"
    case17.valueType = "float"
    case17.value = 1
    case17.encodedBase64 = "DQAAgD8="
    case17.decoded = {}
    case17.decoded.value = 1
    data.cases.Push(case17)
    case18 = {}
    case18.type = "FloatMessage"
    case18.protoType = "samples.FloatMessage"
    case18.field = "value"
    case18.fieldId = 1
    case18.sampleLabel = "neg-one"
    case18.valueType = "float"
    case18.value = -1
    case18.encodedBase64 = "DQAAgL8="
    case18.decoded = {}
    case18.decoded.value = -1
    data.cases.Push(case18)
    case19 = {}
    case19.type = "FloatMessage"
    case19.protoType = "samples.FloatMessage"
    case19.field = "value"
    case19.fieldId = 1
    case19.sampleLabel = "pi"
    case19.valueType = "float"
    case19.value = 3.1415927
    case19.encodedBase64 = "DdsPSUA="
    case19.decoded = {}
    case19.decoded.value = 3.1415927410125732
    data.cases.Push(case19)
    case20 = {}
    case20.type = "FloatMessage"
    case20.protoType = "samples.FloatMessage"
    case20.field = "value"
    case20.fieldId = 1
    case20.sampleLabel = "neg-mid"
    case20.valueType = "float"
    case20.value = -123.456
    case20.encodedBase64 = "DXnp9sI="
    case20.decoded = {}
    case20.decoded.value = -123.45600128173828
    data.cases.Push(case20)
    case21 = {}
    case21.type = "FloatMessage"
    case21.protoType = "samples.FloatMessage"
    case21.field = "value"
    case21.fieldId = 1
    case21.sampleLabel = "large"
    case21.valueType = "float"
    case21.value = 123456.789
    case21.encodedBase64 = "DWUg8Uc="
    case21.decoded = {}
    case21.decoded.value = 123456.7890625
    data.cases.Push(case21)
    case22 = {}
    case22.type = "FloatMessage"
    case22.protoType = "samples.FloatMessage"
    case22.field = "value"
    case22.fieldId = 1
    case22.sampleLabel = "min-normal"
    case22.valueType = "float"
    case22.value = 1.17549435e-38
    case22.encodedBase64 = "DQAAgAA="
    case22.decoded = {}
    case22.decoded.value = 1.1754943508222875e-38
    data.cases.Push(case22)
    case23 = {}
    case23.type = "DoubleMessage"
    case23.protoType = "samples.DoubleMessage"
    case23.field = "value"
    case23.fieldId = 1
    case23.sampleLabel = "zero"
    case23.valueType = "double"
    case23.value = 0
    case23.encodedBase64 = ""
    case23.decoded = {}
    case23.decoded.value = 0
    data.cases.Push(case23)
    case24 = {}
    case24.type = "DoubleMessage"
    case24.protoType = "samples.DoubleMessage"
    case24.field = "value"
    case24.fieldId = 1
    case24.sampleLabel = "one"
    case24.valueType = "double"
    case24.value = 1
    case24.encodedBase64 = "CQAAAAAAAPA/"
    case24.decoded = {}
    case24.decoded.value = 1
    data.cases.Push(case24)
    case25 = {}
    case25.type = "DoubleMessage"
    case25.protoType = "samples.DoubleMessage"
    case25.field = "value"
    case25.fieldId = 1
    case25.sampleLabel = "neg-one"
    case25.valueType = "double"
    case25.value = -1
    case25.encodedBase64 = "CQAAAAAAAPC/"
    case25.decoded = {}
    case25.decoded.value = -1
    data.cases.Push(case25)
    case26 = {}
    case26.type = "DoubleMessage"
    case26.protoType = "samples.DoubleMessage"
    case26.field = "value"
    case26.fieldId = 1
    case26.sampleLabel = "pi"
    case26.valueType = "double"
    case26.value = 3.141592653589793
    case26.encodedBase64 = "CRgtRFT7IQlA"
    case26.decoded = {}
    case26.decoded.value = 3.141592653589793
    data.cases.Push(case26)
    case27 = {}
    case27.type = "DoubleMessage"
    case27.protoType = "samples.DoubleMessage"
    case27.field = "value"
    case27.fieldId = 1
    case27.sampleLabel = "neg-mid"
    case27.valueType = "double"
    case27.value = -987654321.1234567
    case27.encodedBase64 = "CW7Nj1g0b83B"
    case27.decoded = {}
    case27.decoded.value = -987654321.1234567
    data.cases.Push(case27)
    case28 = {}
    case28.type = "DoubleMessage"
    case28.protoType = "samples.DoubleMessage"
    case28.field = "value"
    case28.fieldId = 1
    case28.sampleLabel = "precise-boundary"
    case28.valueType = "double"
    case28.value = 9007199254740992
    case28.encodedBase64 = "CQAAAAAAAEBD"
    case28.decoded = {}
    case28.decoded.value = 9007199254740992
    data.cases.Push(case28)
    case29 = {}
    case29.type = "DoubleMessage"
    case29.protoType = "samples.DoubleMessage"
    case29.field = "value"
    case29.fieldId = 1
    case29.sampleLabel = "min-normal"
    case29.valueType = "double"
    case29.value = __pb_uint64PartsToDouble(1048576, 0)
    case29.encodedBase64 = "CQAAAAAAABAA"
    case29.decoded = {}
    case29.decoded.value = __pb_uint64PartsToDouble(1048576, 0)
    data.cases.Push(case29)
    case30 = {}
    case30.type = "Fixed32Message"
    case30.protoType = "samples.Fixed32Message"
    case30.field = "value"
    case30.fieldId = 1
    case30.sampleLabel = "zero"
    case30.valueType = "fixed32"
    case30.value = 0
    case30.encodedBase64 = ""
    case30.decoded = {}
    case30.decoded.value = 0
    data.cases.Push(case30)
    case31 = {}
    case31.type = "Fixed32Message"
    case31.protoType = "samples.Fixed32Message"
    case31.field = "value"
    case31.fieldId = 1
    case31.sampleLabel = "mid"
    case31.valueType = "fixed32"
    case31.value = 5123
    case31.encodedBase64 = "DQMUAAA="
    case31.decoded = {}
    case31.decoded.value = 5123
    data.cases.Push(case31)
    case32 = {}
    case32.type = "Fixed32Message"
    case32.protoType = "samples.Fixed32Message"
    case32.field = "value"
    case32.fieldId = 1
    case32.sampleLabel = "int32-max"
    case32.valueType = "fixed32"
    case32.value = 2147483647
    case32.encodedBase64 = "Df///38="
    case32.decoded = {}
    case32.decoded.value = 2147483647
    data.cases.Push(case32)
    case33 = {}
    case33.type = "Fixed32Message"
    case33.protoType = "samples.Fixed32Message"
    case33.field = "value"
    case33.fieldId = 1
    case33.sampleLabel = "uint32-max"
    case33.valueType = "fixed32"
    case33.value = 4294967295
    case33.encodedBase64 = "Df////8="
    case33.decoded = {}
    case33.decoded.value = 4294967295
    data.cases.Push(case33)
    case34 = {}
    case34.type = "Sfixed32Message"
    case34.protoType = "samples.Sfixed32Message"
    case34.field = "value"
    case34.fieldId = 1
    case34.sampleLabel = "zero"
    case34.valueType = "sfixed32"
    case34.value = 0
    case34.encodedBase64 = ""
    case34.decoded = {}
    case34.decoded.value = 0
    data.cases.Push(case34)
    case35 = {}
    case35.type = "Sfixed32Message"
    case35.protoType = "samples.Sfixed32Message"
    case35.field = "value"
    case35.fieldId = 1
    case35.sampleLabel = "mid-pos"
    case35.valueType = "sfixed32"
    case35.value = 4099
    case35.encodedBase64 = "DQMQAAA="
    case35.decoded = {}
    case35.decoded.value = 4099
    data.cases.Push(case35)
    case36 = {}
    case36.type = "Sfixed32Message"
    case36.protoType = "samples.Sfixed32Message"
    case36.field = "value"
    case36.fieldId = 1
    case36.sampleLabel = "mid-neg"
    case36.valueType = "sfixed32"
    case36.value = -4099
    case36.encodedBase64 = "Df3v//8="
    case36.decoded = {}
    case36.decoded.value = -4099
    data.cases.Push(case36)
    case37 = {}
    case37.type = "Sfixed32Message"
    case37.protoType = "samples.Sfixed32Message"
    case37.field = "value"
    case37.fieldId = 1
    case37.sampleLabel = "max"
    case37.valueType = "sfixed32"
    case37.value = 2147483647
    case37.encodedBase64 = "Df///38="
    case37.decoded = {}
    case37.decoded.value = 2147483647
    data.cases.Push(case37)
    case38 = {}
    case38.type = "Sfixed32Message"
    case38.protoType = "samples.Sfixed32Message"
    case38.field = "value"
    case38.fieldId = 1
    case38.sampleLabel = "min"
    case38.valueType = "sfixed32"
    case38.value = -2147483648
    case38.encodedBase64 = "DQAAAIA="
    case38.decoded = {}
    case38.decoded.value = -2147483648
    data.cases.Push(case38)
    case39 = {}
    case39.type = "Fixed64Message"
    case39.protoType = "samples.Fixed64Message"
    case39.field = "value"
    case39.fieldId = 1
    case39.sampleLabel = "zero"
    case39.valueType = "fixed64"
    case39.value = "0"
    case39.encodedBase64 = ""
    case39.decoded = {}
    case39.decoded.value = "0"
    data.cases.Push(case39)
    case40 = {}
    case40.type = "Fixed64Message"
    case40.protoType = "samples.Fixed64Message"
    case40.field = "value"
    case40.fieldId = 1
    case40.sampleLabel = "mid"
    case40.valueType = "fixed64"
    case40.value = "123456789"
    case40.encodedBase64 = "CRXNWwcAAAAA"
    case40.decoded = {}
    case40.decoded.value = "123456789"
    data.cases.Push(case40)
    case41 = {}
    case41.type = "Fixed64Message"
    case41.protoType = "samples.Fixed64Message"
    case41.field = "value"
    case41.fieldId = 1
    case41.sampleLabel = "uint32-plus-one"
    case41.valueType = "fixed64"
    case41.value = "4294967296"
    case41.encodedBase64 = "CQAAAAABAAAA"
    case41.decoded = {}
    case41.decoded.value = "4294967296"
    data.cases.Push(case41)
    case42 = {}
    case42.type = "Fixed64Message"
    case42.protoType = "samples.Fixed64Message"
    case42.field = "value"
    case42.fieldId = 1
    case42.sampleLabel = "uint64-max"
    case42.valueType = "fixed64"
    case42.value = "18446744073709551615"
    case42.encodedBase64 = "Cf//////////"
    case42.decoded = {}
    case42.decoded.value = "18446744073709551615"
    data.cases.Push(case42)
    case43 = {}
    case43.type = "Sfixed64Message"
    case43.protoType = "samples.Sfixed64Message"
    case43.field = "value"
    case43.fieldId = 1
    case43.sampleLabel = "zero"
    case43.valueType = "sfixed64"
    case43.value = "0"
    case43.encodedBase64 = ""
    case43.decoded = {}
    case43.decoded.value = "0"
    data.cases.Push(case43)
    case44 = {}
    case44.type = "Sfixed64Message"
    case44.protoType = "samples.Sfixed64Message"
    case44.field = "value"
    case44.fieldId = 1
    case44.sampleLabel = "mid-pos"
    case44.valueType = "sfixed64"
    case44.value = "9876543210"
    case44.encodedBase64 = "CeoWsEwCAAAA"
    case44.decoded = {}
    case44.decoded.value = "9876543210"
    data.cases.Push(case44)
    case45 = {}
    case45.type = "Sfixed64Message"
    case45.protoType = "samples.Sfixed64Message"
    case45.field = "value"
    case45.fieldId = 1
    case45.sampleLabel = "mid-neg"
    case45.valueType = "sfixed64"
    case45.value = "-9876543210"
    case45.encodedBase64 = "CRbpT7P9////"
    case45.decoded = {}
    case45.decoded.value = "-9876543210"
    data.cases.Push(case45)
    case46 = {}
    case46.type = "Sfixed64Message"
    case46.protoType = "samples.Sfixed64Message"
    case46.field = "value"
    case46.fieldId = 1
    case46.sampleLabel = "max"
    case46.valueType = "sfixed64"
    case46.value = "9223372036854775807"
    case46.encodedBase64 = "Cf////////9/"
    case46.decoded = {}
    case46.decoded.value = "9223372036854775807"
    data.cases.Push(case46)
    case47 = {}
    case47.type = "Sfixed64Message"
    case47.protoType = "samples.Sfixed64Message"
    case47.field = "value"
    case47.fieldId = 1
    case47.sampleLabel = "min"
    case47.valueType = "sfixed64"
    case47.value = "-9223372036854775808"
    case47.encodedBase64 = "CQAAAAAAAACA"
    case47.decoded = {}
    case47.decoded.value = "-9223372036854775808"
    data.cases.Push(case47)
    case48 = {}
    case48.type = "BytesMessage"
    case48.protoType = "samples.BytesMessage"
    case48.field = "data"
    case48.fieldId = 1
    case48.sampleLabel = "empty"
    case48.valueType = "bytes"
    case48.value = ""
    case48.encodedBase64 = ""
    case48.decoded = {}
    case48.decoded.data = ""
    data.cases.Push(case48)
    case49 = {}
    case49.type = "BytesMessage"
    case49.protoType = "samples.BytesMessage"
    case49.field = "data"
    case49.fieldId = 1
    case49.sampleLabel = "pattern"
    case49.valueType = "bytes"
    case49.value = "AQID"
    case49.encodedBase64 = "CgMBAgM="
    case49.decoded = {}
    case49.decoded.data = "AQID"
    data.cases.Push(case49)
    case50 = {}
    case50.type = "LongMessage"
    case50.protoType = "samples.LongMessage"
    case50.field = "total"
    case50.fieldId = 1
    case50.sampleLabel = "zero"
    case50.valueType = "int64"
    case50.value = "0"
    case50.encodedBase64 = ""
    case50.decoded = {}
    case50.decoded.total = "0"
    data.cases.Push(case50)
    case51 = {}
    case51.type = "LongMessage"
    case51.protoType = "samples.LongMessage"
    case51.field = "total"
    case51.fieldId = 1
    case51.sampleLabel = "one"
    case51.valueType = "int64"
    case51.value = "1"
    case51.encodedBase64 = "CAE="
    case51.decoded = {}
    case51.decoded.total = "1"
    data.cases.Push(case51)
    case52 = {}
    case52.type = "LongMessage"
    case52.protoType = "samples.LongMessage"
    case52.field = "total"
    case52.fieldId = 1
    case52.sampleLabel = "one-byte-max-minus"
    case52.valueType = "int64"
    case52.value = "63"
    case52.encodedBase64 = "CD8="
    case52.decoded = {}
    case52.decoded.total = "63"
    data.cases.Push(case52)
    case53 = {}
    case53.type = "LongMessage"
    case53.protoType = "samples.LongMessage"
    case53.field = "total"
    case53.fieldId = 1
    case53.sampleLabel = "two-byte-min"
    case53.valueType = "int64"
    case53.value = "64"
    case53.encodedBase64 = "CEA="
    case53.decoded = {}
    case53.decoded.total = "64"
    data.cases.Push(case53)
    case54 = {}
    case54.type = "LongMessage"
    case54.protoType = "samples.LongMessage"
    case54.field = "total"
    case54.fieldId = 1
    case54.sampleLabel = "one-byte-max"
    case54.valueType = "int64"
    case54.value = "127"
    case54.encodedBase64 = "CH8="
    case54.decoded = {}
    case54.decoded.total = "127"
    data.cases.Push(case54)
    case55 = {}
    case55.type = "LongMessage"
    case55.protoType = "samples.LongMessage"
    case55.field = "total"
    case55.fieldId = 1
    case55.sampleLabel = "two-byte-boundary"
    case55.valueType = "int64"
    case55.value = "128"
    case55.encodedBase64 = "CIAB"
    case55.decoded = {}
    case55.decoded.total = "128"
    data.cases.Push(case55)
    case56 = {}
    case56.type = "LongMessage"
    case56.protoType = "samples.LongMessage"
    case56.field = "total"
    case56.fieldId = 1
    case56.sampleLabel = "two-byte-mid"
    case56.valueType = "int64"
    case56.value = "255"
    case56.encodedBase64 = "CP8B"
    case56.decoded = {}
    case56.decoded.total = "255"
    data.cases.Push(case56)
    case57 = {}
    case57.type = "LongMessage"
    case57.protoType = "samples.LongMessage"
    case57.field = "total"
    case57.fieldId = 1
    case57.sampleLabel = "two-byte-plus-one"
    case57.valueType = "int64"
    case57.value = "256"
    case57.encodedBase64 = "CIAC"
    case57.decoded = {}
    case57.decoded.total = "256"
    data.cases.Push(case57)
    case58 = {}
    case58.type = "LongMessage"
    case58.protoType = "samples.LongMessage"
    case58.field = "total"
    case58.fieldId = 1
    case58.sampleLabel = "two-byte-max"
    case58.valueType = "int64"
    case58.value = "16383"
    case58.encodedBase64 = "CP9/"
    case58.decoded = {}
    case58.decoded.total = "16383"
    data.cases.Push(case58)
    case59 = {}
    case59.type = "LongMessage"
    case59.protoType = "samples.LongMessage"
    case59.field = "total"
    case59.fieldId = 1
    case59.sampleLabel = "three-byte-boundary"
    case59.valueType = "int64"
    case59.value = "16384"
    case59.encodedBase64 = "CICAAQ=="
    case59.decoded = {}
    case59.decoded.total = "16384"
    data.cases.Push(case59)
    case60 = {}
    case60.type = "LongMessage"
    case60.protoType = "samples.LongMessage"
    case60.field = "total"
    case60.fieldId = 1
    case60.sampleLabel = "three-byte-max"
    case60.valueType = "int64"
    case60.value = "2097151"
    case60.encodedBase64 = "CP//fw=="
    case60.decoded = {}
    case60.decoded.total = "2097151"
    data.cases.Push(case60)
    case61 = {}
    case61.type = "LongMessage"
    case61.protoType = "samples.LongMessage"
    case61.field = "total"
    case61.fieldId = 1
    case61.sampleLabel = "four-byte-boundary"
    case61.valueType = "int64"
    case61.value = "2097152"
    case61.encodedBase64 = "CICAgAE="
    case61.decoded = {}
    case61.decoded.total = "2097152"
    data.cases.Push(case61)
    case62 = {}
    case62.type = "LongMessage"
    case62.protoType = "samples.LongMessage"
    case62.field = "total"
    case62.fieldId = 1
    case62.sampleLabel = "mid"
    case62.valueType = "int64"
    case62.value = "1000012345"
    case62.encodedBase64 = "CLn069wD"
    case62.decoded = {}
    case62.decoded.total = "1000012345"
    data.cases.Push(case62)
    case63 = {}
    case63.type = "LongMessage"
    case63.protoType = "samples.LongMessage"
    case63.field = "total"
    case63.fieldId = 1
    case63.sampleLabel = "int32-max"
    case63.valueType = "int64"
    case63.value = "2147483647"
    case63.encodedBase64 = "CP////8H"
    case63.decoded = {}
    case63.decoded.total = "2147483647"
    data.cases.Push(case63)
    case64 = {}
    case64.type = "LongMessage"
    case64.protoType = "samples.LongMessage"
    case64.field = "total"
    case64.fieldId = 1
    case64.sampleLabel = "uint32-max"
    case64.valueType = "int64"
    case64.value = "4294967295"
    case64.encodedBase64 = "CP////8P"
    case64.decoded = {}
    case64.decoded.total = "4294967295"
    data.cases.Push(case64)
    case65 = {}
    case65.type = "LongMessage"
    case65.protoType = "samples.LongMessage"
    case65.field = "total"
    case65.fieldId = 1
    case65.sampleLabel = "safe-max"
    case65.valueType = "int64"
    case65.value = "9007199254740991"
    case65.encodedBase64 = "CP////////8P"
    case65.decoded = {}
    case65.decoded.total = "9007199254740991"
    data.cases.Push(case65)
    case66 = {}
    case66.type = "LongMessage"
    case66.protoType = "samples.LongMessage"
    case66.field = "total"
    case66.fieldId = 1
    case66.sampleLabel = "int64-max"
    case66.valueType = "int64"
    case66.value = "9223372036854775807"
    case66.encodedBase64 = "CP//////////fw=="
    case66.decoded = {}
    case66.decoded.total = "9223372036854775807"
    data.cases.Push(case66)
    case67 = {}
    case67.type = "LongMessage"
    case67.protoType = "samples.LongMessage"
    case67.field = "total"
    case67.fieldId = 1
    case67.sampleLabel = "neg-one"
    case67.valueType = "int64"
    case67.value = "-1"
    case67.encodedBase64 = "CP///////////wE="
    case67.decoded = {}
    case67.decoded.total = "-1"
    data.cases.Push(case67)
    case68 = {}
    case68.type = "LongMessage"
    case68.protoType = "samples.LongMessage"
    case68.field = "total"
    case68.fieldId = 1
    case68.sampleLabel = "neg-one-byte-max"
    case68.valueType = "int64"
    case68.value = "-63"
    case68.encodedBase64 = "CMH//////////wE="
    case68.decoded = {}
    case68.decoded.total = "-63"
    data.cases.Push(case68)
    case69 = {}
    case69.type = "LongMessage"
    case69.protoType = "samples.LongMessage"
    case69.field = "total"
    case69.fieldId = 1
    case69.sampleLabel = "neg-two-byte-min"
    case69.valueType = "int64"
    case69.value = "-64"
    case69.encodedBase64 = "CMD//////////wE="
    case69.decoded = {}
    case69.decoded.total = "-64"
    data.cases.Push(case69)
    case70 = {}
    case70.type = "LongMessage"
    case70.protoType = "samples.LongMessage"
    case70.field = "total"
    case70.fieldId = 1
    case70.sampleLabel = "neg-two-byte-boundary"
    case70.valueType = "int64"
    case70.value = "-128"
    case70.encodedBase64 = "CID//////////wE="
    case70.decoded = {}
    case70.decoded.total = "-128"
    data.cases.Push(case70)
    case71 = {}
    case71.type = "LongMessage"
    case71.protoType = "samples.LongMessage"
    case71.field = "total"
    case71.fieldId = 1
    case71.sampleLabel = "neg-nine-bit"
    case71.valueType = "int64"
    case71.value = "-129"
    case71.encodedBase64 = "CP/+/////////wE="
    case71.decoded = {}
    case71.decoded.total = "-129"
    data.cases.Push(case71)
    case72 = {}
    case72.type = "LongMessage"
    case72.protoType = "samples.LongMessage"
    case72.field = "total"
    case72.fieldId = 1
    case72.sampleLabel = "int32-min"
    case72.valueType = "int64"
    case72.value = "-2147483648"
    case72.encodedBase64 = "CICAgID4/////wE="
    case72.decoded = {}
    case72.decoded.total = "-2147483648"
    data.cases.Push(case72)
    case73 = {}
    case73.type = "LongMessage"
    case73.protoType = "samples.LongMessage"
    case73.field = "total"
    case73.fieldId = 1
    case73.sampleLabel = "neg-safe-max"
    case73.valueType = "int64"
    case73.value = "-9007199254740991"
    case73.encodedBase64 = "CIGAgICAgIDw/wE="
    case73.decoded = {}
    case73.decoded.total = "-9007199254740991"
    data.cases.Push(case73)
    case74 = {}
    case74.type = "LongMessage"
    case74.protoType = "samples.LongMessage"
    case74.field = "total"
    case74.fieldId = 1
    case74.sampleLabel = "int64-min"
    case74.valueType = "int64"
    case74.value = "-9223372036854775808"
    case74.encodedBase64 = "CICAgICAgICAgAE="
    case74.decoded = {}
    case74.decoded.total = "-9223372036854775808"
    data.cases.Push(case74)
    case75 = {}
    case75.type = "UnsignedCountMessage"
    case75.protoType = "samples.UnsignedCountMessage"
    case75.field = "count"
    case75.fieldId = 1
    case75.sampleLabel = "zero"
    case75.valueType = "uint32"
    case75.value = 0
    case75.encodedBase64 = ""
    case75.decoded = {}
    case75.decoded.count = 0
    data.cases.Push(case75)
    case76 = {}
    case76.type = "UnsignedCountMessage"
    case76.protoType = "samples.UnsignedCountMessage"
    case76.field = "count"
    case76.fieldId = 1
    case76.sampleLabel = "mid"
    case76.valueType = "uint32"
    case76.value = 1042
    case76.encodedBase64 = "CJII"
    case76.decoded = {}
    case76.decoded.count = 1042
    data.cases.Push(case76)
    case77 = {}
    case77.type = "UnsignedCountMessage"
    case77.protoType = "samples.UnsignedCountMessage"
    case77.field = "count"
    case77.fieldId = 1
    case77.sampleLabel = "int32-max-plus-one"
    case77.valueType = "uint32"
    case77.value = 2147483648
    case77.encodedBase64 = "CICAgIAI"
    case77.decoded = {}
    case77.decoded.count = 2147483648
    data.cases.Push(case77)
    case78 = {}
    case78.type = "UnsignedCountMessage"
    case78.protoType = "samples.UnsignedCountMessage"
    case78.field = "count"
    case78.fieldId = 1
    case78.sampleLabel = "uint32-max"
    case78.valueType = "uint32"
    case78.value = 4294967295
    case78.encodedBase64 = "CP////8P"
    case78.decoded = {}
    case78.decoded.count = 4294967295
    data.cases.Push(case78)
    case79 = {}
    case79.type = "UnsignedLongMessage"
    case79.protoType = "samples.UnsignedLongMessage"
    case79.field = "total"
    case79.fieldId = 1
    case79.sampleLabel = "zero"
    case79.valueType = "uint64"
    case79.value = "0"
    case79.encodedBase64 = ""
    case79.decoded = {}
    case79.decoded.total = "0"
    data.cases.Push(case79)
    case80 = {}
    case80.type = "UnsignedLongMessage"
    case80.protoType = "samples.UnsignedLongMessage"
    case80.field = "total"
    case80.fieldId = 1
    case80.sampleLabel = "one"
    case80.valueType = "uint64"
    case80.value = "1"
    case80.encodedBase64 = "CAE="
    case80.decoded = {}
    case80.decoded.total = "1"
    data.cases.Push(case80)
    case81 = {}
    case81.type = "UnsignedLongMessage"
    case81.protoType = "samples.UnsignedLongMessage"
    case81.field = "total"
    case81.fieldId = 1
    case81.sampleLabel = "one-byte-max-minus"
    case81.valueType = "uint64"
    case81.value = "63"
    case81.encodedBase64 = "CD8="
    case81.decoded = {}
    case81.decoded.total = "63"
    data.cases.Push(case81)
    case82 = {}
    case82.type = "UnsignedLongMessage"
    case82.protoType = "samples.UnsignedLongMessage"
    case82.field = "total"
    case82.fieldId = 1
    case82.sampleLabel = "two-byte-min"
    case82.valueType = "uint64"
    case82.value = "64"
    case82.encodedBase64 = "CEA="
    case82.decoded = {}
    case82.decoded.total = "64"
    data.cases.Push(case82)
    case83 = {}
    case83.type = "UnsignedLongMessage"
    case83.protoType = "samples.UnsignedLongMessage"
    case83.field = "total"
    case83.fieldId = 1
    case83.sampleLabel = "one-byte-max"
    case83.valueType = "uint64"
    case83.value = "127"
    case83.encodedBase64 = "CH8="
    case83.decoded = {}
    case83.decoded.total = "127"
    data.cases.Push(case83)
    case84 = {}
    case84.type = "UnsignedLongMessage"
    case84.protoType = "samples.UnsignedLongMessage"
    case84.field = "total"
    case84.fieldId = 1
    case84.sampleLabel = "two-byte-boundary"
    case84.valueType = "uint64"
    case84.value = "128"
    case84.encodedBase64 = "CIAB"
    case84.decoded = {}
    case84.decoded.total = "128"
    data.cases.Push(case84)
    case85 = {}
    case85.type = "UnsignedLongMessage"
    case85.protoType = "samples.UnsignedLongMessage"
    case85.field = "total"
    case85.fieldId = 1
    case85.sampleLabel = "two-byte-mid"
    case85.valueType = "uint64"
    case85.value = "255"
    case85.encodedBase64 = "CP8B"
    case85.decoded = {}
    case85.decoded.total = "255"
    data.cases.Push(case85)
    case86 = {}
    case86.type = "UnsignedLongMessage"
    case86.protoType = "samples.UnsignedLongMessage"
    case86.field = "total"
    case86.fieldId = 1
    case86.sampleLabel = "two-byte-plus-one"
    case86.valueType = "uint64"
    case86.value = "256"
    case86.encodedBase64 = "CIAC"
    case86.decoded = {}
    case86.decoded.total = "256"
    data.cases.Push(case86)
    case87 = {}
    case87.type = "UnsignedLongMessage"
    case87.protoType = "samples.UnsignedLongMessage"
    case87.field = "total"
    case87.fieldId = 1
    case87.sampleLabel = "two-byte-max"
    case87.valueType = "uint64"
    case87.value = "16383"
    case87.encodedBase64 = "CP9/"
    case87.decoded = {}
    case87.decoded.total = "16383"
    data.cases.Push(case87)
    case88 = {}
    case88.type = "UnsignedLongMessage"
    case88.protoType = "samples.UnsignedLongMessage"
    case88.field = "total"
    case88.fieldId = 1
    case88.sampleLabel = "three-byte-boundary"
    case88.valueType = "uint64"
    case88.value = "16384"
    case88.encodedBase64 = "CICAAQ=="
    case88.decoded = {}
    case88.decoded.total = "16384"
    data.cases.Push(case88)
    case89 = {}
    case89.type = "UnsignedLongMessage"
    case89.protoType = "samples.UnsignedLongMessage"
    case89.field = "total"
    case89.fieldId = 1
    case89.sampleLabel = "three-byte-max"
    case89.valueType = "uint64"
    case89.value = "2097151"
    case89.encodedBase64 = "CP//fw=="
    case89.decoded = {}
    case89.decoded.total = "2097151"
    data.cases.Push(case89)
    case90 = {}
    case90.type = "UnsignedLongMessage"
    case90.protoType = "samples.UnsignedLongMessage"
    case90.field = "total"
    case90.fieldId = 1
    case90.sampleLabel = "four-byte-boundary"
    case90.valueType = "uint64"
    case90.value = "2097152"
    case90.encodedBase64 = "CICAgAE="
    case90.decoded = {}
    case90.decoded.total = "2097152"
    data.cases.Push(case90)
    case91 = {}
    case91.type = "UnsignedLongMessage"
    case91.protoType = "samples.UnsignedLongMessage"
    case91.field = "total"
    case91.fieldId = 1
    case91.sampleLabel = "mid"
    case91.valueType = "uint64"
    case91.value = "500002468"
    case91.encodedBase64 = "CKTdte4B"
    case91.decoded = {}
    case91.decoded.total = "500002468"
    data.cases.Push(case91)
    case92 = {}
    case92.type = "UnsignedLongMessage"
    case92.protoType = "samples.UnsignedLongMessage"
    case92.field = "total"
    case92.fieldId = 1
    case92.sampleLabel = "int32-max"
    case92.valueType = "uint64"
    case92.value = "2147483647"
    case92.encodedBase64 = "CP////8H"
    case92.decoded = {}
    case92.decoded.total = "2147483647"
    data.cases.Push(case92)
    case93 = {}
    case93.type = "UnsignedLongMessage"
    case93.protoType = "samples.UnsignedLongMessage"
    case93.field = "total"
    case93.fieldId = 1
    case93.sampleLabel = "int32-max-plus-one"
    case93.valueType = "uint64"
    case93.value = "2147483648"
    case93.encodedBase64 = "CICAgIAI"
    case93.decoded = {}
    case93.decoded.total = "2147483648"
    data.cases.Push(case93)
    case94 = {}
    case94.type = "UnsignedLongMessage"
    case94.protoType = "samples.UnsignedLongMessage"
    case94.field = "total"
    case94.fieldId = 1
    case94.sampleLabel = "uint32-max"
    case94.valueType = "uint64"
    case94.value = "4294967295"
    case94.encodedBase64 = "CP////8P"
    case94.decoded = {}
    case94.decoded.total = "4294967295"
    data.cases.Push(case94)
    case95 = {}
    case95.type = "UnsignedLongMessage"
    case95.protoType = "samples.UnsignedLongMessage"
    case95.field = "total"
    case95.fieldId = 1
    case95.sampleLabel = "uint32-double"
    case95.valueType = "uint64"
    case95.value = "8589934592"
    case95.encodedBase64 = "CICAgIAg"
    case95.decoded = {}
    case95.decoded.total = "8589934592"
    data.cases.Push(case95)
    case96 = {}
    case96.type = "UnsignedLongMessage"
    case96.protoType = "samples.UnsignedLongMessage"
    case96.field = "total"
    case96.fieldId = 1
    case96.sampleLabel = "safe-max"
    case96.valueType = "uint64"
    case96.value = "9007199254740991"
    case96.encodedBase64 = "CP////////8P"
    case96.decoded = {}
    case96.decoded.total = "9007199254740991"
    data.cases.Push(case96)
    case97 = {}
    case97.type = "UnsignedLongMessage"
    case97.protoType = "samples.UnsignedLongMessage"
    case97.field = "total"
    case97.fieldId = 1
    case97.sampleLabel = "uint64-max"
    case97.valueType = "uint64"
    case97.value = "18446744073709551615"
    case97.encodedBase64 = "CP///////////wE="
    case97.decoded = {}
    case97.decoded.total = "18446744073709551615"
    data.cases.Push(case97)
    case98 = {}
    case98.type = "SignedCountMessage"
    case98.protoType = "samples.SignedCountMessage"
    case98.field = "delta"
    case98.fieldId = 1
    case98.sampleLabel = "zero"
    case98.valueType = "sint32"
    case98.value = 0
    case98.encodedBase64 = ""
    case98.decoded = {}
    case98.decoded.delta = 0
    data.cases.Push(case98)
    case99 = {}
    case99.type = "SignedCountMessage"
    case99.protoType = "samples.SignedCountMessage"
    case99.field = "delta"
    case99.fieldId = 1
    case99.sampleLabel = "mid-pos"
    case99.valueType = "sint32"
    case99.value = 50
    case99.encodedBase64 = "CGQ="
    case99.decoded = {}
    case99.decoded.delta = 50
    data.cases.Push(case99)
    case100 = {}
    case100.type = "SignedCountMessage"
    case100.protoType = "samples.SignedCountMessage"
    case100.field = "delta"
    case100.fieldId = 1
    case100.sampleLabel = "mid-neg"
    case100.valueType = "sint32"
    case100.value = -50
    case100.encodedBase64 = "CGM="
    case100.decoded = {}
    case100.decoded.delta = -50
    data.cases.Push(case100)
    case101 = {}
    case101.type = "SignedCountMessage"
    case101.protoType = "samples.SignedCountMessage"
    case101.field = "delta"
    case101.fieldId = 1
    case101.sampleLabel = "max"
    case101.valueType = "sint32"
    case101.value = 2147483647
    case101.encodedBase64 = "CP7///8P"
    case101.decoded = {}
    case101.decoded.delta = 2147483647
    data.cases.Push(case101)
    case102 = {}
    case102.type = "SignedCountMessage"
    case102.protoType = "samples.SignedCountMessage"
    case102.field = "delta"
    case102.fieldId = 1
    case102.sampleLabel = "min"
    case102.valueType = "sint32"
    case102.value = -2147483648
    case102.encodedBase64 = "CP////8P"
    case102.decoded = {}
    case102.decoded.delta = -2147483648
    data.cases.Push(case102)
    case103 = {}
    case103.type = "SignedLongMessage"
    case103.protoType = "samples.SignedLongMessage"
    case103.field = "delta"
    case103.fieldId = 1
    case103.sampleLabel = "zero"
    case103.valueType = "sint64"
    case103.value = "0"
    case103.encodedBase64 = ""
    case103.decoded = {}
    case103.decoded.delta = "0"
    data.cases.Push(case103)
    case104 = {}
    case104.type = "SignedLongMessage"
    case104.protoType = "samples.SignedLongMessage"
    case104.field = "delta"
    case104.fieldId = 1
    case104.sampleLabel = "one"
    case104.valueType = "sint64"
    case104.value = "1"
    case104.encodedBase64 = "CAI="
    case104.decoded = {}
    case104.decoded.delta = "1"
    data.cases.Push(case104)
    case105 = {}
    case105.type = "SignedLongMessage"
    case105.protoType = "samples.SignedLongMessage"
    case105.field = "delta"
    case105.fieldId = 1
    case105.sampleLabel = "neg-one"
    case105.valueType = "sint64"
    case105.value = "-1"
    case105.encodedBase64 = "CAE="
    case105.decoded = {}
    case105.decoded.delta = "-1"
    data.cases.Push(case105)
    case106 = {}
    case106.type = "SignedLongMessage"
    case106.protoType = "samples.SignedLongMessage"
    case106.field = "delta"
    case106.fieldId = 1
    case106.sampleLabel = "one-byte-max-minus"
    case106.valueType = "sint64"
    case106.value = "63"
    case106.encodedBase64 = "CH4="
    case106.decoded = {}
    case106.decoded.delta = "63"
    data.cases.Push(case106)
    case107 = {}
    case107.type = "SignedLongMessage"
    case107.protoType = "samples.SignedLongMessage"
    case107.field = "delta"
    case107.fieldId = 1
    case107.sampleLabel = "neg-one-byte-max-minus"
    case107.valueType = "sint64"
    case107.value = "-63"
    case107.encodedBase64 = "CH0="
    case107.decoded = {}
    case107.decoded.delta = "-63"
    data.cases.Push(case107)
    case108 = {}
    case108.type = "SignedLongMessage"
    case108.protoType = "samples.SignedLongMessage"
    case108.field = "delta"
    case108.fieldId = 1
    case108.sampleLabel = "two-byte-min"
    case108.valueType = "sint64"
    case108.value = "64"
    case108.encodedBase64 = "CIAB"
    case108.decoded = {}
    case108.decoded.delta = "64"
    data.cases.Push(case108)
    case109 = {}
    case109.type = "SignedLongMessage"
    case109.protoType = "samples.SignedLongMessage"
    case109.field = "delta"
    case109.fieldId = 1
    case109.sampleLabel = "neg-two-byte-min"
    case109.valueType = "sint64"
    case109.value = "-64"
    case109.encodedBase64 = "CH8="
    case109.decoded = {}
    case109.decoded.delta = "-64"
    data.cases.Push(case109)
    case110 = {}
    case110.type = "SignedLongMessage"
    case110.protoType = "samples.SignedLongMessage"
    case110.field = "delta"
    case110.fieldId = 1
    case110.sampleLabel = "one-byte-max"
    case110.valueType = "sint64"
    case110.value = "127"
    case110.encodedBase64 = "CP4B"
    case110.decoded = {}
    case110.decoded.delta = "127"
    data.cases.Push(case110)
    case111 = {}
    case111.type = "SignedLongMessage"
    case111.protoType = "samples.SignedLongMessage"
    case111.field = "delta"
    case111.fieldId = 1
    case111.sampleLabel = "neg-two-byte-boundary"
    case111.valueType = "sint64"
    case111.value = "-128"
    case111.encodedBase64 = "CP8B"
    case111.decoded = {}
    case111.decoded.delta = "-128"
    data.cases.Push(case111)
    case112 = {}
    case112.type = "SignedLongMessage"
    case112.protoType = "samples.SignedLongMessage"
    case112.field = "delta"
    case112.fieldId = 1
    case112.sampleLabel = "two-byte-mid"
    case112.valueType = "sint64"
    case112.value = "255"
    case112.encodedBase64 = "CP4D"
    case112.decoded = {}
    case112.decoded.delta = "255"
    data.cases.Push(case112)
    case113 = {}
    case113.type = "SignedLongMessage"
    case113.protoType = "samples.SignedLongMessage"
    case113.field = "delta"
    case113.fieldId = 1
    case113.sampleLabel = "neg-two-byte-mid"
    case113.valueType = "sint64"
    case113.value = "-255"
    case113.encodedBase64 = "CP0D"
    case113.decoded = {}
    case113.decoded.delta = "-255"
    data.cases.Push(case113)
    case114 = {}
    case114.type = "SignedLongMessage"
    case114.protoType = "samples.SignedLongMessage"
    case114.field = "delta"
    case114.fieldId = 1
    case114.sampleLabel = "two-byte-max"
    case114.valueType = "sint64"
    case114.value = "16383"
    case114.encodedBase64 = "CP7/AQ=="
    case114.decoded = {}
    case114.decoded.delta = "16383"
    data.cases.Push(case114)
    case115 = {}
    case115.type = "SignedLongMessage"
    case115.protoType = "samples.SignedLongMessage"
    case115.field = "delta"
    case115.fieldId = 1
    case115.sampleLabel = "neg-two-byte-max"
    case115.valueType = "sint64"
    case115.value = "-16384"
    case115.encodedBase64 = "CP//AQ=="
    case115.decoded = {}
    case115.decoded.delta = "-16384"
    data.cases.Push(case115)
    case116 = {}
    case116.type = "SignedLongMessage"
    case116.protoType = "samples.SignedLongMessage"
    case116.field = "delta"
    case116.fieldId = 1
    case116.sampleLabel = "three-byte-max"
    case116.valueType = "sint64"
    case116.value = "2097151"
    case116.encodedBase64 = "CP7//wE="
    case116.decoded = {}
    case116.decoded.delta = "2097151"
    data.cases.Push(case116)
    case117 = {}
    case117.type = "SignedLongMessage"
    case117.protoType = "samples.SignedLongMessage"
    case117.field = "delta"
    case117.fieldId = 1
    case117.sampleLabel = "neg-three-byte-max"
    case117.valueType = "sint64"
    case117.value = "-2097152"
    case117.encodedBase64 = "CP///wE="
    case117.decoded = {}
    case117.decoded.delta = "-2097152"
    data.cases.Push(case117)
    case118 = {}
    case118.type = "SignedLongMessage"
    case118.protoType = "samples.SignedLongMessage"
    case118.field = "delta"
    case118.fieldId = 1
    case118.sampleLabel = "mid-pos"
    case118.valueType = "sint64"
    case118.value = "750001357"
    case118.encodedBase64 = "CJrzoMsF"
    case118.decoded = {}
    case118.decoded.delta = "750001357"
    data.cases.Push(case118)
    case119 = {}
    case119.type = "SignedLongMessage"
    case119.protoType = "samples.SignedLongMessage"
    case119.field = "delta"
    case119.fieldId = 1
    case119.sampleLabel = "mid-neg"
    case119.valueType = "sint64"
    case119.value = "-750001357"
    case119.encodedBase64 = "CJnzoMsF"
    case119.decoded = {}
    case119.decoded.delta = "-750001357"
    data.cases.Push(case119)
    case120 = {}
    case120.type = "SignedLongMessage"
    case120.protoType = "samples.SignedLongMessage"
    case120.field = "delta"
    case120.fieldId = 1
    case120.sampleLabel = "int32-max"
    case120.valueType = "sint64"
    case120.value = "2147483647"
    case120.encodedBase64 = "CP7///8P"
    case120.decoded = {}
    case120.decoded.delta = "2147483647"
    data.cases.Push(case120)
    case121 = {}
    case121.type = "SignedLongMessage"
    case121.protoType = "samples.SignedLongMessage"
    case121.field = "delta"
    case121.fieldId = 1
    case121.sampleLabel = "int32-min"
    case121.valueType = "sint64"
    case121.value = "-2147483648"
    case121.encodedBase64 = "CP////8P"
    case121.decoded = {}
    case121.decoded.delta = "-2147483648"
    data.cases.Push(case121)
    case122 = {}
    case122.type = "SignedLongMessage"
    case122.protoType = "samples.SignedLongMessage"
    case122.field = "delta"
    case122.fieldId = 1
    case122.sampleLabel = "safe-max"
    case122.valueType = "sint64"
    case122.value = "9007199254740991"
    case122.encodedBase64 = "CP7///////8f"
    case122.decoded = {}
    case122.decoded.delta = "9007199254740991"
    data.cases.Push(case122)
    case123 = {}
    case123.type = "SignedLongMessage"
    case123.protoType = "samples.SignedLongMessage"
    case123.field = "delta"
    case123.fieldId = 1
    case123.sampleLabel = "neg-safe-max"
    case123.valueType = "sint64"
    case123.value = "-9007199254740991"
    case123.encodedBase64 = "CP3///////8f"
    case123.decoded = {}
    case123.decoded.delta = "-9007199254740991"
    data.cases.Push(case123)
    case124 = {}
    case124.type = "SignedLongMessage"
    case124.protoType = "samples.SignedLongMessage"
    case124.field = "delta"
    case124.fieldId = 1
    case124.sampleLabel = "int64-max"
    case124.valueType = "sint64"
    case124.value = "9223372036854775807"
    case124.encodedBase64 = "CP7//////////wE="
    case124.decoded = {}
    case124.decoded.delta = "9223372036854775807"
    data.cases.Push(case124)
    case125 = {}
    case125.type = "SignedLongMessage"
    case125.protoType = "samples.SignedLongMessage"
    case125.field = "delta"
    case125.fieldId = 1
    case125.sampleLabel = "int64-min"
    case125.valueType = "sint64"
    case125.value = "-9223372036854775808"
    case125.encodedBase64 = "CP///////////wE="
    case125.decoded = {}
    case125.decoded.delta = "-9223372036854775808"
    data.cases.Push(case125)
    case126 = {}
    case126.type = "PackedInt32Message"
    case126.protoType = "samples.PackedInt32Message"
    case126.field = "values"
    case126.fieldId = 1
    case126.sampleLabel = "packed"
    case126.valueType = "int32"
    case126.value = ParseJson("[0,3,-3]")
    case126.encodedBase64 = "CgwAA/3//////////wE="
    case126.decoded = {}
    case126.decoded.values = ParseJson("[0,3,-3]")
    case126.alternateEncodings = ParseJson("[""CAAIAwj9//////////8B""]")
    data.cases.Push(case126)
    case127 = {}
    case127.type = "UnpackedInt32Message"
    case127.protoType = "samples.UnpackedInt32Message"
    case127.field = "values"
    case127.fieldId = 1
    case127.sampleLabel = "unpacked"
    case127.valueType = "int32"
    case127.value = ParseJson("[0,3,-3]")
    case127.encodedBase64 = "CAAIAwj9//////////8B"
    case127.decoded = {}
    case127.decoded.values = ParseJson("[0,3,-3]")
    data.cases.Push(case127)
    case128 = {}
    case128.type = "PackedUint32Message"
    case128.protoType = "samples.PackedUint32Message"
    case128.field = "values"
    case128.fieldId = 1
    case128.sampleLabel = "packed"
    case128.valueType = "uint32"
    case128.value = ParseJson("[0,15,4294967295]")
    case128.encodedBase64 = "CgcAD/////8P"
    case128.decoded = {}
    case128.decoded.values = ParseJson("[0,15,4294967295]")
    case128.alternateEncodings = ParseJson("[""CAAIDwj/////Dw==""]")
    data.cases.Push(case128)
    case129 = {}
    case129.type = "UnpackedUint32Message"
    case129.protoType = "samples.UnpackedUint32Message"
    case129.field = "values"
    case129.fieldId = 1
    case129.sampleLabel = "unpacked"
    case129.valueType = "uint32"
    case129.value = ParseJson("[0,15,4294967295]")
    case129.encodedBase64 = "CAAIDwj/////Dw=="
    case129.decoded = {}
    case129.decoded.values = ParseJson("[0,15,4294967295]")
    data.cases.Push(case129)
    case130 = {}
    case130.type = "PackedSint32Message"
    case130.protoType = "samples.PackedSint32Message"
    case130.field = "values"
    case130.fieldId = 1
    case130.sampleLabel = "packed"
    case130.valueType = "sint32"
    case130.value = ParseJson("[0,4,-4]")
    case130.encodedBase64 = "CgMACAc="
    case130.decoded = {}
    case130.decoded.values = ParseJson("[0,4,-4]")
    case130.alternateEncodings = ParseJson("[""CAAICAgH""]")
    data.cases.Push(case130)
    case131 = {}
    case131.type = "UnpackedSint32Message"
    case131.protoType = "samples.UnpackedSint32Message"
    case131.field = "values"
    case131.fieldId = 1
    case131.sampleLabel = "unpacked"
    case131.valueType = "sint32"
    case131.value = ParseJson("[0,4,-4]")
    case131.encodedBase64 = "CAAICAgH"
    case131.decoded = {}
    case131.decoded.values = ParseJson("[0,4,-4]")
    data.cases.Push(case131)
    case132 = {}
    case132.type = "PackedInt64Message"
    case132.protoType = "samples.PackedInt64Message"
    case132.field = "values"
    case132.fieldId = 1
    case132.sampleLabel = "packed"
    case132.valueType = "int64"
    case132.value = ParseJson("[""0"",""100007"",""-123456789""]")
    case132.encodedBase64 = "Cg4Ap40G6+WQxf//////AQ=="
    case132.decoded = {}
    case132.decoded.values = ParseJson("[""0"",""100007"",""-123456789""]")
    case132.alternateEncodings = ParseJson("[""CAAIp40GCOvlkMX//////wE=""]")
    data.cases.Push(case132)
    case133 = {}
    case133.type = "UnpackedInt64Message"
    case133.protoType = "samples.UnpackedInt64Message"
    case133.field = "values"
    case133.fieldId = 1
    case133.sampleLabel = "unpacked"
    case133.valueType = "int64"
    case133.value = ParseJson("[""0"",""100007"",""-123456789""]")
    case133.encodedBase64 = "CAAIp40GCOvlkMX//////wE="
    case133.decoded = {}
    case133.decoded.values = ParseJson("[""0"",""100007"",""-123456789""]")
    data.cases.Push(case133)
    case134 = {}
    case134.type = "PackedUint64Message"
    case134.protoType = "samples.PackedUint64Message"
    case134.field = "values"
    case134.fieldId = 1
    case134.sampleLabel = "packed"
    case134.valueType = "uint64"
    case134.value = ParseJson("[""0"",""4294967296"",""9007199254740991""]")
    case134.encodedBase64 = "Cg4AgICAgBD/////////Dw=="
    case134.decoded = {}
    case134.decoded.values = ParseJson("[""0"",""4294967296"",""9007199254740991""]")
    case134.alternateEncodings = ParseJson("[""CAAIgICAgBAI/////////w8=""]")
    data.cases.Push(case134)
    case135 = {}
    case135.type = "UnpackedUint64Message"
    case135.protoType = "samples.UnpackedUint64Message"
    case135.field = "values"
    case135.fieldId = 1
    case135.sampleLabel = "unpacked"
    case135.valueType = "uint64"
    case135.value = ParseJson("[""0"",""4294967296"",""9007199254740991""]")
    case135.encodedBase64 = "CAAIgICAgBAI/////////w8="
    case135.decoded = {}
    case135.decoded.values = ParseJson("[""0"",""4294967296"",""9007199254740991""]")
    data.cases.Push(case135)
    case136 = {}
    case136.type = "PackedSint64Message"
    case136.protoType = "samples.PackedSint64Message"
    case136.field = "values"
    case136.fieldId = 1
    case136.sampleLabel = "packed"
    case136.valueType = "sint64"
    case136.value = ParseJson("[""0"",""2147483647"",""-2147483648""]")
    case136.encodedBase64 = "CgsA/v///w//////Dw=="
    case136.decoded = {}
    case136.decoded.values = ParseJson("[""0"",""2147483647"",""-2147483648""]")
    case136.alternateEncodings = ParseJson("[""CAAI/v///w8I/////w8=""]")
    data.cases.Push(case136)
    case137 = {}
    case137.type = "UnpackedSint64Message"
    case137.protoType = "samples.UnpackedSint64Message"
    case137.field = "values"
    case137.fieldId = 1
    case137.sampleLabel = "unpacked"
    case137.valueType = "sint64"
    case137.value = ParseJson("[""0"",""2147483647"",""-2147483648""]")
    case137.encodedBase64 = "CAAI/v///w8I/////w8="
    case137.decoded = {}
    case137.decoded.values = ParseJson("[""0"",""2147483647"",""-2147483648""]")
    data.cases.Push(case137)
    case138 = {}
    case138.type = "PackedBoolMessage"
    case138.protoType = "samples.PackedBoolMessage"
    case138.field = "values"
    case138.fieldId = 1
    case138.sampleLabel = "packed"
    case138.valueType = "bool"
    case138.value = ParseJson("[false,true,true]")
    case138.encodedBase64 = "CgMAAQE="
    case138.decoded = {}
    case138.decoded.values = ParseJson("[false,true,true]")
    case138.alternateEncodings = ParseJson("[""CAAIAQgB""]")
    data.cases.Push(case138)
    case139 = {}
    case139.type = "UnpackedBoolMessage"
    case139.protoType = "samples.UnpackedBoolMessage"
    case139.field = "values"
    case139.fieldId = 1
    case139.sampleLabel = "unpacked"
    case139.valueType = "bool"
    case139.value = ParseJson("[false,true,true]")
    case139.encodedBase64 = "CAAIAQgB"
    case139.decoded = {}
    case139.decoded.values = ParseJson("[false,true,true]")
    data.cases.Push(case139)
    case140 = {}
    case140.type = "PackedFloatMessage"
    case140.protoType = "samples.PackedFloatMessage"
    case140.field = "values"
    case140.fieldId = 1
    case140.sampleLabel = "packed"
    case140.valueType = "float"
    case140.value = ParseJson("[0,1.25,-2.5]")
    case140.encodedBase64 = "CgwAAAAAAACgPwAAIMA="
    case140.decoded = {}
    case140.decoded.values = ParseJson("[0,1.25,-2.5]")
    case140.alternateEncodings = ParseJson("[""DQAAAAANAACgPw0AACDA""]")
    data.cases.Push(case140)
    case141 = {}
    case141.type = "UnpackedFloatMessage"
    case141.protoType = "samples.UnpackedFloatMessage"
    case141.field = "values"
    case141.fieldId = 1
    case141.sampleLabel = "unpacked"
    case141.valueType = "float"
    case141.value = ParseJson("[0,1.25,-2.5]")
    case141.encodedBase64 = "DQAAAAANAACgPw0AACDA"
    case141.decoded = {}
    case141.decoded.values = ParseJson("[0,1.25,-2.5]")
    data.cases.Push(case141)
    case142 = {}
    case142.type = "RepeatedDoubleMessage"
    case142.protoType = "samples.RepeatedDoubleMessage"
    case142.field = "values"
    case142.fieldId = 1
    case142.sampleLabel = "packed"
    case142.valueType = "double"
    case142.value = ParseJson("[0,1.5,-3.75]")
    case142.encodedBase64 = "ChgAAAAAAAAAAAAAAAAAAPg/AAAAAAAADsA="
    case142.decoded = {}
    case142.decoded.values = ParseJson("[0,1.5,-3.75]")
    case142.alternateEncodings = ParseJson("[""CQAAAAAAAAAACQAAAAAAAPg/CQAAAAAAAA7A""]")
    data.cases.Push(case142)
    case143 = {}
    case143.type = "UnpackedDoubleMessage"
    case143.protoType = "samples.UnpackedDoubleMessage"
    case143.field = "values"
    case143.fieldId = 1
    case143.sampleLabel = "unpacked"
    case143.valueType = "double"
    case143.value = ParseJson("[0,1.5,-3.75]")
    case143.encodedBase64 = "CQAAAAAAAAAACQAAAAAAAPg/CQAAAAAAAA7A"
    case143.decoded = {}
    case143.decoded.values = ParseJson("[0,1.5,-3.75]")
    data.cases.Push(case143)
    case144 = {}
    case144.type = "RepeatedFixed32Message"
    case144.protoType = "samples.RepeatedFixed32Message"
    case144.field = "values"
    case144.fieldId = 1
    case144.sampleLabel = "packed"
    case144.valueType = "fixed32"
    case144.value = ParseJson("[0,207,4294967295]")
    case144.encodedBase64 = "CgwAAAAAzwAAAP////8="
    case144.decoded = {}
    case144.decoded.values = ParseJson("[0,207,4294967295]")
    case144.alternateEncodings = ParseJson("[""DQAAAAANzwAAAA3/////""]")
    data.cases.Push(case144)
    case145 = {}
    case145.type = "UnpackedFixed32Message"
    case145.protoType = "samples.UnpackedFixed32Message"
    case145.field = "values"
    case145.fieldId = 1
    case145.sampleLabel = "unpacked"
    case145.valueType = "fixed32"
    case145.value = ParseJson("[0,207,4294967295]")
    case145.encodedBase64 = "DQAAAAANzwAAAA3/////"
    case145.decoded = {}
    case145.decoded.values = ParseJson("[0,207,4294967295]")
    data.cases.Push(case145)
    case146 = {}
    case146.type = "RepeatedSfixed32Message"
    case146.protoType = "samples.RepeatedSfixed32Message"
    case146.field = "values"
    case146.fieldId = 1
    case146.sampleLabel = "packed"
    case146.valueType = "sfixed32"
    case146.value = ParseJson("[0,161,-161]")
    case146.encodedBase64 = "CgwAAAAAoQAAAF////8="
    case146.decoded = {}
    case146.decoded.values = ParseJson("[0,161,-161]")
    case146.alternateEncodings = ParseJson("[""DQAAAAANoQAAAA1f////""]")
    data.cases.Push(case146)
    case147 = {}
    case147.type = "UnpackedSfixed32Message"
    case147.protoType = "samples.UnpackedSfixed32Message"
    case147.field = "values"
    case147.fieldId = 1
    case147.sampleLabel = "unpacked"
    case147.valueType = "sfixed32"
    case147.value = ParseJson("[0,161,-161]")
    case147.encodedBase64 = "DQAAAAANoQAAAA1f////"
    case147.decoded = {}
    case147.decoded.values = ParseJson("[0,161,-161]")
    data.cases.Push(case147)
    case148 = {}
    case148.type = "RepeatedFixed64Message"
    case148.protoType = "samples.RepeatedFixed64Message"
    case148.field = "values"
    case148.fieldId = 1
    case148.sampleLabel = "packed"
    case148.valueType = "fixed64"
    case148.value = ParseJson("[""0"",""4294967296"",""1099511627776""]")
    case148.encodedBase64 = "ChgAAAAAAAAAAAAAAAABAAAAAAAAAAABAAA="
    case148.decoded = {}
    case148.decoded.values = ParseJson("[""0"",""4294967296"",""1099511627776""]")
    case148.alternateEncodings = ParseJson("[""CQAAAAAAAAAACQAAAAABAAAACQAAAAAAAQAA""]")
    data.cases.Push(case148)
    case149 = {}
    case149.type = "UnpackedFixed64Message"
    case149.protoType = "samples.UnpackedFixed64Message"
    case149.field = "values"
    case149.fieldId = 1
    case149.sampleLabel = "unpacked"
    case149.valueType = "fixed64"
    case149.value = ParseJson("[""0"",""4294967296"",""1099511627776""]")
    case149.encodedBase64 = "CQAAAAAAAAAACQAAAAABAAAACQAAAAAAAQAA"
    case149.decoded = {}
    case149.decoded.values = ParseJson("[""0"",""4294967296"",""1099511627776""]")
    data.cases.Push(case149)
    case150 = {}
    case150.type = "RepeatedSfixed64Message"
    case150.protoType = "samples.RepeatedSfixed64Message"
    case150.field = "values"
    case150.fieldId = 1
    case150.sampleLabel = "packed"
    case150.valueType = "sfixed64"
    case150.value = ParseJson("[""0"",""2147483647"",""-2147483648""]")
    case150.encodedBase64 = "ChgAAAAAAAAAAP///38AAAAAAAAAgP////8="
    case150.decoded = {}
    case150.decoded.values = ParseJson("[""0"",""2147483647"",""-2147483648""]")
    case150.alternateEncodings = ParseJson("[""CQAAAAAAAAAACf///38AAAAACQAAAID/////""]")
    data.cases.Push(case150)
    case151 = {}
    case151.type = "UnpackedSfixed64Message"
    case151.protoType = "samples.UnpackedSfixed64Message"
    case151.field = "values"
    case151.fieldId = 1
    case151.sampleLabel = "unpacked"
    case151.valueType = "sfixed64"
    case151.value = ParseJson("[""0"",""2147483647"",""-2147483648""]")
    case151.encodedBase64 = "CQAAAAAAAAAACf///38AAAAACQAAAID/////"
    case151.decoded = {}
    case151.decoded.values = ParseJson("[""0"",""2147483647"",""-2147483648""]")
    data.cases.Push(case151)
    case152 = {}
    case152.type = "EnumMessage"
    case152.protoType = "samples.EnumMessage"
    case152.field = "choice"
    case152.fieldId = 1
    case152.sampleLabel = "first"
    case152.valueType = "enum"
    case152.value = "SAMPLE_ENUM_UNKNOWN"
    case152.encodedBase64 = ""
    case152.decoded = {}
    case152.decoded.choice = "SAMPLE_ENUM_UNKNOWN"
    data.cases.Push(case152)
    case153 = {}
    case153.type = "EnumMessage"
    case153.protoType = "samples.EnumMessage"
    case153.field = "choice"
    case153.fieldId = 1
    case153.sampleLabel = "second"
    case153.valueType = "enum"
    case153.value = "SAMPLE_ENUM_FIRST"
    case153.encodedBase64 = "CAE="
    case153.decoded = {}
    case153.decoded.choice = "SAMPLE_ENUM_FIRST"
    data.cases.Push(case153)
    case154 = {}
    case154.type = "PackedEnumMessage"
    case154.protoType = "samples.PackedEnumMessage"
    case154.field = "choices"
    case154.fieldId = 1
    case154.sampleLabel = "packed"
    case154.valueType = "enum"
    case154.value = ParseJson("[""SAMPLE_ENUM_UNKNOWN"",""SAMPLE_ENUM_FIRST"",""SAMPLE_ENUM_SECOND""]")
    case154.encodedBase64 = "CgMAAQI="
    case154.decoded = {}
    case154.decoded.choices = ParseJson("[""SAMPLE_ENUM_UNKNOWN"",""SAMPLE_ENUM_FIRST"",""SAMPLE_ENUM_SECOND""]")
    case154.alternateEncodings = ParseJson("[""CAAIAQgC""]")
    data.cases.Push(case154)
    case155 = {}
    case155.type = "UnpackedEnumMessage"
    case155.protoType = "samples.UnpackedEnumMessage"
    case155.field = "choices"
    case155.fieldId = 1
    case155.sampleLabel = "unpacked"
    case155.valueType = "enum"
    case155.value = ParseJson("[""SAMPLE_ENUM_UNKNOWN"",""SAMPLE_ENUM_FIRST"",""SAMPLE_ENUM_SECOND""]")
    case155.encodedBase64 = "CAAIAQgC"
    case155.decoded = {}
    case155.decoded.choices = ParseJson("[""SAMPLE_ENUM_UNKNOWN"",""SAMPLE_ENUM_FIRST"",""SAMPLE_ENUM_SECOND""]")
    data.cases.Push(case155)
    case156 = {}
    case156.type = "ChildMessage"
    case156.protoType = "samples.ChildMessage"
    case156.field = "value"
    case156.fieldId = 1
    case156.sampleLabel = "zero"
    case156.valueType = "int32"
    case156.value = 0
    case156.encodedBase64 = ""
    case156.decoded = {}
    case156.decoded.value = 0
    data.cases.Push(case156)
    case157 = {}
    case157.type = "ChildMessage"
    case157.protoType = "samples.ChildMessage"
    case157.field = "value"
    case157.fieldId = 1
    case157.sampleLabel = "mid"
    case157.valueType = "int32"
    case157.value = 107
    case157.encodedBase64 = "CGs="
    case157.decoded = {}
    case157.decoded.value = 107
    data.cases.Push(case157)
    case158 = {}
    case158.type = "ChildMessage"
    case158.protoType = "samples.ChildMessage"
    case158.field = "value"
    case158.fieldId = 1
    case158.sampleLabel = "max"
    case158.valueType = "int32"
    case158.value = 2147483647
    case158.encodedBase64 = "CP////8H"
    case158.decoded = {}
    case158.decoded.value = 2147483647
    data.cases.Push(case158)
    case159 = {}
    case159.type = "ReloadPlaybackContext"
    case159.protoType = "video_streaming.ReloadPlaybackContext"
    case159.field = "reload_playback_params"
    case159.fieldId = 1
    case159.sampleLabel = "single"
    case159.valueType = "ReloadPlaybackParams"
    case159.value = ParseJson("{""token"":""Hello from ReloadPlaybackParams""}")
    case159.encodedBase64 = "CiEKH0hlbGxvIGZyb20gUmVsb2FkUGxheWJhY2tQYXJhbXM="
    case159.decoded = {}
    case159.decoded.reload_playback_params = ParseJson("{""token"":""Hello from ReloadPlaybackParams""}")
    data.cases.Push(case159)
    case160 = {}
    case160.type = "ParentMessage"
    case160.protoType = "samples.ParentMessage"
    case160.field = "child"
    case160.fieldId = 1
    case160.sampleLabel = "single"
    case160.valueType = "ChildMessage"
    case160.value = ParseJson("{""value"":0}")
    case160.encodedBase64 = "CgA="
    case160.decoded = {}
    case160.decoded.child = ParseJson("{""value"":0}")
    data.cases.Push(case160)
    case161 = {}
    case161.type = "ParentRepeatedMessage"
    case161.protoType = "samples.ParentRepeatedMessage"
    case161.field = "children"
    case161.fieldId = 1
    case161.sampleLabel = "multi"
    case161.valueType = "ChildMessage"
    case161.value = ParseJson("[{""value"":0},{""value"":107}]")
    case161.encodedBase64 = "CgAKAghr"
    case161.decoded = {}
    case161.decoded.children = ParseJson("[{""value"":0},{""value"":107}]")
    data.cases.Push(case161)
    data.customCases = []
    custom0 = {}
    custom0.protoType = "video_streaming.VideoPlaybackAbrRequest"
    custom0.sampleLabel = "snake_case parity"
    custom0.value = ParseJson("{""client_abr_state"":{""playback_rate"":1,""bandwidth_estimate"":""9050000"",""enabled_track_types_bitfield"":2,""sticky_resolution"":1080,""last_manual_selected_resolution"":1080},""buffered_ranges"":[{""format_id"":{""itag"":140,""last_modified"":""1759475037898391""},""duration_ms"":""2147483647"",""start_segment_index"":2147483647,""end_segment_index"":2147483647,""time_range"":{""duration_ticks"":""2147483647"",""timescale"":1000}}],""selected_format_ids"":[{""itag"":140,""last_modified"":""1759475037898391""}],""preferred_audio_format_ids"":[{""itag"":140,""last_modified"":""1759475037898391""}],""preferred_video_format_ids"":[{""itag"":399,""last_modified"":""1759475866788004""}],""streamer_context"":{""client_info"":{""os_name"":""Windows"",""os_version"":""10.0"",""client_name"":1,""client_version"":""2.20250222.10.00""},""po_token"":""IjiH/4f+7xlo88SY86zVqvOP0czjh9KV44vKvO2wvsrTt8WVzrTEmM2p0ofOusCYxpjOrqLMw9q0uw==""},""video_playback_ustreamer_config"":""CuoICucFCAAlAACAPy0zM3M/NT0Klz9YAWgBchoKFm1mczJfY21mc193ZWJfdjNfMl8wMDMYAHiPTqABAagBALgCANoCmwEQsOoBGIDd2wEgoJwBKKCcATCYdXCIJ4AB9AO4AQHgAQOYAgzAAgHQAgLoAgSAAwKIA4gnqAMDwAMByAMBgAQB0AQB2AQB4AQA+AQHgAV9wAUByAUB4AXQD+gFAfgF0A+ABgGQBgG4BgHQBgHwBgH4BgGAB9APwAcB0AcBgAgBiAgBnQjNzEw+oAjoB+AIAegI////////////AfoCtQEtAACgQjUAAKpCZQAAgEBowHCoAdCGA/0BAACAP4UCmpkZP40CAACAP5UC+u1rO7UCAACAP8AC3wPSAhGw//////////8BHjxGWlxdXugC6AL9As3MzD2QAwGdAwrXIz2gAwHVAwAAekSYBAHVBAAAIEHoBPAQoAYBtQa9N4Y1vQYzM4NAwAcByAcB5QcAgAlE8AcBgAgBoQgAAAAAAADwv6kIAAAAAAAA8L+wCN8DuAoB+BABggMAkAMBqAMBsAMD0AMB2AMBygQcChMIwKkHEJh1GOgHJQAAAAAoADAAEODUAxjQD9IEDwoICLAJELAJIAEgiCcoAdoEDQoGCPAuEPAuIPAuKAHwBQGYBgGoBoCAAtIGFAjoBxBkGg0IiCcVAAAAPx3NzEw/2AYBiAcBuAcBoAgB0ggGCAEQARgBqQkAAAAAAADwv7EJAAAAAAAA8L/QCQHaCSRFN2t1UnNsQUU0KzVkS3c3UVh3MFNJMXl1UnhxbUd5SmxJRTjqCwSLBowGgAwBqAyQAcAMAcgMAdAMAYANAYgNAdgNAeANAYAOAYgOAZgOAYgPAcgPAdAPAegQAYARAZARAbIRFENBTVNDaFVQdWJiSkRQd0VzUVk96BEB4BIB8BIB+BIBuBMBwBMB8BMBkRQAAAAAAADwv5kUAAAAAAAA8L+wFAHKFACIp6HKCwEYATIMCIkBELjYiP6+h5ADMgwI+AEQ+aP4icGHkAMyDAiPAxCkwZ+wvoeQAzIMCIgBEKvBubm+h5ADMgwI9wEQsZf2rMKHkAMyDAiOAxDDvtG0voeQAzIMCIcBEPu4o7m+h5ADMgwI9AEQycf/q8KHkAMyDAiNAxCZnIqwvoeQAzIMCIYBEImKkfe+h5ADMgwI8wEQraSDrMKHkAMyDAiMAxD5wduyvoeQAzIMCIUBEMrfrra+h5ADMgwI8gEQlsK9rMKHkAMyDAiLAxD72bK0voeQAzIMCKABELmgkLi+h5ADMgwIlgIQoNjprMKHkAMyDAiKAxCj1OCyvoeQAzIMCIwBEJeNgKW7h5ADMgwI+QEQwIix/LuHkAMyDAj6ARCTzav8u4eQAzIMCPsBENTJrPy7h5ADOgBIAFIqGgJlbigBMhhVQ3Q4VXRXakpBa1VUdmZOdDRhdWZrYmc4AEAAWABgAHgAoAEBsAEFugEDBAUxwgEIAQIDBAUIMF7QAQASTQA/FfG3MEYCIQD7A417/f3b1SiwINyvpwKCIGCfP67AX4uBNq2EyH7UeAIhAOC71fOkiaXyEWZoUox4SAIARbH1vpu8rGmvyZrwLmgNGgJlaQ==""}")
    custom0.encodedBase64 = "CheAAbgIqAG4CLgBkK+oBJ0CAACAP8ACAhIMCIwBEJeNgKW7h5ADGisKDAiMARCXjYClu4eQAxj/////ByD/////Byj/////BzIJEP////8HGOgHKsAJCuoICucFCAAlAACAPy0zM3M/NT0Klz9YAWgBchoKFm1mczJfY21mc193ZWJfdjNfMl8wMDMYAHiPTqABAagBALgCANoCmwEQsOoBGIDd2wEgoJwBKKCcATCYdXCIJ4AB9AO4AQHgAQOYAgzAAgHQAgLoAgSAAwKIA4gnqAMDwAMByAMBgAQB0AQB2AQB4AQA+AQHgAV9wAUByAUB4AXQD+gFAfgF0A+ABgGQBgG4BgHQBgHwBgH4BgGAB9APwAcB0AcBgAgBiAgBnQjNzEw+oAjoB+AIAegI////////////AfoCtQEtAACgQjUAAKpCZQAAgEBowHCoAdCGA/0BAACAP4UCmpkZP40CAACAP5UC+u1rO7UCAACAP8AC3wPSAhGw//////////8BHjxGWlxdXugC6AL9As3MzD2QAwGdAwrXIz2gAwHVAwAAekSYBAHVBAAAIEHoBPAQoAYBtQa9N4Y1vQYzM4NAwAcByAcB5QcAgAlE8AcBgAgBoQgAAAAAAADwv6kIAAAAAAAA8L+wCN8DuAoB+BABggMAkAMBqAMBsAMD0AMB2AMBygQcChMIwKkHEJh1GOgHJQAAAAAoADAAEODUAxjQD9IEDwoICLAJELAJIAEgiCcoAdoEDQoGCPAuEPAuIPAuKAHwBQGYBgGoBoCAAtIGFAjoBxBkGg0IiCcVAAAAPx3NzEw/2AYBiAcBuAcBoAgB0ggGCAEQARgBqQkAAAAAAADwv7EJAAAAAAAA8L/QCQHaCSRFN2t1UnNsQUU0KzVkS3c3UVh3MFNJMXl1UnhxbUd5SmxJRTjqCwSLBowGgAwBqAyQAcAMAcgMAdAMAYANAYgNAdgNAeANAYAOAYgOAZgOAYgPAcgPAdAPAegQAYARAZARAbIRFENBTVNDaFVQdWJiSkRQd0VzUVk96BEB4BIB8BIB+BIBuBMBwBMB8BMBkRQAAAAAAADwv5kUAAAAAAAA8L+wFAHKFACIp6HKCwEYATIMCIkBELjYiP6+h5ADMgwI+AEQ+aP4icGHkAMyDAiPAxCkwZ+wvoeQAzIMCIgBEKvBubm+h5ADMgwI9wEQsZf2rMKHkAMyDAiOAxDDvtG0voeQAzIMCIcBEPu4o7m+h5ADMgwI9AEQycf/q8KHkAMyDAiNAxCZnIqwvoeQAzIMCIYBEImKkfe+h5ADMgwI8wEQraSDrMKHkAMyDAiMAxD5wduyvoeQAzIMCIUBEMrfrra+h5ADMgwI8gEQlsK9rMKHkAMyDAiLAxD72bK0voeQAzIMCKABELmgkLi+h5ADMgwIlgIQoNjprMKHkAMyDAiKAxCj1OCyvoeQAzIMCIwBEJeNgKW7h5ADMgwI+QEQwIix/LuHkAMyDAj6ARCTzav8u4eQAzIMCPsBENTJrPy7h5ADOgBIAFIqGgJlbigBMhhVQ3Q4VXRXakpBa1VUdmZOdDRhdWZrYmc4AEAAWABgAHgAoAEBsAEFugEDBAUxwgEIAQIDBAUIMF7QAQASTQA/FfG3MEYCIQD7A417/f3b1SiwINyvpwKCIGCfP67AX4uBNq2EyH7UeAIhAOC71fOkiaXyEWZoUox4SAIARbH1vpu8rGmvyZrwLmgNGgJlaYIBDAiMARCXjYClu4eQA4oBDAiPAxCkwZ+wvoeQA5oBZwongAEBigEQMi4yMDI1MDIyMi4xMC4wMJIBB1dpbmRvd3OaAQQxMC4wEjoiOIf/h/7vGWjzxJjzrNWq84/RzOOH0pXji8q87bC+ytO3xZXOtMSYzanSh866wJjGmM6uoszD2rS7MgA="
    custom0.decoded = ParseJson("{""client_abr_state"":{""last_manual_selected_resolution"":1080,""sticky_resolution"":1080,""bandwidth_estimate"":""9050000"",""playback_rate"":1,""enabled_track_types_bitfield"":2},""selected_format_ids"":[{""itag"":140,""last_modified"":""1759475037898391""}],""buffered_ranges"":[{""format_id"":{""itag"":140,""last_modified"":""1759475037898391""},""duration_ms"":""2147483647"",""start_segment_index"":2147483647,""end_segment_index"":2147483647,""time_range"":{""duration_ticks"":""2147483647"",""timescale"":1000}}],""video_playback_ustreamer_config"":""CuoICucFCAAlAACAPy0zM3M/NT0Klz9YAWgBchoKFm1mczJfY21mc193ZWJfdjNfMl8wMDMYAHiPTqABAagBALgCANoCmwEQsOoBGIDd2wEgoJwBKKCcATCYdXCIJ4AB9AO4AQHgAQOYAgzAAgHQAgLoAgSAAwKIA4gnqAMDwAMByAMBgAQB0AQB2AQB4AQA+AQHgAV9wAUByAUB4AXQD+gFAfgF0A+ABgGQBgG4BgHQBgHwBgH4BgGAB9APwAcB0AcBgAgBiAgBnQjNzEw+oAjoB+AIAegI////////////AfoCtQEtAACgQjUAAKpCZQAAgEBowHCoAdCGA/0BAACAP4UCmpkZP40CAACAP5UC+u1rO7UCAACAP8AC3wPSAhGw//////////8BHjxGWlxdXugC6AL9As3MzD2QAwGdAwrXIz2gAwHVAwAAekSYBAHVBAAAIEHoBPAQoAYBtQa9N4Y1vQYzM4NAwAcByAcB5QcAgAlE8AcBgAgBoQgAAAAAAADwv6kIAAAAAAAA8L+wCN8DuAoB+BABggMAkAMBqAMBsAMD0AMB2AMBygQcChMIwKkHEJh1GOgHJQAAAAAoADAAEODUAxjQD9IEDwoICLAJELAJIAEgiCcoAdoEDQoGCPAuEPAuIPAuKAHwBQGYBgGoBoCAAtIGFAjoBxBkGg0IiCcVAAAAPx3NzEw/2AYBiAcBuAcBoAgB0ggGCAEQARgBqQkAAAAAAADwv7EJAAAAAAAA8L/QCQHaCSRFN2t1UnNsQUU0KzVkS3c3UVh3MFNJMXl1UnhxbUd5SmxJRTjqCwSLBowGgAwBqAyQAcAMAcgMAdAMAYANAYgNAdgNAeANAYAOAYgOAZgOAYgPAcgPAdAPAegQAYARAZARAbIRFENBTVNDaFVQdWJiSkRQd0VzUVk96BEB4BIB8BIB+BIBuBMBwBMB8BMBkRQAAAAAAADwv5kUAAAAAAAA8L+wFAHKFACIp6HKCwEYATIMCIkBELjYiP6+h5ADMgwI+AEQ+aP4icGHkAMyDAiPAxCkwZ+wvoeQAzIMCIgBEKvBubm+h5ADMgwI9wEQsZf2rMKHkAMyDAiOAxDDvtG0voeQAzIMCIcBEPu4o7m+h5ADMgwI9AEQycf/q8KHkAMyDAiNAxCZnIqwvoeQAzIMCIYBEImKkfe+h5ADMgwI8wEQraSDrMKHkAMyDAiMAxD5wduyvoeQAzIMCIUBEMrfrra+h5ADMgwI8gEQlsK9rMKHkAMyDAiLAxD72bK0voeQAzIMCKABELmgkLi+h5ADMgwIlgIQoNjprMKHkAMyDAiKAxCj1OCyvoeQAzIMCIwBEJeNgKW7h5ADMgwI+QEQwIix/LuHkAMyDAj6ARCTzav8u4eQAzIMCPsBENTJrPy7h5ADOgBIAFIqGgJlbigBMhhVQ3Q4VXRXakpBa1VUdmZOdDRhdWZrYmc4AEAAWABgAHgAoAEBsAEFugEDBAUxwgEIAQIDBAUIMF7QAQASTQA/FfG3MEYCIQD7A417/f3b1SiwINyvpwKCIGCfP67AX4uBNq2EyH7UeAIhAOC71fOkiaXyEWZoUox4SAIARbH1vpu8rGmvyZrwLmgNGgJlaQ=="",""preferred_audio_format_ids"":[{""itag"":140,""last_modified"":""1759475037898391""}],""preferred_video_format_ids"":[{""itag"":399,""last_modified"":""1759475866788004""}],""streamer_context"":{""client_info"":{""client_name"":1,""client_version"":""2.20250222.10.00"",""os_name"":""Windows"",""os_version"":""10.0""},""po_token"":""IjiH/4f+7xlo88SY86zVqvOP0czjh9KV44vKvO2wvsrTt8WVzrTEmM2p0ofOusCYxpjOrqLMw9q0uw==""}}")
    data.customCases.Push(custom0)
    return data
end function
