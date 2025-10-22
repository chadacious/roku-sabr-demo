' Auto-generated encoder/decoder for video_streaming.SabrError

function SabrErrorEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_type = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("type") then
                field_type = message.Lookup("type")
            end if
        else
            field_type = message["type"]
        end if
    end if

    if field_type <> invalid then
        if not __pb_scalarEqualsDefault(field_type, "string", "") then
            strValue = field_type
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

    field_code = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("code") then
                field_code = message.Lookup("code")
            end if
        else
            field_code = message["code"]
        end if
    end if

    if field_code <> invalid then
        if not __pb_scalarEqualsDefault(field_code, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_code)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function SabrErrorDecode(encoded as String) as Object
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
                typeValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["type"] = typeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                codeValue = __pb_toSigned32FromString(valueResult.value)
                message["code"] = codeValue
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
    if message.DoesExist("type") = false then
        typeDefaultValue = ""
        message["type"] = typeDefaultValue
    end if
    if message.DoesExist("code") = false then
        codeDefaultValue = 0
        message["code"] = codeDefaultValue
    end if
    return message
end function
