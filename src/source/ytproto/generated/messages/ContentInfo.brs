' Auto-generated encoder/decoder for video_streaming.SabrContextValue.ContentInfo

function ContentInfoEncode(message as Object) as String
    fieldMap = {}
    fieldMap["content_id"] = "contentId"
    fieldMap["content_type"] = "contentType"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_content_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("content_id") then
                field_content_id = message.Lookup("content_id")
            else if message.DoesExist("contentId") then
                field_content_id = message.Lookup("contentId")
            end if
        else
            field_content_id = message["content_id"]
            if field_content_id = invalid then
                field_content_id = message["contentId"]
            end if
        end if
    end if

    if field_content_id <> invalid then
        strValue = field_content_id
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 10)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_content_type = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("content_type") then
                field_content_type = message.Lookup("content_type")
            else if message.DoesExist("contentType") then
                field_content_type = message.Lookup("contentType")
            end if
        else
            field_content_type = message["content_type"]
            if field_content_type = invalid then
                field_content_type = message["contentType"]
            end if
        end if
    end if

    if field_content_type <> invalid then
        normalized = __pb_normalizeSigned32(field_content_type)
        __pb_writeVarint(bytes, 16)
        __pb_writeVarint(bytes, normalized)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function ContentInfoDecode(encoded as String) as Object
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
                strLength = lengthResult.value
                content_idValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["contentId"] = content_idValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                content_typeValue = __pb_toSigned32FromString(valueResult.value)
                message["contentType"] = content_typeValue
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
