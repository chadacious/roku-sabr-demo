' Auto-generated encoder/decoder for samples.SignedCountMessage

function SignedCountMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_delta = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("delta") then
                field_delta = message.Lookup("delta")
            end if
        else
            field_delta = message["delta"]
        end if
    end if

    if field_delta <> invalid then
        if not __pb_scalarEqualsDefault(field_delta, "sint32", "0") then
            normalized = __pb_normalizeSigned32(field_delta)
            encoded = __pb_encodeZigZag32FromString(normalized)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint64(bytes, encoded)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function SignedCountMessageDecode(encoded as String) as Object
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
                deltaValue = __pb_decodeZigZag32(valueResult.value)
                message["delta"] = deltaValue
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
    if message.DoesExist("delta") = false then
        deltaDefaultValue = 0
        message["delta"] = deltaDefaultValue
    end if
    return message
end function
