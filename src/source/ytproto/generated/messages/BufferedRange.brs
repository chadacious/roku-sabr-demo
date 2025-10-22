' Auto-generated encoder/decoder for video_streaming.BufferedRange

function BufferedRangeEncode(message as Object) as String
    fieldMap = {}
    fieldMap["format_id"] = "formatId"
    fieldMap["start_time_ms"] = "startTimeMs"
    fieldMap["duration_ms"] = "durationMs"
    fieldMap["start_segment_index"] = "startSegmentIndex"
    fieldMap["end_segment_index"] = "endSegmentIndex"
    fieldMap["time_range"] = "timeRange"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_format_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("format_id") then
                field_format_id = message.Lookup("format_id")
            else if message.DoesExist("formatId") then
                field_format_id = message.Lookup("formatId")
            end if
        else
            field_format_id = message["format_id"]
            if field_format_id = invalid then
                field_format_id = message["formatId"]
            end if
        end if
    end if

    if field_format_id <> invalid then
        format_idEncoded = FormatIdEncode(field_format_id)
        format_idChildBytes = __pb_fromBase64(format_idEncoded)
        __pb_writeVarint(bytes, 10)
        __pb_writeVarint(bytes, format_idChildBytes.Count())
        __pb_appendByteArray(bytes, format_idChildBytes)
    end if

    field_start_time_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("start_time_ms") then
                field_start_time_ms = message.Lookup("start_time_ms")
            else if message.DoesExist("startTimeMs") then
                field_start_time_ms = message.Lookup("startTimeMs")
            end if
        else
            field_start_time_ms = message["start_time_ms"]
            if field_start_time_ms = invalid then
                field_start_time_ms = message["startTimeMs"]
            end if
        end if
    end if

    if field_start_time_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_start_time_ms, "int64", "0") then
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint64(bytes, field_start_time_ms)
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
        if not __pb_scalarEqualsDefault(field_duration_ms, "int64", "0") then
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint64(bytes, field_duration_ms)
        end if
    end if

    field_start_segment_index = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("start_segment_index") then
                field_start_segment_index = message.Lookup("start_segment_index")
            else if message.DoesExist("startSegmentIndex") then
                field_start_segment_index = message.Lookup("startSegmentIndex")
            end if
        else
            field_start_segment_index = message["start_segment_index"]
            if field_start_segment_index = invalid then
                field_start_segment_index = message["startSegmentIndex"]
            end if
        end if
    end if

    if field_start_segment_index <> invalid then
        if not __pb_scalarEqualsDefault(field_start_segment_index, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_start_segment_index)
            __pb_writeVarint(bytes, 32)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_end_segment_index = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("end_segment_index") then
                field_end_segment_index = message.Lookup("end_segment_index")
            else if message.DoesExist("endSegmentIndex") then
                field_end_segment_index = message.Lookup("endSegmentIndex")
            end if
        else
            field_end_segment_index = message["end_segment_index"]
            if field_end_segment_index = invalid then
                field_end_segment_index = message["endSegmentIndex"]
            end if
        end if
    end if

    if field_end_segment_index <> invalid then
        if not __pb_scalarEqualsDefault(field_end_segment_index, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_end_segment_index)
            __pb_writeVarint(bytes, 40)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_time_range = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("time_range") then
                field_time_range = message.Lookup("time_range")
            else if message.DoesExist("timeRange") then
                field_time_range = message.Lookup("timeRange")
            end if
        else
            field_time_range = message["time_range"]
            if field_time_range = invalid then
                field_time_range = message["timeRange"]
            end if
        end if
    end if

    if field_time_range <> invalid then
        time_rangeEncoded = TimeRangeEncode(field_time_range)
        time_rangeChildBytes = __pb_fromBase64(time_rangeEncoded)
        __pb_writeVarint(bytes, 50)
        __pb_writeVarint(bytes, time_rangeChildBytes.Count())
        __pb_appendByteArray(bytes, time_rangeChildBytes)
    end if

    field_field9 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field9") then
                field_field9 = message.Lookup("field9")
            end if
        else
            field_field9 = message["field9"]
        end if
    end if

    if field_field9 <> invalid then
        field9Encoded = VideoStreamingBufferedRangeUnknownMessage1Encode(field_field9)
        field9ChildBytes = __pb_fromBase64(field9Encoded)
        __pb_writeVarint(bytes, 74)
        __pb_writeVarint(bytes, field9ChildBytes.Count())
        __pb_appendByteArray(bytes, field9ChildBytes)
    end if

    field_field11 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field11") then
                field_field11 = message.Lookup("field11")
            end if
        else
            field_field11 = message["field11"]
        end if
    end if

    if field_field11 <> invalid then
        field11Encoded = VideoStreamingBufferedRangeUnknownMessage2Encode(field_field11)
        field11ChildBytes = __pb_fromBase64(field11Encoded)
        __pb_writeVarint(bytes, 90)
        __pb_writeVarint(bytes, field11ChildBytes.Count())
        __pb_appendByteArray(bytes, field11ChildBytes)
    end if

    field_field12 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field12") then
                field_field12 = message.Lookup("field12")
            end if
        else
            field_field12 = message["field12"]
        end if
    end if

    if field_field12 <> invalid then
        field12Encoded = VideoStreamingBufferedRangeUnknownMessage2Encode(field_field12)
        field12ChildBytes = __pb_fromBase64(field12Encoded)
        __pb_writeVarint(bytes, 98)
        __pb_writeVarint(bytes, field12ChildBytes.Count())
        __pb_appendByteArray(bytes, field12ChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function BufferedRangeDecode(encoded as String) as Object
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
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                format_idLength = lengthResult.value
                format_idChildBytes = __pb_readBytes(bytes, cursor, format_idLength)
                cursor = cursor + format_idLength
                format_idChild = __pb_byteArrayToBase64(format_idChildBytes)
                format_idDecoded = FormatIdDecode(format_idChild)
                message["formatId"] = format_idDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                start_time_msValue = __pb_toSignedInt64String(valueResult.value)
                message["startTimeMs"] = start_time_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                duration_msValue = __pb_toSignedInt64String(valueResult.value)
                message["durationMs"] = duration_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                start_segment_indexValue = __pb_toSigned32FromString(valueResult.value)
                message["startSegmentIndex"] = start_segment_indexValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                end_segment_indexValue = __pb_toSigned32FromString(valueResult.value)
                message["endSegmentIndex"] = end_segment_indexValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 6 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                time_rangeLength = lengthResult.value
                time_rangeChildBytes = __pb_readBytes(bytes, cursor, time_rangeLength)
                cursor = cursor + time_rangeLength
                time_rangeChild = __pb_byteArrayToBase64(time_rangeChildBytes)
                time_rangeDecoded = TimeRangeDecode(time_rangeChild)
                message["timeRange"] = time_rangeDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 9 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field9Length = lengthResult.value
                field9ChildBytes = __pb_readBytes(bytes, cursor, field9Length)
                cursor = cursor + field9Length
                field9Child = __pb_byteArrayToBase64(field9ChildBytes)
                field9Decoded = VideoStreamingBufferedRangeUnknownMessage1Decode(field9Child)
                message["field9"] = field9Decoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 11 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field11Length = lengthResult.value
                field11ChildBytes = __pb_readBytes(bytes, cursor, field11Length)
                cursor = cursor + field11Length
                field11Child = __pb_byteArrayToBase64(field11ChildBytes)
                field11Decoded = VideoStreamingBufferedRangeUnknownMessage2Decode(field11Child)
                message["field11"] = field11Decoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 12 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field12Length = lengthResult.value
                field12ChildBytes = __pb_readBytes(bytes, cursor, field12Length)
                cursor = cursor + field12Length
                field12Child = __pb_byteArrayToBase64(field12ChildBytes)
                field12Decoded = VideoStreamingBufferedRangeUnknownMessage2Decode(field12Child)
                message["field12"] = field12Decoded
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
    if message.DoesExist("startTimeMs") = false then
        start_time_msDefaultValue = __pb_toSignedInt64String("0")
        message["startTimeMs"] = start_time_msDefaultValue
    end if
    if message.DoesExist("durationMs") = false then
        duration_msDefaultValue = __pb_toSignedInt64String("0")
        message["durationMs"] = duration_msDefaultValue
    end if
    if message.DoesExist("startSegmentIndex") = false then
        start_segment_indexDefaultValue = 0
        message["startSegmentIndex"] = start_segment_indexDefaultValue
    end if
    if message.DoesExist("endSegmentIndex") = false then
        end_segment_indexDefaultValue = 0
        message["endSegmentIndex"] = end_segment_indexDefaultValue
    end if
    return message
end function
