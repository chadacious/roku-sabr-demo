' Auto-generated encoder/decoder for samples.CountMessage

function CountMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_count = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("count") then
                field_count = message.Lookup("count")
            end if
        else
            field_count = message["count"]
        end if
    end if

    if field_count <> invalid then
        if not __pb_scalarEqualsDefault(field_count, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_count)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function CountMessageDecode(encoded as String) as Object
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
                countValue = __pb_toSigned32FromString(valueResult.value)
                message["count"] = countValue
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
    if message.DoesExist("count") = false then
        countDefaultValue = 0
        message["count"] = countDefaultValue
    end if
    return message
end function
