' Auto-generated encoder/decoder for misc.KeyValuePair

function KeyValuePairEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_key = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("key") then
                field_key = message.Lookup("key")
            end if
        else
            field_key = message["key"]
        end if
    end if

    if field_key <> invalid then
        if not __pb_scalarEqualsDefault(field_key, "string", "") then
            strValue = field_key
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

    field_value = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("value") then
                field_value = message.Lookup("value")
            end if
        else
            field_value = message["value"]
        end if
    end if

    if field_value <> invalid then
        if not __pb_scalarEqualsDefault(field_value, "string", "") then
            strValue = field_value
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
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function KeyValuePairDecode(encoded as String) as Object
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
                keyValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["key"] = keyValue
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
                valueValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["value"] = valueValue
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
    if message.DoesExist("key") = false then
        keyDefaultValue = ""
        message["key"] = keyDefaultValue
    end if
    if message.DoesExist("value") = false then
        valueDefaultValue = ""
        message["value"] = valueDefaultValue
    end if
    return message
end function
