' Auto-generated encoder/decoder for samples.FloatMessage

function FloatMessageEncode(message as Object) as String
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
        if not __pb_scalarEqualsDefault(field_value, "float", "0") then
            normalized = __pb_toLong(field_value)
            __pb_writeVarint(bytes, 13)
            __pb_writeFloat32(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function FloatMessageDecode(encoded as String) as Object
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
                floatResult = __pb_readFloat32(bytes, cursor)
                cursor = floatResult.nextIndex
                valueValue = floatResult.value
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
