' Auto-generated encoder/decoder for video_streaming.NextRequestPolicy

function NextRequestPolicyEncode(message as Object) as String
    fieldMap = {}
    fieldMap["target_audio_readahead_ms"] = "targetAudioReadaheadMs"
    fieldMap["target_video_readahead_ms"] = "targetVideoReadaheadMs"
    fieldMap["max_time_since_last_request_ms"] = "maxTimeSinceLastRequestMs"
    fieldMap["backoff_time_ms"] = "backoffTimeMs"
    fieldMap["min_audio_readahead_ms"] = "minAudioReadaheadMs"
    fieldMap["min_video_readahead_ms"] = "minVideoReadaheadMs"
    fieldMap["playback_cookie"] = "playbackCookie"
    fieldMap["video_id"] = "videoId"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_target_audio_readahead_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("target_audio_readahead_ms") then
                field_target_audio_readahead_ms = message.Lookup("target_audio_readahead_ms")
            else if message.DoesExist("targetAudioReadaheadMs") then
                field_target_audio_readahead_ms = message.Lookup("targetAudioReadaheadMs")
            end if
        else
            field_target_audio_readahead_ms = message["target_audio_readahead_ms"]
            if field_target_audio_readahead_ms = invalid then
                field_target_audio_readahead_ms = message["targetAudioReadaheadMs"]
            end if
        end if
    end if

    if field_target_audio_readahead_ms <> invalid then
        normalized = __pb_normalizeSigned32(field_target_audio_readahead_ms)
        __pb_writeVarint(bytes, 8)
        __pb_writeVarint(bytes, normalized)
    end if

    field_target_video_readahead_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("target_video_readahead_ms") then
                field_target_video_readahead_ms = message.Lookup("target_video_readahead_ms")
            else if message.DoesExist("targetVideoReadaheadMs") then
                field_target_video_readahead_ms = message.Lookup("targetVideoReadaheadMs")
            end if
        else
            field_target_video_readahead_ms = message["target_video_readahead_ms"]
            if field_target_video_readahead_ms = invalid then
                field_target_video_readahead_ms = message["targetVideoReadaheadMs"]
            end if
        end if
    end if

    if field_target_video_readahead_ms <> invalid then
        normalized = __pb_normalizeSigned32(field_target_video_readahead_ms)
        __pb_writeVarint(bytes, 16)
        __pb_writeVarint(bytes, normalized)
    end if

    field_max_time_since_last_request_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_time_since_last_request_ms") then
                field_max_time_since_last_request_ms = message.Lookup("max_time_since_last_request_ms")
            else if message.DoesExist("maxTimeSinceLastRequestMs") then
                field_max_time_since_last_request_ms = message.Lookup("maxTimeSinceLastRequestMs")
            end if
        else
            field_max_time_since_last_request_ms = message["max_time_since_last_request_ms"]
            if field_max_time_since_last_request_ms = invalid then
                field_max_time_since_last_request_ms = message["maxTimeSinceLastRequestMs"]
            end if
        end if
    end if

    if field_max_time_since_last_request_ms <> invalid then
        normalized = __pb_normalizeSigned32(field_max_time_since_last_request_ms)
        __pb_writeVarint(bytes, 24)
        __pb_writeVarint(bytes, normalized)
    end if

    field_backoff_time_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("backoff_time_ms") then
                field_backoff_time_ms = message.Lookup("backoff_time_ms")
            else if message.DoesExist("backoffTimeMs") then
                field_backoff_time_ms = message.Lookup("backoffTimeMs")
            end if
        else
            field_backoff_time_ms = message["backoff_time_ms"]
            if field_backoff_time_ms = invalid then
                field_backoff_time_ms = message["backoffTimeMs"]
            end if
        end if
    end if

    if field_backoff_time_ms <> invalid then
        normalized = __pb_normalizeSigned32(field_backoff_time_ms)
        __pb_writeVarint(bytes, 32)
        __pb_writeVarint(bytes, normalized)
    end if

    field_min_audio_readahead_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("min_audio_readahead_ms") then
                field_min_audio_readahead_ms = message.Lookup("min_audio_readahead_ms")
            else if message.DoesExist("minAudioReadaheadMs") then
                field_min_audio_readahead_ms = message.Lookup("minAudioReadaheadMs")
            end if
        else
            field_min_audio_readahead_ms = message["min_audio_readahead_ms"]
            if field_min_audio_readahead_ms = invalid then
                field_min_audio_readahead_ms = message["minAudioReadaheadMs"]
            end if
        end if
    end if

    if field_min_audio_readahead_ms <> invalid then
        normalized = __pb_normalizeSigned32(field_min_audio_readahead_ms)
        __pb_writeVarint(bytes, 40)
        __pb_writeVarint(bytes, normalized)
    end if

    field_min_video_readahead_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("min_video_readahead_ms") then
                field_min_video_readahead_ms = message.Lookup("min_video_readahead_ms")
            else if message.DoesExist("minVideoReadaheadMs") then
                field_min_video_readahead_ms = message.Lookup("minVideoReadaheadMs")
            end if
        else
            field_min_video_readahead_ms = message["min_video_readahead_ms"]
            if field_min_video_readahead_ms = invalid then
                field_min_video_readahead_ms = message["minVideoReadaheadMs"]
            end if
        end if
    end if

    if field_min_video_readahead_ms <> invalid then
        normalized = __pb_normalizeSigned32(field_min_video_readahead_ms)
        __pb_writeVarint(bytes, 48)
        __pb_writeVarint(bytes, normalized)
    end if

    field_playback_cookie = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("playback_cookie") then
                field_playback_cookie = message.Lookup("playback_cookie")
            else if message.DoesExist("playbackCookie") then
                field_playback_cookie = message.Lookup("playbackCookie")
            end if
        else
            field_playback_cookie = message["playback_cookie"]
            if field_playback_cookie = invalid then
                field_playback_cookie = message["playbackCookie"]
            end if
        end if
    end if

    if field_playback_cookie <> invalid then
        playback_cookieEncoded = PlaybackCookieEncode(field_playback_cookie)
        playback_cookieChildBytes = __pb_fromBase64(playback_cookieEncoded)
        __pb_writeVarint(bytes, 58)
        __pb_writeVarint(bytes, playback_cookieChildBytes.Count())
        __pb_appendByteArray(bytes, playback_cookieChildBytes)
    end if

    field_video_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("video_id") then
                field_video_id = message.Lookup("video_id")
            else if message.DoesExist("videoId") then
                field_video_id = message.Lookup("videoId")
            end if
        else
            field_video_id = message["video_id"]
            if field_video_id = invalid then
                field_video_id = message["videoId"]
            end if
        end if
    end if

    if field_video_id <> invalid then
        strValue = field_video_id
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 66)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function NextRequestPolicyDecode(encoded as String) as Object
    bytes = __pb_fromBase64(encoded)
    cursor = 0
    limit = bytes.Count()
    message = {}
    while cursor < limit
        tagStart = cursor
        tagResult = __pb_readVarint(bytes, cursor)
        cursor = tagResult.nextIndex
        fieldNumber = Int(tagResult.value / 8)
        wireType = tagResult.value AND &h07
        if fieldNumber = 1 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                target_audio_readahead_msValue = __pb_toSigned32FromString(valueResult.value)
                message["targetAudioReadaheadMs"] = target_audio_readahead_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                target_video_readahead_msValue = __pb_toSigned32FromString(valueResult.value)
                message["targetVideoReadaheadMs"] = target_video_readahead_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_time_since_last_request_msValue = __pb_toSigned32FromString(valueResult.value)
                message["maxTimeSinceLastRequestMs"] = max_time_since_last_request_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                backoff_time_msValue = __pb_toSigned32FromString(valueResult.value)
                message["backoffTimeMs"] = backoff_time_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                min_audio_readahead_msValue = __pb_toSigned32FromString(valueResult.value)
                message["minAudioReadaheadMs"] = min_audio_readahead_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 6 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                min_video_readahead_msValue = __pb_toSigned32FromString(valueResult.value)
                message["minVideoReadaheadMs"] = min_video_readahead_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 7 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                playback_cookieLength = lengthResult.value
                playback_cookieChildBytes = __pb_readBytes(bytes, cursor, playback_cookieLength)
                cursor = cursor + playback_cookieLength
                playback_cookieChild = __pb_byteArrayToBase64(playback_cookieChildBytes)
                playback_cookieDecoded = PlaybackCookieDecode(playback_cookieChild)
                message["playbackCookie"] = playback_cookieDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 8 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                video_idValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["videoId"] = video_idValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else
            nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
            if nextIndex <= tagStart then exit while
            cursor = nextIndex
        end if
    end while
    return message
end function
