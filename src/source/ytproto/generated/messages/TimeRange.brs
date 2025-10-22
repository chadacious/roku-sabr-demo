' Auto-generated encoder/decoder for video_streaming.TimeRange

function TimeRangeEncode(message as Object) as String
    fieldMap = {}
    fieldMap["start_ticks"] = "startTicks"
    fieldMap["duration_ticks"] = "durationTicks"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_start_ticks = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("start_ticks") then
                field_start_ticks = message.Lookup("start_ticks")
            else if message.DoesExist("startTicks") then
                field_start_ticks = message.Lookup("startTicks")
            end if
        else
            field_start_ticks = message["start_ticks"]
            if field_start_ticks = invalid then
                field_start_ticks = message["startTicks"]
            end if
        end if
    end if

    if field_start_ticks <> invalid then
        if not __pb_scalarEqualsDefault(field_start_ticks, "int64", "0") then
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint64(bytes, field_start_ticks)
        end if
    end if

    field_duration_ticks = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("duration_ticks") then
                field_duration_ticks = message.Lookup("duration_ticks")
            else if message.DoesExist("durationTicks") then
                field_duration_ticks = message.Lookup("durationTicks")
            end if
        else
            field_duration_ticks = message["duration_ticks"]
            if field_duration_ticks = invalid then
                field_duration_ticks = message["durationTicks"]
            end if
        end if
    end if

    if field_duration_ticks <> invalid then
        if not __pb_scalarEqualsDefault(field_duration_ticks, "int64", "0") then
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint64(bytes, field_duration_ticks)
        end if
    end if

    field_timescale = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("timescale") then
                field_timescale = message.Lookup("timescale")
            end if
        else
            field_timescale = message["timescale"]
        end if
    end if

    if field_timescale <> invalid then
        if not __pb_scalarEqualsDefault(field_timescale, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_timescale)
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function TimeRangeDecode(encoded as String) as Object
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
                start_ticksValue = __pb_toSignedInt64String(valueResult.value)
                message["startTicks"] = start_ticksValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                duration_ticksValue = __pb_toSignedInt64String(valueResult.value)
                message["durationTicks"] = duration_ticksValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                timescaleValue = __pb_toSigned32FromString(valueResult.value)
                message["timescale"] = timescaleValue
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
    if message.DoesExist("startTicks") = false then
        start_ticksDefaultValue = __pb_toSignedInt64String("0")
        message["startTicks"] = start_ticksDefaultValue
    end if
    if message.DoesExist("durationTicks") = false then
        duration_ticksDefaultValue = __pb_toSignedInt64String("0")
        message["durationTicks"] = duration_ticksDefaultValue
    end if
    if message.DoesExist("timescale") = false then
        timescaleDefaultValue = 0
        message["timescale"] = timescaleDefaultValue
    end if
    return message
end function
