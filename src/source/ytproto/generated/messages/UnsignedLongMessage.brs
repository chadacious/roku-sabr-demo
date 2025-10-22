' Auto-generated encoder/decoder for samples.UnsignedLongMessage

function UnsignedLongMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_total = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("total") then
                field_total = message.Lookup("total")
            end if
        else
            field_total = message["total"]
        end if
    end if

    if field_total <> invalid then
        if not __pb_scalarEqualsDefault(field_total, "uint64", "0") then
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint64(bytes, field_total)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function UnsignedLongMessageDecode(encoded as String) as Object
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
                totalValue = valueResult.value
                message["total"] = totalValue
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
    if message.DoesExist("total") = false then
        totalDefaultValue = "0"
        message["total"] = totalDefaultValue
    end if
    return message
end function
