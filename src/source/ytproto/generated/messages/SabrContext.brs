' Auto-generated encoder/decoder for video_streaming.StreamerContext.SabrContext

function SabrContextEncode(message as Object) as String
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
        if not __pb_scalarEqualsDefault(field_type, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_type)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
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
        if not __pb_scalarEqualsDefault(field_value, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_value <> invalid then
                valueType = Type(field_value)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_value)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_value)
                end if
            end if
            __pb_writeVarint(bytes, 18)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function SabrContextDecode(encoded as String) as Object
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
                typeValue = __pb_toSigned32FromString(valueResult.value)
                message["type"] = typeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                valueRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                valueValue = __pb_byteArrayToBase64(valueRaw)
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
    if message.DoesExist("type") = false then
        typeDefaultValue = 0
        message["type"] = typeDefaultValue
    end if
    if message.DoesExist("value") = false then
        valueDefaultValue = ""
        message["value"] = valueDefaultValue
    end if
    return message
end function
