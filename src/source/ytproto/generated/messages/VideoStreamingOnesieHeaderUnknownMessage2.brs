' Auto-generated encoder/decoder for video_streaming.OnesieHeader.UnknownMessage2

function VideoStreamingOnesieHeaderUnknownMessage2Encode(message as Object) as String
    fieldMap = {}
    fieldMap["itag_denylist"] = "itagDenylist"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_itag_denylist = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("itag_denylist") then
                field_itag_denylist = message.Lookup("itag_denylist")
            else if message.DoesExist("itagDenylist") then
                field_itag_denylist = message.Lookup("itagDenylist")
            end if
        else
            field_itag_denylist = message["itag_denylist"]
            if field_itag_denylist = invalid then
                field_itag_denylist = message["itagDenylist"]
            end if
        end if
    end if

    itag_denylistItems = invalid
    if field_itag_denylist <> invalid then
        if GetInterface(field_itag_denylist, "ifArray") <> invalid then
            itag_denylistItems = field_itag_denylist
        else
            itag_denylistSingle = CreateObject("roArray", 1, true)
            itag_denylistSingle.Push(field_itag_denylist)
            itag_denylistItems = itag_denylistSingle
        end if
    end if

    if itag_denylistItems <> invalid then
        for each itag_denylistItem in itag_denylistItems
            strValue = itag_denylistItem
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end for
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function VideoStreamingOnesieHeaderUnknownMessage2Decode(encoded as String) as Object
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
            itag_denylistValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("itagDenylist") then
                    itag_denylistValues = message["itagDenylist"]
                end if
            end if
            if itag_denylistValues = invalid then
                itag_denylistValues = CreateObject("roArray", 0, true)
            end if
            message["itagDenylist"] = itag_denylistValues
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                fieldValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                itag_denylistValues.Push(fieldValue)
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                itag_denylistPackEnd = cursor + lengthResult.value
                while cursor < itag_denylistPackEnd
                    lengthResult = __pb_readVarint(bytes, cursor)
                    cursor = lengthResult.nextIndex
                    strLength = lengthResult.value
                    fieldValue = __pb_readString(bytes, cursor, strLength)
                    cursor = cursor + strLength
                    itag_denylistValues.Push(fieldValue)
                end while
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
