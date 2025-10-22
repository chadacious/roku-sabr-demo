' Auto-generated encoder/decoder for samples.BytesMessage

function BytesMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_data = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("data") then
                field_data = message.Lookup("data")
            end if
        else
            field_data = message["data"]
        end if
    end if

    if field_data <> invalid then
        if not __pb_scalarEqualsDefault(field_data, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_data <> invalid then
                valueType = Type(field_data)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_data)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_data)
                end if
            end if
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function BytesMessageDecode(encoded as String) as Object
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
                dataLength = lengthResult.value
                dataRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                dataValue = __pb_byteArrayToBase64(dataRaw)
                message["data"] = dataValue
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
    if message.DoesExist("data") = false then
        dataDefaultValue = ""
        message["data"] = dataDefaultValue
    end if
    return message
end function
