' Auto-generated encoder/decoder for video_streaming.OnesieInnertubeResponse

function OnesieInnertubeResponseEncode(message as Object) as String
    fieldMap = {}
    fieldMap["onesie_proxy_status"] = "onesieProxyStatus"
    fieldMap["http_status"] = "httpStatus"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_onesie_proxy_status = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("onesie_proxy_status") then
                field_onesie_proxy_status = message.Lookup("onesie_proxy_status")
            else if message.DoesExist("onesieProxyStatus") then
                field_onesie_proxy_status = message.Lookup("onesieProxyStatus")
            end if
        else
            field_onesie_proxy_status = message["onesie_proxy_status"]
            if field_onesie_proxy_status = invalid then
                field_onesie_proxy_status = message["onesieProxyStatus"]
            end if
        end if
    end if

    if field_onesie_proxy_status <> invalid then
        numericValue = OnesieInnertubeResponse_onesie_proxy_status_normalizeEnum(field_onesie_proxy_status)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    field_http_status = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("http_status") then
                field_http_status = message.Lookup("http_status")
            else if message.DoesExist("httpStatus") then
                field_http_status = message.Lookup("httpStatus")
            end if
        else
            field_http_status = message["http_status"]
            if field_http_status = invalid then
                field_http_status = message["httpStatus"]
            end if
        end if
    end if

    if field_http_status <> invalid then
        if not __pb_scalarEqualsDefault(field_http_status, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_http_status)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
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
                __pb_writeVarint(bytes, 26)
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
        if not __pb_scalarEqualsDefault(field_body, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_body <> invalid then
                valueType = Type(field_body)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_body)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_body)
                end if
            end if
            __pb_writeVarint(bytes, 34)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function OnesieInnertubeResponse_onesie_proxy_status_normalizeEnum(value as Dynamic) as Integer
    values = OnesieInnertubeResponse_onesie_proxy_status_getEnumValues()
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

function OnesieInnertubeResponse_onesie_proxy_status_enumName(value as Integer) as Dynamic
    names = OnesieInnertubeResponse_onesie_proxy_status_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function OnesieInnertubeResponse_onesie_proxy_status_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "OnesieInnertubeResponse_onesie_proxy_status_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["BACKEND_ERROR"] = 7
    table["CLIENT_ERROR"] = 8
    table["DECOMPRESSION_FAILED"] = 11
    table["DECRYPTION_FAILED"] = 2
    table["INVALID_CONTENT_TYPE"] = 6
    table["INVALID_X_FORWARDED_FOR"] = 5
    table["JSON_PARSING_FAILED"] = 12
    table["MISSING_CRYPTER"] = 9
    table["MISSING_X_FORWARDED_FOR"] = 4
    table["OK"] = 1
    table["PARSING_FAILED"] = 3
    table["RESPONSE_JSON_SERIALIZATION_FAILED"] = 10
    table["UNKNOWN"] = 0
    table["UNKNOWN_COMPRESSION_TYPE"] = 13
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function OnesieInnertubeResponse_onesie_proxy_status_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "OnesieInnertubeResponse_onesie_proxy_status_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "UNKNOWN"
    table["1"] = "OK"
    table["2"] = "DECRYPTION_FAILED"
    table["3"] = "PARSING_FAILED"
    table["4"] = "MISSING_X_FORWARDED_FOR"
    table["5"] = "INVALID_X_FORWARDED_FOR"
    table["6"] = "INVALID_CONTENT_TYPE"
    table["7"] = "BACKEND_ERROR"
    table["8"] = "CLIENT_ERROR"
    table["9"] = "MISSING_CRYPTER"
    table["10"] = "RESPONSE_JSON_SERIALIZATION_FAILED"
    table["11"] = "DECOMPRESSION_FAILED"
    table["12"] = "JSON_PARSING_FAILED"
    table["13"] = "UNKNOWN_COMPRESSION_TYPE"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function OnesieInnertubeResponseDecode(encoded as String) as Object
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
                numericValue = __pb_toSigned32FromString(valueResult.value)
                onesie_proxy_statusEnumValue = OnesieInnertubeResponse_onesie_proxy_status_enumName(numericValue)
                message["onesieProxyStatus"] = onesie_proxy_statusEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                http_statusValue = __pb_toSigned32FromString(valueResult.value)
                message["httpStatus"] = http_statusValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
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
        else if fieldNumber = 4 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                bodyRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                bodyValue = __pb_byteArrayToBase64(bodyRaw)
                message["body"] = bodyValue
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
    if message.DoesExist("onesieProxyStatus") = false then
        onesie_proxy_statusDefaultValue = OnesieInnertubeResponse_onesie_proxy_status_enumName(0)
        message["onesieProxyStatus"] = onesie_proxy_statusDefaultValue
    end if
    if message.DoesExist("httpStatus") = false then
        http_statusDefaultValue = 0
        message["httpStatus"] = http_statusDefaultValue
    end if
    if message.DoesExist("body") = false then
        bodyDefaultValue = ""
        message["body"] = bodyDefaultValue
    end if
    return message
end function
