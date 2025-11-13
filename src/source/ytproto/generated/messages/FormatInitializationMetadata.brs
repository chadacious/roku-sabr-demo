' Auto-generated encoder/decoder for video_streaming.FormatInitializationMetadata
import "pkg:/source/ytproto/generated/messages/FormatId.brs"
import "pkg:/source/ytproto/generated/messages/Range.brs"
import "pkg:/source/ytproto/generated/messages/TimeRange.brs"

function FormatInitializationMetadataEncode(message as Object) as String
    fieldMap = {}
    fieldMap["video_id"] = "videoId"
    fieldMap["format_id"] = "formatId"
    fieldMap["end_time_ms"] = "endTimeMs"
    fieldMap["end_segment_number"] = "endSegmentNumber"
    fieldMap["mime_type"] = "mimeType"
    fieldMap["init_range"] = "initRange"
    fieldMap["index_range"] = "indexRange"
    fieldMap["duration_units"] = "durationUnits"
    fieldMap["duration_timescale"] = "durationTimescale"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
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
        if not __pb_scalarEqualsDefault(field_video_id, "string", "") then
            strValue = field_video_id
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end if
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
        __pb_writeVarint(bytes, 18)
        __pb_writeVarint(bytes, format_idChildBytes.Count())
        __pb_appendByteArray(bytes, format_idChildBytes)
    end if

    field_end_time_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("end_time_ms") then
                field_end_time_ms = message.Lookup("end_time_ms")
            else if message.DoesExist("endTimeMs") then
                field_end_time_ms = message.Lookup("endTimeMs")
            end if
        else
            field_end_time_ms = message["end_time_ms"]
            if field_end_time_ms = invalid then
                field_end_time_ms = message["endTimeMs"]
            end if
        end if
    end if

    if field_end_time_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_end_time_ms, "int64", "0") then
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint64(bytes, field_end_time_ms)
        end if
    end if

    field_end_segment_number = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("end_segment_number") then
                field_end_segment_number = message.Lookup("end_segment_number")
            else if message.DoesExist("endSegmentNumber") then
                field_end_segment_number = message.Lookup("endSegmentNumber")
            end if
        else
            field_end_segment_number = message["end_segment_number"]
            if field_end_segment_number = invalid then
                field_end_segment_number = message["endSegmentNumber"]
            end if
        end if
    end if

    if field_end_segment_number <> invalid then
        if not __pb_scalarEqualsDefault(field_end_segment_number, "int64", "0") then
            __pb_writeVarint(bytes, 32)
            __pb_writeVarint64(bytes, field_end_segment_number)
        end if
    end if

    field_mime_type = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("mime_type") then
                field_mime_type = message.Lookup("mime_type")
            else if message.DoesExist("mimeType") then
                field_mime_type = message.Lookup("mimeType")
            end if
        else
            field_mime_type = message["mime_type"]
            if field_mime_type = invalid then
                field_mime_type = message["mimeType"]
            end if
        end if
    end if

    if field_mime_type <> invalid then
        if not __pb_scalarEqualsDefault(field_mime_type, "string", "") then
            strValue = field_mime_type
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
    end if

    field_init_range = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("init_range") then
                field_init_range = message.Lookup("init_range")
            else if message.DoesExist("initRange") then
                field_init_range = message.Lookup("initRange")
            end if
        else
            field_init_range = message["init_range"]
            if field_init_range = invalid then
                field_init_range = message["initRange"]
            end if
        end if
    end if

    if field_init_range <> invalid then
        init_rangeEncoded = RangeEncode(field_init_range)
        init_rangeChildBytes = __pb_fromBase64(init_rangeEncoded)
        __pb_writeVarint(bytes, 50)
        __pb_writeVarint(bytes, init_rangeChildBytes.Count())
        __pb_appendByteArray(bytes, init_rangeChildBytes)
    end if

    field_index_range = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("index_range") then
                field_index_range = message.Lookup("index_range")
            else if message.DoesExist("indexRange") then
                field_index_range = message.Lookup("indexRange")
            end if
        else
            field_index_range = message["index_range"]
            if field_index_range = invalid then
                field_index_range = message["indexRange"]
            end if
        end if
    end if

    if field_index_range <> invalid then
        index_rangeEncoded = RangeEncode(field_index_range)
        index_rangeChildBytes = __pb_fromBase64(index_rangeEncoded)
        __pb_writeVarint(bytes, 58)
        __pb_writeVarint(bytes, index_rangeChildBytes.Count())
        __pb_appendByteArray(bytes, index_rangeChildBytes)
    end if

    field_field8 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field8") then
                field_field8 = message.Lookup("field8")
            end if
        else
            field_field8 = message["field8"]
        end if
    end if

    if field_field8 <> invalid then
        if not __pb_scalarEqualsDefault(field_field8, "int64", "0") then
            __pb_writeVarint(bytes, 64)
            __pb_writeVarint64(bytes, field_field8)
        end if
    end if

    field_duration_units = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("duration_units") then
                field_duration_units = message.Lookup("duration_units")
            else if message.DoesExist("durationUnits") then
                field_duration_units = message.Lookup("durationUnits")
            end if
        else
            field_duration_units = message["duration_units"]
            if field_duration_units = invalid then
                field_duration_units = message["durationUnits"]
            end if
        end if
    end if

    if field_duration_units <> invalid then
        if not __pb_scalarEqualsDefault(field_duration_units, "int64", "0") then
            __pb_writeVarint(bytes, 72)
            __pb_writeVarint64(bytes, field_duration_units)
        end if
    end if

    field_duration_timescale = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("duration_timescale") then
                field_duration_timescale = message.Lookup("duration_timescale")
            else if message.DoesExist("durationTimescale") then
                field_duration_timescale = message.Lookup("durationTimescale")
            end if
        else
            field_duration_timescale = message["duration_timescale"]
            if field_duration_timescale = invalid then
                field_duration_timescale = message["durationTimescale"]
            end if
        end if
    end if

    if field_duration_timescale <> invalid then
        if not __pb_scalarEqualsDefault(field_duration_timescale, "int64", "0") then
            __pb_writeVarint(bytes, 80)
            __pb_writeVarint64(bytes, field_duration_timescale)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function FormatInitializationMetadataDecode(encoded as String) as Object
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
                strLength = lengthResult.value
                video_idValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["videoId"] = video_idValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
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
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                end_time_msValue = __pb_toSignedInt64String(valueResult.value)
                message["endTimeMs"] = end_time_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                end_segment_numberValue = __pb_toSignedInt64String(valueResult.value)
                message["endSegmentNumber"] = end_segment_numberValue
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
                mime_typeValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["mimeType"] = mime_typeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 6 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                init_rangeLength = lengthResult.value
                init_rangeChildBytes = __pb_readBytes(bytes, cursor, init_rangeLength)
                cursor = cursor + init_rangeLength
                init_rangeChild = __pb_byteArrayToBase64(init_rangeChildBytes)
                init_rangeDecoded = RangeDecode(init_rangeChild)
                message["initRange"] = init_rangeDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 7 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                index_rangeLength = lengthResult.value
                index_rangeChildBytes = __pb_readBytes(bytes, cursor, index_rangeLength)
                cursor = cursor + index_rangeLength
                index_rangeChild = __pb_byteArrayToBase64(index_rangeChildBytes)
                index_rangeDecoded = RangeDecode(index_rangeChild)
                message["indexRange"] = index_rangeDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 8 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field8Value = __pb_toSignedInt64String(valueResult.value)
                message["field8"] = field8Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 9 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                duration_unitsValue = __pb_toSignedInt64String(valueResult.value)
                message["durationUnits"] = duration_unitsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 10 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                duration_timescaleValue = __pb_toSignedInt64String(valueResult.value)
                message["durationTimescale"] = duration_timescaleValue
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
    if message.DoesExist("videoId") = false then
        video_idDefaultValue = ""
        message["videoId"] = video_idDefaultValue
    end if
    if message.DoesExist("endTimeMs") = false then
        end_time_msDefaultValue = __pb_toSignedInt64String("0")
        message["endTimeMs"] = end_time_msDefaultValue
    end if
    if message.DoesExist("endSegmentNumber") = false then
        end_segment_numberDefaultValue = __pb_toSignedInt64String("0")
        message["endSegmentNumber"] = end_segment_numberDefaultValue
    end if
    if message.DoesExist("mimeType") = false then
        mime_typeDefaultValue = ""
        message["mimeType"] = mime_typeDefaultValue
    end if
    if message.DoesExist("field8") = false then
        field8DefaultValue = __pb_toSignedInt64String("0")
        message["field8"] = field8DefaultValue
    end if
    if message.DoesExist("durationUnits") = false then
        duration_unitsDefaultValue = __pb_toSignedInt64String("0")
        message["durationUnits"] = duration_unitsDefaultValue
    end if
    if message.DoesExist("durationTimescale") = false then
        duration_timescaleDefaultValue = __pb_toSignedInt64String("0")
        message["durationTimescale"] = duration_timescaleDefaultValue
    end if
    return message
end function
