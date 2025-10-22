' Auto-generated encoder/decoder for video_streaming.SabrContextValue.TimingInfo

function TimingInfoEncode(message as Object) as String
    fieldMap = {}
    fieldMap["timestamp_ms"] = "timestampMs"
    fieldMap["duration_ms"] = "durationMs"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_timestamp_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("timestamp_ms") then
                field_timestamp_ms = message.Lookup("timestamp_ms")
            else if message.DoesExist("timestampMs") then
                field_timestamp_ms = message.Lookup("timestampMs")
            end if
        else
            field_timestamp_ms = message["timestamp_ms"]
            if field_timestamp_ms = invalid then
                field_timestamp_ms = message["timestampMs"]
            end if
        end if
    end if

    if field_timestamp_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_timestamp_ms, "int64", "0") then
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint64(bytes, field_timestamp_ms)
        end if
    end if

    field_duration_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("duration_ms") then
                field_duration_ms = message.Lookup("duration_ms")
            else if message.DoesExist("durationMs") then
                field_duration_ms = message.Lookup("durationMs")
            end if
        else
            field_duration_ms = message["duration_ms"]
            if field_duration_ms = invalid then
                field_duration_ms = message["durationMs"]
            end if
        end if
    end if

    if field_duration_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_duration_ms, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_duration_ms)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_content = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("content") then
                field_content = message.Lookup("content")
            end if
        else
            field_content = message["content"]
        end if
    end if

    if field_content <> invalid then
        contentEncoded = ContentInfoEncode(field_content)
        contentChildBytes = __pb_fromBase64(contentEncoded)
        __pb_writeVarint(bytes, 26)
        __pb_writeVarint(bytes, contentChildBytes.Count())
        __pb_appendByteArray(bytes, contentChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function TimingInfoDecode(encoded as String) as Object
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
                timestamp_msValue = __pb_toSignedInt64String(valueResult.value)
                message["timestampMs"] = timestamp_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                duration_msValue = __pb_toSigned32FromString(valueResult.value)
                message["durationMs"] = duration_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                contentLength = lengthResult.value
                contentChildBytes = __pb_readBytes(bytes, cursor, contentLength)
                cursor = cursor + contentLength
                contentChild = __pb_byteArrayToBase64(contentChildBytes)
                contentDecoded = ContentInfoDecode(contentChild)
                message["content"] = contentDecoded
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
    if message.DoesExist("timestampMs") = false then
        timestamp_msDefaultValue = __pb_toSignedInt64String("0")
        message["timestampMs"] = timestamp_msDefaultValue
    end if
    if message.DoesExist("durationMs") = false then
        duration_msDefaultValue = 0
        message["durationMs"] = duration_msDefaultValue
    end if
    return message
end function
