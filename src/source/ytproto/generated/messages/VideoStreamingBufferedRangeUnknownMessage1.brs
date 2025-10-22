' Auto-generated encoder/decoder for video_streaming.BufferedRange.UnknownMessage1

function VideoStreamingBufferedRangeUnknownMessage1Encode(message as Object) as String
    bytes = __pb_createByteArray()
    field_field1 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field1") then
                field_field1 = message.Lookup("field1")
            end if
        else
            field_field1 = message["field1"]
        end if
    end if

    field1Items = invalid
    if field_field1 <> invalid then
        if GetInterface(field_field1, "ifArray") <> invalid then
            field1Items = field_field1
        else
            field1Single = CreateObject("roArray", 1, true)
            field1Single.Push(field_field1)
            field1Items = field1Single
        end if
    end if

    if field1Items <> invalid then
        for each field1Item in field1Items
            if field1Item <> invalid then
                field1Encoded = UnknownInnerMessageEncode(field1Item)
                field1ChildBytes = __pb_fromBase64(field1Encoded)
                __pb_writeVarint(bytes, 10)
                __pb_writeVarint(bytes, field1ChildBytes.Count())
                __pb_appendByteArray(bytes, field1ChildBytes)
            end if
        end for
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function VideoStreamingBufferedRangeUnknownMessage1Decode(encoded as String) as Object
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
                field1Length = lengthResult.value
                field1ChildBytes = __pb_readBytes(bytes, cursor, field1Length)
                cursor = cursor + field1Length
                field1Child = __pb_byteArrayToBase64(field1ChildBytes)
                field1Values = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("field1") then
                        field1Values = message["field1"]
                    end if
                end if
                if field1Values = invalid then
                    field1Values = CreateObject("roArray", 0, true)
                end if
                message["field1"] = field1Values
                field1Values.Push(UnknownInnerMessageDecode(field1Child))
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
