' Auto-generated encoder/decoder for video_streaming.PlaybackStartPolicy.ReadaheadPolicy

function ReadaheadPolicyEncode(message as Object) as String
    fieldMap = {}
    fieldMap["min_readahead_ms"] = "minReadaheadMs"
    fieldMap["min_bandwidth_bytes_per_sec"] = "minBandwidthBytesPerSec"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_min_readahead_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("min_readahead_ms") then
                field_min_readahead_ms = message.Lookup("min_readahead_ms")
            else if message.DoesExist("minReadaheadMs") then
                field_min_readahead_ms = message.Lookup("minReadaheadMs")
            end if
        else
            field_min_readahead_ms = message["min_readahead_ms"]
            if field_min_readahead_ms = invalid then
                field_min_readahead_ms = message["minReadaheadMs"]
            end if
        end if
    end if

    if field_min_readahead_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_min_readahead_ms, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_min_readahead_ms)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_min_bandwidth_bytes_per_sec = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("min_bandwidth_bytes_per_sec") then
                field_min_bandwidth_bytes_per_sec = message.Lookup("min_bandwidth_bytes_per_sec")
            else if message.DoesExist("minBandwidthBytesPerSec") then
                field_min_bandwidth_bytes_per_sec = message.Lookup("minBandwidthBytesPerSec")
            end if
        else
            field_min_bandwidth_bytes_per_sec = message["min_bandwidth_bytes_per_sec"]
            if field_min_bandwidth_bytes_per_sec = invalid then
                field_min_bandwidth_bytes_per_sec = message["minBandwidthBytesPerSec"]
            end if
        end if
    end if

    if field_min_bandwidth_bytes_per_sec <> invalid then
        if not __pb_scalarEqualsDefault(field_min_bandwidth_bytes_per_sec, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_min_bandwidth_bytes_per_sec)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function ReadaheadPolicyDecode(encoded as String) as Object
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
        if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                min_readahead_msValue = __pb_toSigned32FromString(valueResult.value)
                message["minReadaheadMs"] = min_readahead_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 1 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                min_bandwidth_bytes_per_secValue = __pb_toSigned32FromString(valueResult.value)
                message["minBandwidthBytesPerSec"] = min_bandwidth_bytes_per_secValue
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
    if message.DoesExist("minReadaheadMs") = false then
        min_readahead_msDefaultValue = 0
        message["minReadaheadMs"] = min_readahead_msDefaultValue
    end if
    if message.DoesExist("minBandwidthBytesPerSec") = false then
        min_bandwidth_bytes_per_secDefaultValue = 0
        message["minBandwidthBytesPerSec"] = min_bandwidth_bytes_per_secDefaultValue
    end if
    return message
end function
