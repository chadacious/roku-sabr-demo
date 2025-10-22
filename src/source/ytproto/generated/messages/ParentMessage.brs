' Auto-generated encoder/decoder for samples.ParentMessage

function ParentMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_child = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("child") then
                field_child = message.Lookup("child")
            end if
        else
            field_child = message["child"]
        end if
    end if

    if field_child <> invalid then
        childEncoded = ChildMessageEncode(field_child)
        childChildBytes = __pb_fromBase64(childEncoded)
        __pb_writeVarint(bytes, 10)
        __pb_writeVarint(bytes, childChildBytes.Count())
        __pb_appendByteArray(bytes, childChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function ParentMessageDecode(encoded as String) as Object
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
                childLength = lengthResult.value
                childChildBytes = __pb_readBytes(bytes, cursor, childLength)
                cursor = cursor + childLength
                childChild = __pb_byteArrayToBase64(childChildBytes)
                childDecoded = ChildMessageDecode(childChild)
                message["child"] = childDecoded
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
