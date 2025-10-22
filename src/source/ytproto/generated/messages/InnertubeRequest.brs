' Auto-generated encoder/decoder for video_streaming.InnertubeRequest

function InnertubeRequestEncode(message as Object) as String
    fieldMap = {}
    fieldMap["encrypted_onesie_innertube_request"] = "encryptedOnesieInnertubeRequest"
    fieldMap["encrypted_client_key"] = "encryptedClientKey"
    fieldMap["reverse_proxy_config"] = "reverseProxyConfig"
    fieldMap["serialize_response_as_json"] = "serializeResponseAsJson"
    fieldMap["enable_ad_placements_preroll"] = "enableAdPlacementsPreroll"
    fieldMap["enable_compression"] = "enableCompression"
    fieldMap["ustreamer_flags"] = "ustreamerFlags"
    fieldMap["unencrypted_onesie_innertube_request"] = "unencryptedOnesieInnertubeRequest"
    fieldMap["use_jsonformatter_to_parse_player_response"] = "useJsonformatterToParsePlayerResponse"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_context = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("context") then
                field_context = message.Lookup("context")
            end if
        else
            field_context = message["context"]
        end if
    end if

    if field_context <> invalid then
        if not __pb_scalarEqualsDefault(field_context, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_context <> invalid then
                valueType = Type(field_context)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_context)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_context)
                end if
            end if
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_encrypted_onesie_innertube_request = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("encrypted_onesie_innertube_request") then
                field_encrypted_onesie_innertube_request = message.Lookup("encrypted_onesie_innertube_request")
            else if message.DoesExist("encryptedOnesieInnertubeRequest") then
                field_encrypted_onesie_innertube_request = message.Lookup("encryptedOnesieInnertubeRequest")
            end if
        else
            field_encrypted_onesie_innertube_request = message["encrypted_onesie_innertube_request"]
            if field_encrypted_onesie_innertube_request = invalid then
                field_encrypted_onesie_innertube_request = message["encryptedOnesieInnertubeRequest"]
            end if
        end if
    end if

    if field_encrypted_onesie_innertube_request <> invalid then
        if not __pb_scalarEqualsDefault(field_encrypted_onesie_innertube_request, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_encrypted_onesie_innertube_request <> invalid then
                valueType = Type(field_encrypted_onesie_innertube_request)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_encrypted_onesie_innertube_request)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_encrypted_onesie_innertube_request)
                end if
            end if
            __pb_writeVarint(bytes, 18)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_encrypted_client_key = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("encrypted_client_key") then
                field_encrypted_client_key = message.Lookup("encrypted_client_key")
            else if message.DoesExist("encryptedClientKey") then
                field_encrypted_client_key = message.Lookup("encryptedClientKey")
            end if
        else
            field_encrypted_client_key = message["encrypted_client_key"]
            if field_encrypted_client_key = invalid then
                field_encrypted_client_key = message["encryptedClientKey"]
            end if
        end if
    end if

    if field_encrypted_client_key <> invalid then
        if not __pb_scalarEqualsDefault(field_encrypted_client_key, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_encrypted_client_key <> invalid then
                valueType = Type(field_encrypted_client_key)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_encrypted_client_key)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_encrypted_client_key)
                end if
            end if
            __pb_writeVarint(bytes, 42)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_iv = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("iv") then
                field_iv = message.Lookup("iv")
            end if
        else
            field_iv = message["iv"]
        end if
    end if

    if field_iv <> invalid then
        if not __pb_scalarEqualsDefault(field_iv, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_iv <> invalid then
                valueType = Type(field_iv)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_iv)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_iv)
                end if
            end if
            __pb_writeVarint(bytes, 50)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_hmac = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("hmac") then
                field_hmac = message.Lookup("hmac")
            end if
        else
            field_hmac = message["hmac"]
        end if
    end if

    if field_hmac <> invalid then
        if not __pb_scalarEqualsDefault(field_hmac, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_hmac <> invalid then
                valueType = Type(field_hmac)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_hmac)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_hmac)
                end if
            end if
            __pb_writeVarint(bytes, 58)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_reverse_proxy_config = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("reverse_proxy_config") then
                field_reverse_proxy_config = message.Lookup("reverse_proxy_config")
            else if message.DoesExist("reverseProxyConfig") then
                field_reverse_proxy_config = message.Lookup("reverseProxyConfig")
            end if
        else
            field_reverse_proxy_config = message["reverse_proxy_config"]
            if field_reverse_proxy_config = invalid then
                field_reverse_proxy_config = message["reverseProxyConfig"]
            end if
        end if
    end if

    if field_reverse_proxy_config <> invalid then
        if not __pb_scalarEqualsDefault(field_reverse_proxy_config, "string", "") then
            strValue = field_reverse_proxy_config
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 74)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end if
    end if

    field_serialize_response_as_json = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("serialize_response_as_json") then
                field_serialize_response_as_json = message.Lookup("serialize_response_as_json")
            else if message.DoesExist("serializeResponseAsJson") then
                field_serialize_response_as_json = message.Lookup("serializeResponseAsJson")
            end if
        else
            field_serialize_response_as_json = message["serialize_response_as_json"]
            if field_serialize_response_as_json = invalid then
                field_serialize_response_as_json = message["serializeResponseAsJson"]
            end if
        end if
    end if

    if field_serialize_response_as_json <> invalid then
        if not __pb_scalarEqualsDefault(field_serialize_response_as_json, "bool", false) then
            boolValue = field_serialize_response_as_json
            boolType = Type(boolValue)
            if boolType = "String" or boolType = "roString" then
                lower = LCase(boolValue)
                boolValue = (lower = "true") or (lower = "1")
            else if boolType = "Boolean" or boolType = "roBoolean" then
                ' keep as is
            else
                boolValue = (boolValue <> 0)
            end if
            boolInt = 0
            if boolValue = true then boolInt = 1
            __pb_writeVarint(bytes, 80)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_enable_ad_placements_preroll = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("enable_ad_placements_preroll") then
                field_enable_ad_placements_preroll = message.Lookup("enable_ad_placements_preroll")
            else if message.DoesExist("enableAdPlacementsPreroll") then
                field_enable_ad_placements_preroll = message.Lookup("enableAdPlacementsPreroll")
            end if
        else
            field_enable_ad_placements_preroll = message["enable_ad_placements_preroll"]
            if field_enable_ad_placements_preroll = invalid then
                field_enable_ad_placements_preroll = message["enableAdPlacementsPreroll"]
            end if
        end if
    end if

    if field_enable_ad_placements_preroll <> invalid then
        if not __pb_scalarEqualsDefault(field_enable_ad_placements_preroll, "bool", false) then
            boolValue = field_enable_ad_placements_preroll
            boolType = Type(boolValue)
            if boolType = "String" or boolType = "roString" then
                lower = LCase(boolValue)
                boolValue = (lower = "true") or (lower = "1")
            else if boolType = "Boolean" or boolType = "roBoolean" then
                ' keep as is
            else
                boolValue = (boolValue <> 0)
            end if
            boolInt = 0
            if boolValue = true then boolInt = 1
            __pb_writeVarint(bytes, 104)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_enable_compression = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("enable_compression") then
                field_enable_compression = message.Lookup("enable_compression")
            else if message.DoesExist("enableCompression") then
                field_enable_compression = message.Lookup("enableCompression")
            end if
        else
            field_enable_compression = message["enable_compression"]
            if field_enable_compression = invalid then
                field_enable_compression = message["enableCompression"]
            end if
        end if
    end if

    if field_enable_compression <> invalid then
        if not __pb_scalarEqualsDefault(field_enable_compression, "bool", false) then
            boolValue = field_enable_compression
            boolType = Type(boolValue)
            if boolType = "String" or boolType = "roString" then
                lower = LCase(boolValue)
                boolValue = (lower = "true") or (lower = "1")
            else if boolType = "Boolean" or boolType = "roBoolean" then
                ' keep as is
            else
                boolValue = (boolValue <> 0)
            end if
            boolInt = 0
            if boolValue = true then boolInt = 1
            __pb_writeVarint(bytes, 112)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_ustreamer_flags = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("ustreamer_flags") then
                field_ustreamer_flags = message.Lookup("ustreamer_flags")
            else if message.DoesExist("ustreamerFlags") then
                field_ustreamer_flags = message.Lookup("ustreamerFlags")
            end if
        else
            field_ustreamer_flags = message["ustreamer_flags"]
            if field_ustreamer_flags = invalid then
                field_ustreamer_flags = message["ustreamerFlags"]
            end if
        end if
    end if

    if field_ustreamer_flags <> invalid then
        ustreamer_flagsEncoded = UstreamerFlagsEncode(field_ustreamer_flags)
        ustreamer_flagsChildBytes = __pb_fromBase64(ustreamer_flagsEncoded)
        __pb_writeVarint(bytes, 122)
        __pb_writeVarint(bytes, ustreamer_flagsChildBytes.Count())
        __pb_appendByteArray(bytes, ustreamer_flagsChildBytes)
    end if

    field_unencrypted_onesie_innertube_request = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("unencrypted_onesie_innertube_request") then
                field_unencrypted_onesie_innertube_request = message.Lookup("unencrypted_onesie_innertube_request")
            else if message.DoesExist("unencryptedOnesieInnertubeRequest") then
                field_unencrypted_onesie_innertube_request = message.Lookup("unencryptedOnesieInnertubeRequest")
            end if
        else
            field_unencrypted_onesie_innertube_request = message["unencrypted_onesie_innertube_request"]
            if field_unencrypted_onesie_innertube_request = invalid then
                field_unencrypted_onesie_innertube_request = message["unencryptedOnesieInnertubeRequest"]
            end if
        end if
    end if

    if field_unencrypted_onesie_innertube_request <> invalid then
        if not __pb_scalarEqualsDefault(field_unencrypted_onesie_innertube_request, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_unencrypted_onesie_innertube_request <> invalid then
                valueType = Type(field_unencrypted_onesie_innertube_request)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_unencrypted_onesie_innertube_request)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_unencrypted_onesie_innertube_request)
                end if
            end if
            __pb_writeVarint(bytes, 130)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_use_jsonformatter_to_parse_player_response = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("use_jsonformatter_to_parse_player_response") then
                field_use_jsonformatter_to_parse_player_response = message.Lookup("use_jsonformatter_to_parse_player_response")
            else if message.DoesExist("useJsonformatterToParsePlayerResponse") then
                field_use_jsonformatter_to_parse_player_response = message.Lookup("useJsonformatterToParsePlayerResponse")
            end if
        else
            field_use_jsonformatter_to_parse_player_response = message["use_jsonformatter_to_parse_player_response"]
            if field_use_jsonformatter_to_parse_player_response = invalid then
                field_use_jsonformatter_to_parse_player_response = message["useJsonformatterToParsePlayerResponse"]
            end if
        end if
    end if

    if field_use_jsonformatter_to_parse_player_response <> invalid then
        if not __pb_scalarEqualsDefault(field_use_jsonformatter_to_parse_player_response, "bool", false) then
            boolValue = field_use_jsonformatter_to_parse_player_response
            boolType = Type(boolValue)
            if boolType = "String" or boolType = "roString" then
                lower = LCase(boolValue)
                boolValue = (lower = "true") or (lower = "1")
            else if boolType = "Boolean" or boolType = "roBoolean" then
                ' keep as is
            else
                boolValue = (boolValue <> 0)
            end if
            boolInt = 0
            if boolValue = true then boolInt = 1
            __pb_writeVarint(bytes, 136)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function InnertubeRequestDecode(encoded as String) as Object
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
                contextRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                contextValue = __pb_byteArrayToBase64(contextRaw)
                message["context"] = contextValue
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
                encrypted_onesie_innertube_requestRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                encrypted_onesie_innertube_requestValue = __pb_byteArrayToBase64(encrypted_onesie_innertube_requestRaw)
                message["encryptedOnesieInnertubeRequest"] = encrypted_onesie_innertube_requestValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                encrypted_client_keyRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                encrypted_client_keyValue = __pb_byteArrayToBase64(encrypted_client_keyRaw)
                message["encryptedClientKey"] = encrypted_client_keyValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 6 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                ivRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                ivValue = __pb_byteArrayToBase64(ivRaw)
                message["iv"] = ivValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 7 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                hmacRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                hmacValue = __pb_byteArrayToBase64(hmacRaw)
                message["hmac"] = hmacValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 9 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                reverse_proxy_configValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["reverseProxyConfig"] = reverse_proxy_configValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 10 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                serialize_response_as_jsonValue = (valueResult.value <> 0)
                message["serializeResponseAsJson"] = serialize_response_as_jsonValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 13 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                enable_ad_placements_prerollValue = (valueResult.value <> 0)
                message["enableAdPlacementsPreroll"] = enable_ad_placements_prerollValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 14 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                enable_compressionValue = (valueResult.value <> 0)
                message["enableCompression"] = enable_compressionValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 15 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                ustreamer_flagsLength = lengthResult.value
                ustreamer_flagsChildBytes = __pb_readBytes(bytes, cursor, ustreamer_flagsLength)
                cursor = cursor + ustreamer_flagsLength
                ustreamer_flagsChild = __pb_byteArrayToBase64(ustreamer_flagsChildBytes)
                ustreamer_flagsDecoded = UstreamerFlagsDecode(ustreamer_flagsChild)
                message["ustreamerFlags"] = ustreamer_flagsDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 16 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                unencrypted_onesie_innertube_requestRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                unencrypted_onesie_innertube_requestValue = __pb_byteArrayToBase64(unencrypted_onesie_innertube_requestRaw)
                message["unencryptedOnesieInnertubeRequest"] = unencrypted_onesie_innertube_requestValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 17 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                use_jsonformatter_to_parse_player_responseValue = (valueResult.value <> 0)
                message["useJsonformatterToParsePlayerResponse"] = use_jsonformatter_to_parse_player_responseValue
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
    if message.DoesExist("context") = false then
        contextDefaultValue = ""
        message["context"] = contextDefaultValue
    end if
    if message.DoesExist("encryptedOnesieInnertubeRequest") = false then
        encrypted_onesie_innertube_requestDefaultValue = ""
        message["encryptedOnesieInnertubeRequest"] = encrypted_onesie_innertube_requestDefaultValue
    end if
    if message.DoesExist("encryptedClientKey") = false then
        encrypted_client_keyDefaultValue = ""
        message["encryptedClientKey"] = encrypted_client_keyDefaultValue
    end if
    if message.DoesExist("iv") = false then
        ivDefaultValue = ""
        message["iv"] = ivDefaultValue
    end if
    if message.DoesExist("hmac") = false then
        hmacDefaultValue = ""
        message["hmac"] = hmacDefaultValue
    end if
    if message.DoesExist("reverseProxyConfig") = false then
        reverse_proxy_configDefaultValue = ""
        message["reverseProxyConfig"] = reverse_proxy_configDefaultValue
    end if
    if message.DoesExist("serializeResponseAsJson") = false then
        serialize_response_as_jsonDefaultValue = false
        message["serializeResponseAsJson"] = serialize_response_as_jsonDefaultValue
    end if
    if message.DoesExist("enableAdPlacementsPreroll") = false then
        enable_ad_placements_prerollDefaultValue = false
        message["enableAdPlacementsPreroll"] = enable_ad_placements_prerollDefaultValue
    end if
    if message.DoesExist("enableCompression") = false then
        enable_compressionDefaultValue = false
        message["enableCompression"] = enable_compressionDefaultValue
    end if
    if message.DoesExist("unencryptedOnesieInnertubeRequest") = false then
        unencrypted_onesie_innertube_requestDefaultValue = ""
        message["unencryptedOnesieInnertubeRequest"] = unencrypted_onesie_innertube_requestDefaultValue
    end if
    if message.DoesExist("useJsonformatterToParsePlayerResponse") = false then
        use_jsonformatter_to_parse_player_responseDefaultValue = false
        message["useJsonformatterToParsePlayerResponse"] = use_jsonformatter_to_parse_player_responseDefaultValue
    end if
    return message
end function
