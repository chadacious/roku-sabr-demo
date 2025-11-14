' Auto-generated encoder/decoder for misc.Range

function RangeEncode(message as Object) as String
    fieldMap = {}
    fieldMap["legacy_start"] = "legacyStart"
    fieldMap["legacy_end"] = "legacyEnd"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_legacy_start = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("legacy_start") then
                field_legacy_start = message.Lookup("legacy_start")
            else if message.DoesExist("legacyStart") then
                field_legacy_start = message.Lookup("legacyStart")
            end if
        else
            field_legacy_start = message["legacy_start"]
            if field_legacy_start = invalid then
                field_legacy_start = message["legacyStart"]
            end if
        end if
    end if

    if field_legacy_start <> invalid then
        normalized = __pb_normalizeSigned32(field_legacy_start)
        __pb_writeVarint(bytes, 8)
        __pb_writeVarint(bytes, normalized)
    end if

    field_legacy_end = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("legacy_end") then
                field_legacy_end = message.Lookup("legacy_end")
            else if message.DoesExist("legacyEnd") then
                field_legacy_end = message.Lookup("legacyEnd")
            end if
        else
            field_legacy_end = message["legacy_end"]
            if field_legacy_end = invalid then
                field_legacy_end = message["legacyEnd"]
            end if
        end if
    end if

    if field_legacy_end <> invalid then
        normalized = __pb_normalizeSigned32(field_legacy_end)
        __pb_writeVarint(bytes, 16)
        __pb_writeVarint(bytes, normalized)
    end if

    field_start = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("start") then
                field_start = message.Lookup("start")
            end if
        else
            field_start = message["start"]
        end if
    end if

    if field_start <> invalid then
        normalized = __pb_normalizeSigned32(field_start)
        __pb_writeVarint(bytes, 24)
        __pb_writeVarint(bytes, normalized)
    end if

    field_end = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("end") then
                field_end = message.Lookup("end")
            end if
        else
            field_end = message["end"]
        end if
    end if

    if field_end <> invalid then
        normalized = __pb_normalizeSigned32(field_end)
        __pb_writeVarint(bytes, 32)
        __pb_writeVarint(bytes, normalized)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function RangeDecode(encoded as String) as Object
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
                legacy_startValue = __pb_toSigned32FromString(valueResult.value)
                message["legacyStart"] = legacy_startValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                legacy_endValue = __pb_toSigned32FromString(valueResult.value)
                message["legacyEnd"] = legacy_endValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                startValue = __pb_toSigned32FromString(valueResult.value)
                message["start"] = startValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                endValue = __pb_toSigned32FromString(valueResult.value)
                message["end"] = endValue
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
