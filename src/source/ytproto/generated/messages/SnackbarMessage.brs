' Auto-generated encoder/decoder for video_streaming.SnackbarMessage

function SnackbarMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("id") then
                field_id = message.Lookup("id")
            end if
        else
            field_id = message["id"]
        end if
    end if

    if field_id <> invalid then
        if not __pb_scalarEqualsDefault(field_id, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_id)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function SnackbarMessageDecode(encoded as String) as Object
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
                idValue = __pb_toSigned32FromString(valueResult.value)
                message["id"] = idValue
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
    if message.DoesExist("id") = false then
        idDefaultValue = 0
        message["id"] = idDefaultValue
    end if
    return message
end function
