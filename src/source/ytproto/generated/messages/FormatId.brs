' Auto-generated encoder/decoder for misc.FormatId

function FormatIdEncode(message as Object) as String
    fieldMap = {}
    fieldMap["last_modified"] = "lastModified"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
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
        __pb_writeVarint(bytes, 8)
        __pb_writeVarint(bytes, normalized)
    end if

    field_last_modified = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("last_modified") then
                field_last_modified = message.Lookup("last_modified")
            else if message.DoesExist("lastModified") then
                field_last_modified = message.Lookup("lastModified")
            end if
        else
            field_last_modified = message["last_modified"]
            if field_last_modified = invalid then
                field_last_modified = message["lastModified"]
            end if
        end if
    end if

    if field_last_modified <> invalid then
        __pb_writeVarint(bytes, 16)
        __pb_writeVarint64(bytes, field_last_modified)
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
        __pb_writeVarint(bytes, 26)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function FormatIdDecode(encoded as String) as Object
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
                itagValue = __pb_toSigned32FromString(valueResult.value)
                message["itag"] = itagValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                last_modifiedValue = valueResult.value
                message["lastModified"] = last_modifiedValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
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
        else
            nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
            if nextIndex <= tagStart then exit while
            cursor = nextIndex
        end if
    end while
    return message
end function
