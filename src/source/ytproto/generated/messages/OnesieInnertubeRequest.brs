' Auto-generated encoder/decoder for video_streaming.OnesieInnertubeRequest

function OnesieInnertubeRequestEncode(message as Object) as String
    fieldMap = {}
    fieldMap["proxied_by_trusted_bandaid"] = "proxiedByTrustedBandaid"
    fieldMap["skip_response_encryption"] = "skipResponseEncryption"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_url = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("url") then
                field_url = message.Lookup("url")
            end if
        else
            field_url = message["url"]
        end if
    end if

    if field_url <> invalid then
        if not __pb_scalarEqualsDefault(field_url, "string", "") then
            strValue = field_url
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
    end if

    field_headers = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("headers") then
                field_headers = message.Lookup("headers")
            end if
        else
            field_headers = message["headers"]
        end if
    end if

    headersItems = invalid
    if field_headers <> invalid then
        if GetInterface(field_headers, "ifArray") <> invalid then
            headersItems = field_headers
        else
            headersSingle = CreateObject("roArray", 1, true)
            headersSingle.Push(field_headers)
            headersItems = headersSingle
        end if
    end if

    if headersItems <> invalid then
        for each headersItem in headersItems
            if headersItem <> invalid then
                headersEncoded = HttpHeaderEncode(headersItem)
                headersChildBytes = __pb_fromBase64(headersEncoded)
                __pb_writeVarint(bytes, 18)
                __pb_writeVarint(bytes, headersChildBytes.Count())
                __pb_appendByteArray(bytes, headersChildBytes)
            end if
        end for
    end if

    field_body = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("body") then
                field_body = message.Lookup("body")
            end if
        else
            field_body = message["body"]
        end if
    end if

    if field_body <> invalid then
        if not __pb_scalarEqualsDefault(field_body, "string", "") then
            strValue = field_body
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

    field_proxied_by_trusted_bandaid = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("proxied_by_trusted_bandaid") then
                field_proxied_by_trusted_bandaid = message.Lookup("proxied_by_trusted_bandaid")
            else if message.DoesExist("proxiedByTrustedBandaid") then
                field_proxied_by_trusted_bandaid = message.Lookup("proxiedByTrustedBandaid")
            end if
        else
            field_proxied_by_trusted_bandaid = message["proxied_by_trusted_bandaid"]
            if field_proxied_by_trusted_bandaid = invalid then
                field_proxied_by_trusted_bandaid = message["proxiedByTrustedBandaid"]
            end if
        end if
    end if

    if field_proxied_by_trusted_bandaid <> invalid then
        if not __pb_scalarEqualsDefault(field_proxied_by_trusted_bandaid, "bool", false) then
            boolValue = field_proxied_by_trusted_bandaid
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
            __pb_writeVarint(bytes, 32)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_skip_response_encryption = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("skip_response_encryption") then
                field_skip_response_encryption = message.Lookup("skip_response_encryption")
            else if message.DoesExist("skipResponseEncryption") then
                field_skip_response_encryption = message.Lookup("skipResponseEncryption")
            end if
        else
            field_skip_response_encryption = message["skip_response_encryption"]
            if field_skip_response_encryption = invalid then
                field_skip_response_encryption = message["skipResponseEncryption"]
            end if
        end if
    end if

    if field_skip_response_encryption <> invalid then
        if not __pb_scalarEqualsDefault(field_skip_response_encryption, "bool", false) then
            boolValue = field_skip_response_encryption
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
            __pb_writeVarint(bytes, 48)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function OnesieInnertubeRequestDecode(encoded as String) as Object
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
                urlValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["url"] = urlValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                headersLength = lengthResult.value
                headersChildBytes = __pb_readBytes(bytes, cursor, headersLength)
                cursor = cursor + headersLength
                headersChild = __pb_byteArrayToBase64(headersChildBytes)
                headersValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("headers") then
                        headersValues = message["headers"]
                    end if
                end if
                if headersValues = invalid then
                    headersValues = CreateObject("roArray", 0, true)
                end if
                message["headers"] = headersValues
                headersValues.Push(HttpHeaderDecode(headersChild))
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
                bodyValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["body"] = bodyValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                proxied_by_trusted_bandaidValue = (valueResult.value <> 0)
                message["proxiedByTrustedBandaid"] = proxied_by_trusted_bandaidValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 6 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                skip_response_encryptionValue = (valueResult.value <> 0)
                message["skipResponseEncryption"] = skip_response_encryptionValue
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
    if message.DoesExist("url") = false then
        urlDefaultValue = ""
        message["url"] = urlDefaultValue
    end if
    if message.DoesExist("body") = false then
        bodyDefaultValue = ""
        message["body"] = bodyDefaultValue
    end if
    if message.DoesExist("proxiedByTrustedBandaid") = false then
        proxied_by_trusted_bandaidDefaultValue = false
        message["proxiedByTrustedBandaid"] = proxied_by_trusted_bandaidDefaultValue
    end if
    if message.DoesExist("skipResponseEncryption") = false then
        skip_response_encryptionDefaultValue = false
        message["skipResponseEncryption"] = skip_response_encryptionDefaultValue
    end if
    return message
end function
