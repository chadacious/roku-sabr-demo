' Auto-generated encoder/decoder for video_streaming.BufferedRange.UnknownMessage2

function VideoStreamingBufferedRangeUnknownMessage2Encode(message as Object) as String
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
        if not __pb_scalarEqualsDefault(field_field1, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field1)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
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
        if not __pb_scalarEqualsDefault(field_field2, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field2)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_field3 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field3") then
                field_field3 = message.Lookup("field3")
            end if
        else
            field_field3 = message["field3"]
        end if
    end if

    if field_field3 <> invalid then
        if not __pb_scalarEqualsDefault(field_field3, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field3)
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function VideoStreamingBufferedRangeUnknownMessage2Decode(encoded as String) as Object
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
                field1Value = __pb_toSigned32FromString(valueResult.value)
                message["field1"] = field1Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field2Value = __pb_toSigned32FromString(valueResult.value)
                message["field2"] = field2Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field3Value = __pb_toSigned32FromString(valueResult.value)
                message["field3"] = field3Value
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
        field1DefaultValue = 0
        message["field1"] = field1DefaultValue
    end if
    if message.DoesExist("field2") = false then
        field2DefaultValue = 0
        message["field2"] = field2DefaultValue
    end if
    if message.DoesExist("field3") = false then
        field3DefaultValue = 0
        message["field3"] = field3DefaultValue
    end if
    return message
end function
