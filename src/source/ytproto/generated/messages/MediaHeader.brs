' Auto-generated encoder/decoder for video_streaming.MediaHeader

function MediaHeaderEncode(message as Object) as String
    fieldMap = {}
    fieldMap["header_id"] = "headerId"
    fieldMap["video_id"] = "videoId"
    fieldMap["start_range"] = "startRange"
    fieldMap["compression_algorithm"] = "compressionAlgorithm"
    fieldMap["is_init_seg"] = "isInitSeg"
    fieldMap["sequence_number"] = "sequenceNumber"
    fieldMap["bitrate_bps"] = "bitrateBps"
    fieldMap["start_ms"] = "startMs"
    fieldMap["duration_ms"] = "durationMs"
    fieldMap["format_id"] = "formatId"
    fieldMap["content_length"] = "contentLength"
    fieldMap["time_range"] = "timeRange"
    fieldMap["sequence_lmt"] = "sequenceLmt"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_header_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("header_id") then
                field_header_id = message.Lookup("header_id")
            else if message.DoesExist("headerId") then
                field_header_id = message.Lookup("headerId")
            end if
        else
            field_header_id = message["header_id"]
            if field_header_id = invalid then
                field_header_id = message["headerId"]
            end if
        end if
    end if

    if field_header_id <> invalid then
        normalized = __pb_normalizeUnsigned32(field_header_id)
        __pb_writeVarint(bytes, 8)
        __pb_writeVarint64(bytes, normalized)
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
        __pb_writeVarint(bytes, 18)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_itag = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("itag") then
                field_itag = message.Lookup("itag")
            end if
        else
            field_itag = message["itag"]
        end if
    end if

    if field_itag <> invalid then
        normalized = __pb_normalizeSigned32(field_itag)
        __pb_writeVarint(bytes, 24)
        __pb_writeVarint(bytes, normalized)
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
        __pb_writeVarint(bytes, 32)
        __pb_writeVarint64(bytes, field_lmt)
    end if

    field_xtags = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("xtags") then
                field_xtags = message.Lookup("xtags")
            end if
        else
            field_xtags = message["xtags"]
        end if
    end if

    if field_xtags <> invalid then
        strValue = field_xtags
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 42)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_start_range = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("start_range") then
                field_start_range = message.Lookup("start_range")
            else if message.DoesExist("startRange") then
                field_start_range = message.Lookup("startRange")
            end if
        else
            field_start_range = message["start_range"]
            if field_start_range = invalid then
                field_start_range = message["startRange"]
            end if
        end if
    end if

    if field_start_range <> invalid then
        __pb_writeVarint(bytes, 48)
        __pb_writeVarint64(bytes, field_start_range)
    end if

    field_compression_algorithm = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("compression_algorithm") then
                field_compression_algorithm = message.Lookup("compression_algorithm")
            else if message.DoesExist("compressionAlgorithm") then
                field_compression_algorithm = message.Lookup("compressionAlgorithm")
            end if
        else
            field_compression_algorithm = message["compression_algorithm"]
            if field_compression_algorithm = invalid then
                field_compression_algorithm = message["compressionAlgorithm"]
            end if
        end if
    end if

    if field_compression_algorithm <> invalid then
        numericValue = MediaHeader_compression_algorithm_normalizeEnum(field_compression_algorithm)
        __pb_writeVarint(bytes, 56)
        __pb_writeVarint(bytes, numericValue)
    end if

    field_is_init_seg = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("is_init_seg") then
                field_is_init_seg = message.Lookup("is_init_seg")
            else if message.DoesExist("isInitSeg") then
                field_is_init_seg = message.Lookup("isInitSeg")
            end if
        else
            field_is_init_seg = message["is_init_seg"]
            if field_is_init_seg = invalid then
                field_is_init_seg = message["isInitSeg"]
            end if
        end if
    end if

    if field_is_init_seg <> invalid then
        boolValue = field_is_init_seg
        boolType = Type(boolValue)
        if boolType = "String" or boolType = "roString" then
            lower = LCase(boolValue)
            boolValue = (lower = "true") or (lower = "1")
        else if boolType = "Boolean" or boolType = "roBoolean" then
            ' keep as is
        else
            boolValue = (boolValue <> 0)
        end if
        boolInt = 0
        if boolValue = true then boolInt = 1
        __pb_writeVarint(bytes, 64)
        __pb_writeVarint(bytes, boolInt)
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
        __pb_writeVarint(bytes, 72)
        __pb_writeVarint(bytes, normalized)
    end if

    field_bitrate_bps = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("bitrate_bps") then
                field_bitrate_bps = message.Lookup("bitrate_bps")
            else if message.DoesExist("bitrateBps") then
                field_bitrate_bps = message.Lookup("bitrateBps")
            end if
        else
            field_bitrate_bps = message["bitrate_bps"]
            if field_bitrate_bps = invalid then
                field_bitrate_bps = message["bitrateBps"]
            end if
        end if
    end if

    if field_bitrate_bps <> invalid then
        __pb_writeVarint(bytes, 80)
        __pb_writeVarint64(bytes, field_bitrate_bps)
    end if

    field_start_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("start_ms") then
                field_start_ms = message.Lookup("start_ms")
            else if message.DoesExist("startMs") then
                field_start_ms = message.Lookup("startMs")
            end if
        else
            field_start_ms = message["start_ms"]
            if field_start_ms = invalid then
                field_start_ms = message["startMs"]
            end if
        end if
    end if

    if field_start_ms <> invalid then
        __pb_writeVarint(bytes, 88)
        __pb_writeVarint64(bytes, field_start_ms)
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
        __pb_writeVarint(bytes, 96)
        __pb_writeVarint64(bytes, field_duration_ms)
    end if

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
        __pb_writeVarint(bytes, 106)
        __pb_writeVarint(bytes, format_idChildBytes.Count())
        __pb_appendByteArray(bytes, format_idChildBytes)
    end if

    field_content_length = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("content_length") then
                field_content_length = message.Lookup("content_length")
            else if message.DoesExist("contentLength") then
                field_content_length = message.Lookup("contentLength")
            end if
        else
            field_content_length = message["content_length"]
            if field_content_length = invalid then
                field_content_length = message["contentLength"]
            end if
        end if
    end if

    if field_content_length <> invalid then
        __pb_writeVarint(bytes, 112)
        __pb_writeVarint64(bytes, field_content_length)
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
        __pb_writeVarint(bytes, 122)
        __pb_writeVarint(bytes, time_rangeChildBytes.Count())
        __pb_appendByteArray(bytes, time_rangeChildBytes)
    end if

    field_sequence_lmt = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sequence_lmt") then
                field_sequence_lmt = message.Lookup("sequence_lmt")
            else if message.DoesExist("sequenceLmt") then
                field_sequence_lmt = message.Lookup("sequenceLmt")
            end if
        else
            field_sequence_lmt = message["sequence_lmt"]
            if field_sequence_lmt = invalid then
                field_sequence_lmt = message["sequenceLmt"]
            end if
        end if
    end if

    if field_sequence_lmt <> invalid then
        __pb_writeVarint(bytes, 128)
        __pb_writeVarint64(bytes, field_sequence_lmt)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function MediaHeader_compression_algorithm_normalizeEnum(value as Dynamic) as Integer
    values = MediaHeader_compression_algorithm_getEnumValues()
    if value = invalid then return 0
    valueType = Type(value)
    if valueType = "String" or valueType = "roString" then
        upper = UCase(value)
        if values.DoesExist(upper) then
            return values[upper]
        end if
        return 0
    end if
    return Int(value)
end function

function MediaHeader_compression_algorithm_enumName(value as Integer) as Dynamic
    names = MediaHeader_compression_algorithm_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function MediaHeader_compression_algorithm_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "MediaHeader_compression_algorithm_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["BROTLI"] = 2
    table["GZIP"] = 1
    table["UNKNOWN"] = 0
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function MediaHeader_compression_algorithm_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "MediaHeader_compression_algorithm_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "UNKNOWN"
    table["1"] = "GZIP"
    table["2"] = "BROTLI"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function MediaHeaderDecode(encoded as String) as Object
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
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                header_idValue = __pb_toUnsigned32(valueResult.value)
                message["headerId"] = header_idValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
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
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                itagValue = __pb_toSigned32FromString(valueResult.value)
                message["itag"] = itagValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                lmtValue = valueResult.value
                message["lmt"] = lmtValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                xtagsValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["xtags"] = xtagsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 6 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                start_rangeValue = __pb_toSignedInt64String(valueResult.value)
                message["startRange"] = start_rangeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 7 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                compression_algorithmEnumValue = MediaHeader_compression_algorithm_enumName(numericValue)
                message["compressionAlgorithm"] = compression_algorithmEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 8 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                is_init_segValue = (valueResult.value <> 0)
                message["isInitSeg"] = is_init_segValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 9 then
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
        else if fieldNumber = 10 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                bitrate_bpsValue = __pb_toSignedInt64String(valueResult.value)
                message["bitrateBps"] = bitrate_bpsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 11 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                start_msValue = __pb_toSignedInt64String(valueResult.value)
                message["startMs"] = start_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 12 then
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
        else if fieldNumber = 13 then
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
        else if fieldNumber = 14 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                content_lengthValue = __pb_toSignedInt64String(valueResult.value)
                message["contentLength"] = content_lengthValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 15 then
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
        else if fieldNumber = 16 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                sequence_lmtValue = valueResult.value
                message["sequenceLmt"] = sequence_lmtValue
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
