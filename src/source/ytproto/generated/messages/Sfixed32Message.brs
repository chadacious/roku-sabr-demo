' Auto-generated encoder/decoder for samples.Sfixed32Message

function Sfixed32MessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
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
        if not __pb_scalarEqualsDefault(field_value, "sfixed32", "0") then
            __pb_writeVarint(bytes, 13)
            __pb_writeFixed32(bytes, field_value)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function Sfixed32MessageDecode(encoded as String) as Object
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
            if wireType = 5 then
                fixedResult = __pb_readFixed32(bytes, cursor)
                cursor = fixedResult.nextIndex
                valueValue = __pb_toSigned32(fixedResult.value)
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
    if message.DoesExist("value") = false then
        valueDefaultValue = 0
        message["value"] = valueDefaultValue
    end if
    return message
end function
