' Auto-generated encoder/decoder for video_streaming.StreamerContext.UnknownMessage1

function VideoStreamingStreamerContextUnknownMessage1Encode(message as Object) as String
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

    if field_field1 <> invalid then
        if not __pb_scalarEqualsDefault(field_field1, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_field1 <> invalid then
                valueType = Type(field_field1)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_field1)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_field1)
                end if
            end if
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_field2 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field2") then
                field_field2 = message.Lookup("field2")
            end if
        else
            field_field2 = message["field2"]
        end if
    end if

    if field_field2 <> invalid then
        field2Encoded = UnknownInnerMessage1Encode(field_field2)
        field2ChildBytes = __pb_fromBase64(field2Encoded)
        __pb_writeVarint(bytes, 18)
        __pb_writeVarint(bytes, field2ChildBytes.Count())
        __pb_appendByteArray(bytes, field2ChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function VideoStreamingStreamerContextUnknownMessage1Decode(encoded as String) as Object
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
                field1Raw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                field1Value = __pb_byteArrayToBase64(field1Raw)
                message["field1"] = field1Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field2Length = lengthResult.value
                field2ChildBytes = __pb_readBytes(bytes, cursor, field2Length)
                cursor = cursor + field2Length
                field2Child = __pb_byteArrayToBase64(field2ChildBytes)
                field2Decoded = UnknownInnerMessage1Decode(field2Child)
                message["field2"] = field2Decoded
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
    if message.DoesExist("field1") = false then
        field1DefaultValue = ""
        message["field1"] = field1DefaultValue
    end if
    return message
end function
