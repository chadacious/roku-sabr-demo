' Auto-generated encoder/decoder for video_streaming.OnesieRequest

function OnesieRequestEncode(message as Object) as String
    fieldMap = {}
    fieldMap["client_abr_state"] = "clientAbrState"
    fieldMap["innertube_request"] = "innertubeRequest"
    fieldMap["onesie_ustreamer_config"] = "onesieUstreamerConfig"
    fieldMap["max_vp9_height"] = "maxVp9Height"
    fieldMap["client_display_height"] = "clientDisplayHeight"
    fieldMap["streamer_context"] = "streamerContext"
    fieldMap["request_target"] = "requestTarget"
    fieldMap["buffered_ranges"] = "bufferedRanges"
    fieldMap["reload_playback_params"] = "reloadPlaybackParams"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_urls = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("urls") then
                field_urls = message.Lookup("urls")
            end if
        else
            field_urls = message["urls"]
        end if
    end if

    urlsItems = invalid
    if field_urls <> invalid then
        if GetInterface(field_urls, "ifArray") <> invalid then
            urlsItems = field_urls
        else
            urlsSingle = CreateObject("roArray", 1, true)
            urlsSingle.Push(field_urls)
            urlsItems = urlsSingle
        end if
    end if

    if urlsItems <> invalid then
        for each urlsItem in urlsItems
            strValue = urlsItem
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

    field_client_abr_state = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_abr_state") then
                field_client_abr_state = message.Lookup("client_abr_state")
            else if message.DoesExist("clientAbrState") then
                field_client_abr_state = message.Lookup("clientAbrState")
            end if
        else
            field_client_abr_state = message["client_abr_state"]
            if field_client_abr_state = invalid then
                field_client_abr_state = message["clientAbrState"]
            end if
        end if
    end if

    if field_client_abr_state <> invalid then
        client_abr_stateEncoded = ClientAbrStateEncode(field_client_abr_state)
        client_abr_stateChildBytes = __pb_fromBase64(client_abr_stateEncoded)
        __pb_writeVarint(bytes, 18)
        __pb_writeVarint(bytes, client_abr_stateChildBytes.Count())
        __pb_appendByteArray(bytes, client_abr_stateChildBytes)
    end if

    field_innertube_request = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("innertube_request") then
                field_innertube_request = message.Lookup("innertube_request")
            else if message.DoesExist("innertubeRequest") then
                field_innertube_request = message.Lookup("innertubeRequest")
            end if
        else
            field_innertube_request = message["innertube_request"]
            if field_innertube_request = invalid then
                field_innertube_request = message["innertubeRequest"]
            end if
        end if
    end if

    if field_innertube_request <> invalid then
        innertube_requestEncoded = InnertubeRequestEncode(field_innertube_request)
        innertube_requestChildBytes = __pb_fromBase64(innertube_requestEncoded)
        __pb_writeVarint(bytes, 26)
        __pb_writeVarint(bytes, innertube_requestChildBytes.Count())
        __pb_appendByteArray(bytes, innertube_requestChildBytes)
    end if

    field_onesie_ustreamer_config = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("onesie_ustreamer_config") then
                field_onesie_ustreamer_config = message.Lookup("onesie_ustreamer_config")
            else if message.DoesExist("onesieUstreamerConfig") then
                field_onesie_ustreamer_config = message.Lookup("onesieUstreamerConfig")
            end if
        else
            field_onesie_ustreamer_config = message["onesie_ustreamer_config"]
            if field_onesie_ustreamer_config = invalid then
                field_onesie_ustreamer_config = message["onesieUstreamerConfig"]
            end if
        end if
    end if

    if field_onesie_ustreamer_config <> invalid then
        if not __pb_scalarEqualsDefault(field_onesie_ustreamer_config, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_onesie_ustreamer_config <> invalid then
                valueType = Type(field_onesie_ustreamer_config)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_onesie_ustreamer_config)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_onesie_ustreamer_config)
                end if
            end if
            __pb_writeVarint(bytes, 34)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_max_vp9_height = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_vp9_height") then
                field_max_vp9_height = message.Lookup("max_vp9_height")
            else if message.DoesExist("maxVp9Height") then
                field_max_vp9_height = message.Lookup("maxVp9Height")
            end if
        else
            field_max_vp9_height = message["max_vp9_height"]
            if field_max_vp9_height = invalid then
                field_max_vp9_height = message["maxVp9Height"]
            end if
        end if
    end if

    if field_max_vp9_height <> invalid then
        if not __pb_scalarEqualsDefault(field_max_vp9_height, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_max_vp9_height)
            __pb_writeVarint(bytes, 40)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_client_display_height = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_display_height") then
                field_client_display_height = message.Lookup("client_display_height")
            else if message.DoesExist("clientDisplayHeight") then
                field_client_display_height = message.Lookup("clientDisplayHeight")
            end if
        else
            field_client_display_height = message["client_display_height"]
            if field_client_display_height = invalid then
                field_client_display_height = message["clientDisplayHeight"]
            end if
        end if
    end if

    if field_client_display_height <> invalid then
        if not __pb_scalarEqualsDefault(field_client_display_height, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_client_display_height)
            __pb_writeVarint(bytes, 48)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_streamer_context = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("streamer_context") then
                field_streamer_context = message.Lookup("streamer_context")
            else if message.DoesExist("streamerContext") then
                field_streamer_context = message.Lookup("streamerContext")
            end if
        else
            field_streamer_context = message["streamer_context"]
            if field_streamer_context = invalid then
                field_streamer_context = message["streamerContext"]
            end if
        end if
    end if

    if field_streamer_context <> invalid then
        streamer_contextEncoded = StreamerContextEncode(field_streamer_context)
        streamer_contextChildBytes = __pb_fromBase64(streamer_contextEncoded)
        __pb_writeVarint(bytes, 82)
        __pb_writeVarint(bytes, streamer_contextChildBytes.Count())
        __pb_appendByteArray(bytes, streamer_contextChildBytes)
    end if

    field_request_target = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("request_target") then
                field_request_target = message.Lookup("request_target")
            else if message.DoesExist("requestTarget") then
                field_request_target = message.Lookup("requestTarget")
            end if
        else
            field_request_target = message["request_target"]
            if field_request_target = invalid then
                field_request_target = message["requestTarget"]
            end if
        end if
    end if

    if field_request_target <> invalid then
        numericValue = OnesieRequest_request_target_normalizeEnum(field_request_target)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 104)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    field_buffered_ranges = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("buffered_ranges") then
                field_buffered_ranges = message.Lookup("buffered_ranges")
            else if message.DoesExist("bufferedRanges") then
                field_buffered_ranges = message.Lookup("bufferedRanges")
            end if
        else
            field_buffered_ranges = message["buffered_ranges"]
            if field_buffered_ranges = invalid then
                field_buffered_ranges = message["bufferedRanges"]
            end if
        end if
    end if

    buffered_rangesItems = invalid
    if field_buffered_ranges <> invalid then
        if GetInterface(field_buffered_ranges, "ifArray") <> invalid then
            buffered_rangesItems = field_buffered_ranges
        else
            buffered_rangesSingle = CreateObject("roArray", 1, true)
            buffered_rangesSingle.Push(field_buffered_ranges)
            buffered_rangesItems = buffered_rangesSingle
        end if
    end if

    if buffered_rangesItems <> invalid then
        for each buffered_rangesItem in buffered_rangesItems
            if buffered_rangesItem <> invalid then
                buffered_rangesEncoded = BufferedRangeEncode(buffered_rangesItem)
                buffered_rangesChildBytes = __pb_fromBase64(buffered_rangesEncoded)
                __pb_writeVarint(bytes, 114)
                __pb_writeVarint(bytes, buffered_rangesChildBytes.Count())
                __pb_appendByteArray(bytes, buffered_rangesChildBytes)
            end if
        end for
    end if

    field_reload_playback_params = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("reload_playback_params") then
                field_reload_playback_params = message.Lookup("reload_playback_params")
            else if message.DoesExist("reloadPlaybackParams") then
                field_reload_playback_params = message.Lookup("reloadPlaybackParams")
            end if
        else
            field_reload_playback_params = message["reload_playback_params"]
            if field_reload_playback_params = invalid then
                field_reload_playback_params = message["reloadPlaybackParams"]
            end if
        end if
    end if

    if field_reload_playback_params <> invalid then
        reload_playback_paramsEncoded = ReloadPlaybackParamsEncode(field_reload_playback_params)
        reload_playback_paramsChildBytes = __pb_fromBase64(reload_playback_paramsEncoded)
        __pb_writeVarint(bytes, 122)
        __pb_writeVarint(bytes, reload_playback_paramsChildBytes.Count())
        __pb_appendByteArray(bytes, reload_playback_paramsChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function OnesieRequest_request_target_normalizeEnum(value as Dynamic) as Integer
    values = OnesieRequest_request_target_getEnumValues()
    if value = invalid then return 0
    valueType = Type(value)
    if valueType = "String" or valueType = "roString" then
        upper = UCase(value)
        if values.DoesExist(upper) then
            return values[upper]
        end if
        return 0
    end if
    return Int(value)
end function

function OnesieRequest_request_target_enumName(value as Integer) as Dynamic
    names = OnesieRequest_request_target_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function OnesieRequest_request_target_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "OnesieRequest_request_target_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["ONESIE_REQUEST_TARGET_ENCRYPTED_PLAYER_SERVICE"] = 1
    table["ONESIE_REQUEST_TARGET_ENCRYPTED_WATCH_SERVICE"] = 3
    table["ONESIE_REQUEST_TARGET_ENCRYPTED_WATCH_SERVICE_DEPRECATED"] = 2
    table["ONESIE_REQUEST_TARGET_INNERTUBE_ENCRYPTED_SERVICE"] = 4
    table["ONESIE_REQUEST_TARGET_UNKNOWN"] = 0
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function OnesieRequest_request_target_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "OnesieRequest_request_target_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "ONESIE_REQUEST_TARGET_UNKNOWN"
    table["1"] = "ONESIE_REQUEST_TARGET_ENCRYPTED_PLAYER_SERVICE"
    table["2"] = "ONESIE_REQUEST_TARGET_ENCRYPTED_WATCH_SERVICE_DEPRECATED"
    table["3"] = "ONESIE_REQUEST_TARGET_ENCRYPTED_WATCH_SERVICE"
    table["4"] = "ONESIE_REQUEST_TARGET_INNERTUBE_ENCRYPTED_SERVICE"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function OnesieRequestDecode(encoded as String) as Object
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
            urlsValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("urls") then
                    urlsValues = message["urls"]
                end if
            end if
            if urlsValues = invalid then
                urlsValues = CreateObject("roArray", 0, true)
            end if
            message["urls"] = urlsValues
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                fieldValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                urlsValues.Push(fieldValue)
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                urlsPackEnd = cursor + lengthResult.value
                while cursor < urlsPackEnd
                    lengthResult = __pb_readVarint(bytes, cursor)
                    cursor = lengthResult.nextIndex
                    strLength = lengthResult.value
                    fieldValue = __pb_readString(bytes, cursor, strLength)
                    cursor = cursor + strLength
                    urlsValues.Push(fieldValue)
                end while
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                client_abr_stateLength = lengthResult.value
                client_abr_stateChildBytes = __pb_readBytes(bytes, cursor, client_abr_stateLength)
                cursor = cursor + client_abr_stateLength
                client_abr_stateChild = __pb_byteArrayToBase64(client_abr_stateChildBytes)
                client_abr_stateDecoded = ClientAbrStateDecode(client_abr_stateChild)
                message["clientAbrState"] = client_abr_stateDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                innertube_requestLength = lengthResult.value
                innertube_requestChildBytes = __pb_readBytes(bytes, cursor, innertube_requestLength)
                cursor = cursor + innertube_requestLength
                innertube_requestChild = __pb_byteArrayToBase64(innertube_requestChildBytes)
                innertube_requestDecoded = InnertubeRequestDecode(innertube_requestChild)
                message["innertubeRequest"] = innertube_requestDecoded
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
                onesie_ustreamer_configRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                onesie_ustreamer_configValue = __pb_byteArrayToBase64(onesie_ustreamer_configRaw)
                message["onesieUstreamerConfig"] = onesie_ustreamer_configValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_vp9_heightValue = __pb_toSigned32FromString(valueResult.value)
                message["maxVp9Height"] = max_vp9_heightValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 6 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                client_display_heightValue = __pb_toSigned32FromString(valueResult.value)
                message["clientDisplayHeight"] = client_display_heightValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 10 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                streamer_contextLength = lengthResult.value
                streamer_contextChildBytes = __pb_readBytes(bytes, cursor, streamer_contextLength)
                cursor = cursor + streamer_contextLength
                streamer_contextChild = __pb_byteArrayToBase64(streamer_contextChildBytes)
                streamer_contextDecoded = StreamerContextDecode(streamer_contextChild)
                message["streamerContext"] = streamer_contextDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 13 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                request_targetEnumValue = OnesieRequest_request_target_enumName(numericValue)
                message["requestTarget"] = request_targetEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 14 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                buffered_rangesLength = lengthResult.value
                buffered_rangesChildBytes = __pb_readBytes(bytes, cursor, buffered_rangesLength)
                cursor = cursor + buffered_rangesLength
                buffered_rangesChild = __pb_byteArrayToBase64(buffered_rangesChildBytes)
                buffered_rangesValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("bufferedRanges") then
                        buffered_rangesValues = message["bufferedRanges"]
                    end if
                end if
                if buffered_rangesValues = invalid then
                    buffered_rangesValues = CreateObject("roArray", 0, true)
                end if
                message["bufferedRanges"] = buffered_rangesValues
                buffered_rangesValues.Push(BufferedRangeDecode(buffered_rangesChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 15 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                reload_playback_paramsLength = lengthResult.value
                reload_playback_paramsChildBytes = __pb_readBytes(bytes, cursor, reload_playback_paramsLength)
                cursor = cursor + reload_playback_paramsLength
                reload_playback_paramsChild = __pb_byteArrayToBase64(reload_playback_paramsChildBytes)
                reload_playback_paramsDecoded = ReloadPlaybackParamsDecode(reload_playback_paramsChild)
                message["reloadPlaybackParams"] = reload_playback_paramsDecoded
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
    if message.DoesExist("onesieUstreamerConfig") = false then
        onesie_ustreamer_configDefaultValue = ""
        message["onesieUstreamerConfig"] = onesie_ustreamer_configDefaultValue
    end if
    if message.DoesExist("maxVp9Height") = false then
        max_vp9_heightDefaultValue = 0
        message["maxVp9Height"] = max_vp9_heightDefaultValue
    end if
    if message.DoesExist("clientDisplayHeight") = false then
        client_display_heightDefaultValue = 0
        message["clientDisplayHeight"] = client_display_heightDefaultValue
    end if
    if message.DoesExist("requestTarget") = false then
        request_targetDefaultValue = OnesieRequest_request_target_enumName(0)
        message["requestTarget"] = request_targetDefaultValue
    end if
    return message
end function
