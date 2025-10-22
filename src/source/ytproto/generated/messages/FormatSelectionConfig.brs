' Auto-generated encoder/decoder for video_streaming.FormatSelectionConfig

function FormatSelectionConfigEncode(message as Object) as String
    fieldMap = {}
    fieldMap["video_id"] = "videoId"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_itags = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("itags") then
                field_itags = message.Lookup("itags")
            end if
        else
            field_itags = message["itags"]
        end if
    end if

    itagsItems = invalid
    if field_itags <> invalid then
        if GetInterface(field_itags, "ifArray") <> invalid then
            itagsItems = field_itags
        else
            itagsSingle = CreateObject("roArray", 1, true)
            itagsSingle.Push(field_itags)
            itagsItems = itagsSingle
        end if
    end if

    if itagsItems <> invalid then
        for each itagsItem in itagsItems
            normalized = __pb_normalizeSigned32(itagsItem)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end for
        if itagsItems.Count() = 0 then
            __pb_writeVarint(bytes, 18)
            __pb_writeVarint(bytes, 0)
        end if
    else
        __pb_writeVarint(bytes, 18)
        __pb_writeVarint(bytes, 0)
    end if

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
        if not __pb_scalarEqualsDefault(field_video_id, "string", "") then
            strValue = field_video_id
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 26)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end if
    end if

    field_resolution = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("resolution") then
                field_resolution = message.Lookup("resolution")
            end if
        else
            field_resolution = message["resolution"]
        end if
    end if

    if field_resolution <> invalid then
        if not __pb_scalarEqualsDefault(field_resolution, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_resolution)
            __pb_writeVarint(bytes, 32)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function FormatSelectionConfigDecode(encoded as String) as Object
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
        if fieldNumber = 2 then
            itagsValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("itags") then
                    itagsValues = message["itags"]
                end if
            end if
            if itagsValues = invalid then
                itagsValues = CreateObject("roArray", 0, true)
            end if
            message["itags"] = itagsValues
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                itagsValues.Push(__pb_toSigned32FromString(valueResult.value))
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                itagsPackEnd = cursor + lengthResult.value
                while cursor < itagsPackEnd
                    valueResult = __pb_readVarint64(bytes, cursor)
                    cursor = valueResult.nextIndex
                    itagsValues.Push(__pb_toSigned32FromString(valueResult.value))
                end while
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
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
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                resolutionValue = __pb_toSigned32FromString(valueResult.value)
                message["resolution"] = resolutionValue
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
    if message.DoesExist("videoId") = false then
        video_idDefaultValue = ""
        message["videoId"] = video_idDefaultValue
    end if
    if message.DoesExist("resolution") = false then
        resolutionDefaultValue = 0
        message["resolution"] = resolutionDefaultValue
    end if
    return message
end function
