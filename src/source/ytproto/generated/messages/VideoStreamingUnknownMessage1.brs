' Auto-generated encoder/decoder for video_streaming.UnknownMessage1

function VideoStreamingUnknownMessage1Encode(message as Object) as String
    fieldMap = {}
    fieldMap["format_id"] = "formatId"
    fieldMap["sequence_number"] = "sequenceNumber"
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

    field_lmt = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("lmt") then
                field_lmt = message.Lookup("lmt")
            end if
        else
            field_lmt = message["lmt"]
        end if
    end if

    if field_lmt <> invalid then
        encoded = __pb_encodeZigZag64(field_lmt)
        __pb_writeVarint(bytes, 16)
        __pb_writeVarint64(bytes, encoded)
    end if

    field_sequence_number = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sequence_number") then
                field_sequence_number = message.Lookup("sequence_number")
            else if message.DoesExist("sequenceNumber") then
                field_sequence_number = message.Lookup("sequenceNumber")
            end if
        else
            field_sequence_number = message["sequence_number"]
            if field_sequence_number = invalid then
                field_sequence_number = message["sequenceNumber"]
            end if
        end if
    end if

    if field_sequence_number <> invalid then
        normalized = __pb_normalizeSigned32(field_sequence_number)
        __pb_writeVarint(bytes, 24)
        __pb_writeVarint(bytes, normalized)
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
        __pb_writeVarint(bytes, 34)
        __pb_writeVarint(bytes, time_rangeChildBytes.Count())
        __pb_appendByteArray(bytes, time_rangeChildBytes)
    end if

    field_field5 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field5") then
                field_field5 = message.Lookup("field5")
            end if
        else
            field_field5 = message["field5"]
        end if
    end if

    if field_field5 <> invalid then
        normalized = __pb_normalizeSigned32(field_field5)
        __pb_writeVarint(bytes, 40)
        __pb_writeVarint(bytes, normalized)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function VideoStreamingUnknownMessage1Decode(encoded as String) as Object
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
                lmtValue = __pb_decodeZigZag64(valueResult.value)
                message["lmt"] = lmtValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                sequence_numberValue = __pb_toSigned32FromString(valueResult.value)
                message["sequenceNumber"] = sequence_numberValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
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
        else if fieldNumber = 5 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field5Value = __pb_toSigned32FromString(valueResult.value)
                message["field5"] = field5Value
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
