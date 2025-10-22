' Auto-generated encoder/decoder for video_streaming.UnknownMessage3

function UnknownMessage3Encode(message as Object) as String
    fieldMap = {}
    fieldMap["format_ids"] = "formatIds"
    fieldMap["clip_id"] = "clipId"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_format_ids = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("format_ids") then
                field_format_ids = message.Lookup("format_ids")
            else if message.DoesExist("formatIds") then
                field_format_ids = message.Lookup("formatIds")
            end if
        else
            field_format_ids = message["format_ids"]
            if field_format_ids = invalid then
                field_format_ids = message["formatIds"]
            end if
        end if
    end if

    format_idsItems = invalid
    if field_format_ids <> invalid then
        if GetInterface(field_format_ids, "ifArray") <> invalid then
            format_idsItems = field_format_ids
        else
            format_idsSingle = CreateObject("roArray", 1, true)
            format_idsSingle.Push(field_format_ids)
            format_idsItems = format_idsSingle
        end if
    end if

    if format_idsItems <> invalid then
        for each format_idsItem in format_idsItems
            if format_idsItem <> invalid then
                format_idsEncoded = FormatIdEncode(format_idsItem)
                format_idsChildBytes = __pb_fromBase64(format_idsEncoded)
                __pb_writeVarint(bytes, 10)
                __pb_writeVarint(bytes, format_idsChildBytes.Count())
                __pb_appendByteArray(bytes, format_idsChildBytes)
            end if
        end for
    end if

    field_ud = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("ud") then
                field_ud = message.Lookup("ud")
            end if
        else
            field_ud = message["ud"]
        end if
    end if

    udItems = invalid
    if field_ud <> invalid then
        if GetInterface(field_ud, "ifArray") <> invalid then
            udItems = field_ud
        else
            udSingle = CreateObject("roArray", 1, true)
            udSingle.Push(field_ud)
            udItems = udSingle
        end if
    end if

    if udItems <> invalid then
        for each udItem in udItems
            if udItem <> invalid then
                udEncoded = BufferedRangeEncode(udItem)
                udChildBytes = __pb_fromBase64(udEncoded)
                __pb_writeVarint(bytes, 18)
                __pb_writeVarint(bytes, udChildBytes.Count())
                __pb_appendByteArray(bytes, udChildBytes)
            end if
        end for
    end if

    field_clip_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("clip_id") then
                field_clip_id = message.Lookup("clip_id")
            else if message.DoesExist("clipId") then
                field_clip_id = message.Lookup("clipId")
            end if
        else
            field_clip_id = message["clip_id"]
            if field_clip_id = invalid then
                field_clip_id = message["clipId"]
            end if
        end if
    end if

    if field_clip_id <> invalid then
        if not __pb_scalarEqualsDefault(field_clip_id, "string", "") then
            strValue = field_clip_id
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

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function UnknownMessage3Decode(encoded as String) as Object
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
                format_idsLength = lengthResult.value
                format_idsChildBytes = __pb_readBytes(bytes, cursor, format_idsLength)
                cursor = cursor + format_idsLength
                format_idsChild = __pb_byteArrayToBase64(format_idsChildBytes)
                format_idsValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("formatIds") then
                        format_idsValues = message["formatIds"]
                    end if
                end if
                if format_idsValues = invalid then
                    format_idsValues = CreateObject("roArray", 0, true)
                end if
                message["formatIds"] = format_idsValues
                format_idsValues.Push(FormatIdDecode(format_idsChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                udLength = lengthResult.value
                udChildBytes = __pb_readBytes(bytes, cursor, udLength)
                cursor = cursor + udLength
                udChild = __pb_byteArrayToBase64(udChildBytes)
                udValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("ud") then
                        udValues = message["ud"]
                    end if
                end if
                if udValues = invalid then
                    udValues = CreateObject("roArray", 0, true)
                end if
                message["ud"] = udValues
                udValues.Push(BufferedRangeDecode(udChild))
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
                clip_idValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["clipId"] = clip_idValue
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
    if message.DoesExist("clipId") = false then
        clip_idDefaultValue = ""
        message["clipId"] = clip_idDefaultValue
    end if
    return message
end function
