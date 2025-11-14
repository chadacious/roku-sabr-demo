' Auto-generated encoder/decoder for video_streaming.BufferedRange.UnknownMessage1.UnknownInnerMessage

function UnknownInnerMessageEncode(message as Object) as String
    fieldMap = {}
    fieldMap["video_id"] = "videoId"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_video_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("video_id") then
                field_video_id = message.Lookup("video_id")
            else if message.DoesExist("videoId") then
                field_video_id = message.Lookup("videoId")
            end if
        else
            field_video_id = message["video_id"]
            if field_video_id = invalid then
                field_video_id = message["videoId"]
            end if
        end if
    end if

    if field_video_id <> invalid then
        strValue = field_video_id
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

    field_lmt = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("lmt") then
                field_lmt = message.Lookup("lmt")
            end if
        else
            field_lmt = message["lmt"]
        end if
    end if

    if field_lmt <> invalid then
        __pb_writeVarint(bytes, 16)
        __pb_writeVarint64(bytes, field_lmt)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function UnknownInnerMessageDecode(encoded as String) as Object
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
                video_idValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["videoId"] = video_idValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                lmtValue = valueResult.value
                message["lmt"] = lmtValue
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
