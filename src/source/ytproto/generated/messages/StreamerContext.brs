' Auto-generated encoder/decoder for video_streaming.StreamerContext

function StreamerContextEncode(message as Object) as String
    fieldMap = {}
    fieldMap["client_info"] = "clientInfo"
    fieldMap["po_token"] = "poToken"
    fieldMap["playback_cookie"] = "playbackCookie"
    fieldMap["sabr_contexts"] = "sabrContexts"
    fieldMap["unsent_sabr_contexts"] = "unsentSabrContexts"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_client_info = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_info") then
                field_client_info = message.Lookup("client_info")
            else if message.DoesExist("clientInfo") then
                field_client_info = message.Lookup("clientInfo")
            end if
        else
            field_client_info = message["client_info"]
            if field_client_info = invalid then
                field_client_info = message["clientInfo"]
            end if
        end if
    end if

    if field_client_info <> invalid then
        client_infoEncoded = ClientInfoEncode(field_client_info)
        client_infoChildBytes = __pb_fromBase64(client_infoEncoded)
        __pb_writeVarint(bytes, 10)
        __pb_writeVarint(bytes, client_infoChildBytes.Count())
        __pb_appendByteArray(bytes, client_infoChildBytes)
    end if

    field_po_token = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("po_token") then
                field_po_token = message.Lookup("po_token")
            else if message.DoesExist("poToken") then
                field_po_token = message.Lookup("poToken")
            end if
        else
            field_po_token = message["po_token"]
            if field_po_token = invalid then
                field_po_token = message["poToken"]
            end if
        end if
    end if

    if field_po_token <> invalid then
        dataBytes = __pb_createByteArray()
        if field_po_token <> invalid then
            valueType = Type(field_po_token)
            if valueType = "String" or valueType = "roString" then
                dataBytes.FromBase64String(field_po_token)
            else if valueType = "roByteArray" then
                __pb_appendByteArray(dataBytes, field_po_token)
            end if
        end if
        __pb_writeVarint(bytes, 18)
        __pb_writeVarint(bytes, dataBytes.Count())
        __pb_appendByteArray(bytes, dataBytes)
    end if

    field_playback_cookie = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("playback_cookie") then
                field_playback_cookie = message.Lookup("playback_cookie")
            else if message.DoesExist("playbackCookie") then
                field_playback_cookie = message.Lookup("playbackCookie")
            end if
        else
            field_playback_cookie = message["playback_cookie"]
            if field_playback_cookie = invalid then
                field_playback_cookie = message["playbackCookie"]
            end if
        end if
    end if

    if field_playback_cookie <> invalid then
        dataBytes = __pb_createByteArray()
        if field_playback_cookie <> invalid then
            valueType = Type(field_playback_cookie)
            if valueType = "String" or valueType = "roString" then
                dataBytes.FromBase64String(field_playback_cookie)
            else if valueType = "roByteArray" then
                __pb_appendByteArray(dataBytes, field_playback_cookie)
            end if
        end if
        __pb_writeVarint(bytes, 26)
        __pb_writeVarint(bytes, dataBytes.Count())
        __pb_appendByteArray(bytes, dataBytes)
    end if

    field_field4 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field4") then
                field_field4 = message.Lookup("field4")
            end if
        else
            field_field4 = message["field4"]
        end if
    end if

    if field_field4 <> invalid then
        dataBytes = __pb_createByteArray()
        if field_field4 <> invalid then
            valueType = Type(field_field4)
            if valueType = "String" or valueType = "roString" then
                dataBytes.FromBase64String(field_field4)
            else if valueType = "roByteArray" then
                __pb_appendByteArray(dataBytes, field_field4)
            end if
        end if
        __pb_writeVarint(bytes, 34)
        __pb_writeVarint(bytes, dataBytes.Count())
        __pb_appendByteArray(bytes, dataBytes)
    end if

    field_sabr_contexts = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sabr_contexts") then
                field_sabr_contexts = message.Lookup("sabr_contexts")
            else if message.DoesExist("sabrContexts") then
                field_sabr_contexts = message.Lookup("sabrContexts")
            end if
        else
            field_sabr_contexts = message["sabr_contexts"]
            if field_sabr_contexts = invalid then
                field_sabr_contexts = message["sabrContexts"]
            end if
        end if
    end if

    sabr_contextsItems = invalid
    if field_sabr_contexts <> invalid then
        if GetInterface(field_sabr_contexts, "ifArray") <> invalid then
            sabr_contextsItems = field_sabr_contexts
        else
            sabr_contextsSingle = CreateObject("roArray", 1, true)
            sabr_contextsSingle.Push(field_sabr_contexts)
            sabr_contextsItems = sabr_contextsSingle
        end if
    end if

    if sabr_contextsItems <> invalid then
        for each sabr_contextsItem in sabr_contextsItems
            if sabr_contextsItem <> invalid then
                sabr_contextsEncoded = SabrContextEncode(sabr_contextsItem)
                sabr_contextsChildBytes = __pb_fromBase64(sabr_contextsEncoded)
                __pb_writeVarint(bytes, 42)
                __pb_writeVarint(bytes, sabr_contextsChildBytes.Count())
                __pb_appendByteArray(bytes, sabr_contextsChildBytes)
            end if
        end for
    end if

    field_unsent_sabr_contexts = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("unsent_sabr_contexts") then
                field_unsent_sabr_contexts = message.Lookup("unsent_sabr_contexts")
            else if message.DoesExist("unsentSabrContexts") then
                field_unsent_sabr_contexts = message.Lookup("unsentSabrContexts")
            end if
        else
            field_unsent_sabr_contexts = message["unsent_sabr_contexts"]
            if field_unsent_sabr_contexts = invalid then
                field_unsent_sabr_contexts = message["unsentSabrContexts"]
            end if
        end if
    end if

    unsent_sabr_contextsItems = invalid
    if field_unsent_sabr_contexts <> invalid then
        if GetInterface(field_unsent_sabr_contexts, "ifArray") <> invalid then
            unsent_sabr_contextsItems = field_unsent_sabr_contexts
        else
            unsent_sabr_contextsSingle = CreateObject("roArray", 1, true)
            unsent_sabr_contextsSingle.Push(field_unsent_sabr_contexts)
            unsent_sabr_contextsItems = unsent_sabr_contextsSingle
        end if
    end if

    if unsent_sabr_contextsItems <> invalid then
        for each unsent_sabr_contextsItem in unsent_sabr_contextsItems
            normalized = __pb_normalizeSigned32(unsent_sabr_contextsItem)
            __pb_writeVarint(bytes, 48)
            __pb_writeVarint(bytes, normalized)
        end for
    end if

    field_field7 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field7") then
                field_field7 = message.Lookup("field7")
            end if
        else
            field_field7 = message["field7"]
        end if
    end if

    if field_field7 <> invalid then
        strValue = field_field7
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 58)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_field8 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field8") then
                field_field8 = message.Lookup("field8")
            end if
        else
            field_field8 = message["field8"]
        end if
    end if

    if field_field8 <> invalid then
        field8Encoded = VideoStreamingStreamerContextUnknownMessage1Encode(field_field8)
        field8ChildBytes = __pb_fromBase64(field8Encoded)
        __pb_writeVarint(bytes, 66)
        __pb_writeVarint(bytes, field8ChildBytes.Count())
        __pb_appendByteArray(bytes, field8ChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function StreamerContextDecode(encoded as String) as Object
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
                client_infoLength = lengthResult.value
                client_infoChildBytes = __pb_readBytes(bytes, cursor, client_infoLength)
                cursor = cursor + client_infoLength
                client_infoChild = __pb_byteArrayToBase64(client_infoChildBytes)
                client_infoDecoded = ClientInfoDecode(client_infoChild)
                message["clientInfo"] = client_infoDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                po_tokenRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                po_tokenValue = __pb_byteArrayToBase64(po_tokenRaw)
                message["poToken"] = po_tokenValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                playback_cookieRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                playback_cookieValue = __pb_byteArrayToBase64(playback_cookieRaw)
                message["playbackCookie"] = playback_cookieValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                field4Raw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                field4Value = __pb_byteArrayToBase64(field4Raw)
                message["field4"] = field4Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                sabr_contextsLength = lengthResult.value
                sabr_contextsChildBytes = __pb_readBytes(bytes, cursor, sabr_contextsLength)
                cursor = cursor + sabr_contextsLength
                sabr_contextsChild = __pb_byteArrayToBase64(sabr_contextsChildBytes)
                sabr_contextsValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("sabrContexts") then
                        sabr_contextsValues = message["sabrContexts"]
                    end if
                end if
                if sabr_contextsValues = invalid then
                    sabr_contextsValues = CreateObject("roArray", 0, true)
                end if
                message["sabrContexts"] = sabr_contextsValues
                sabr_contextsValues.Push(SabrContextDecode(sabr_contextsChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 6 then
            unsent_sabr_contextsValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("unsentSabrContexts") then
                    unsent_sabr_contextsValues = message["unsentSabrContexts"]
                end if
            end if
            if unsent_sabr_contextsValues = invalid then
                unsent_sabr_contextsValues = CreateObject("roArray", 0, true)
            end if
            message["unsentSabrContexts"] = unsent_sabr_contextsValues
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                unsent_sabr_contextsValues.Push(__pb_toSigned32FromString(valueResult.value))
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                unsent_sabr_contextsPackEnd = cursor + lengthResult.value
                while cursor < unsent_sabr_contextsPackEnd
                    valueResult = __pb_readVarint64(bytes, cursor)
                    cursor = valueResult.nextIndex
                    unsent_sabr_contextsValues.Push(__pb_toSigned32FromString(valueResult.value))
                end while
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 7 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                field7Value = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["field7"] = field7Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 8 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field8Length = lengthResult.value
                field8ChildBytes = __pb_readBytes(bytes, cursor, field8Length)
                cursor = cursor + field8Length
                field8Child = __pb_byteArrayToBase64(field8ChildBytes)
                field8Decoded = VideoStreamingStreamerContextUnknownMessage1Decode(field8Child)
                message["field8"] = field8Decoded
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
