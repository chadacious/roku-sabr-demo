' Auto-generated encoder/decoder for samples.ParentRepeatedMessage

function ParentRepeatedMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_children = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("children") then
                field_children = message.Lookup("children")
            end if
        else
            field_children = message["children"]
        end if
    end if

    childrenItems = invalid
    if field_children <> invalid then
        if GetInterface(field_children, "ifArray") <> invalid then
            childrenItems = field_children
        else
            childrenSingle = CreateObject("roArray", 1, true)
            childrenSingle.Push(field_children)
            childrenItems = childrenSingle
        end if
    end if

    if childrenItems <> invalid then
        for each childrenItem in childrenItems
            if childrenItem <> invalid then
                childrenEncoded = ChildMessageEncode(childrenItem)
                childrenChildBytes = __pb_fromBase64(childrenEncoded)
                __pb_writeVarint(bytes, 10)
                __pb_writeVarint(bytes, childrenChildBytes.Count())
                __pb_appendByteArray(bytes, childrenChildBytes)
            end if
        end for
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function ParentRepeatedMessageDecode(encoded as String) as Object
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
                childrenLength = lengthResult.value
                childrenChildBytes = __pb_readBytes(bytes, cursor, childrenLength)
                cursor = cursor + childrenLength
                childrenChild = __pb_byteArrayToBase64(childrenChildBytes)
                childrenValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("children") then
                        childrenValues = message["children"]
                    end if
                end if
                if childrenValues = invalid then
                    childrenValues = CreateObject("roArray", 0, true)
                end if
                message["children"] = childrenValues
                childrenValues.Push(ChildMessageDecode(childrenChild))
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
    if message.DoesExist("children") = false then
        childrenDefaultValues = CreateObject("roArray", 0, true)
        message["children"] = childrenDefaultValues
    end if
    return message
end function
