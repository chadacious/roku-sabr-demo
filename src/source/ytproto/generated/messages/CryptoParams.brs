' Auto-generated encoder/decoder for video_streaming.CryptoParams

function CryptoParamsEncode(message as Object) as String
    fieldMap = {}
    fieldMap["compression_type"] = "compressionType"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
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
            __pb_writeVarint(bytes, 34)
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
            __pb_writeVarint(bytes, 42)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_compression_type = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("compression_type") then
                field_compression_type = message.Lookup("compression_type")
            else if message.DoesExist("compressionType") then
                field_compression_type = message.Lookup("compressionType")
            end if
        else
            field_compression_type = message["compression_type"]
            if field_compression_type = invalid then
                field_compression_type = message["compressionType"]
            end if
        end if
    end if

    if field_compression_type <> invalid then
        numericValue = CryptoParams_compression_type_normalizeEnum(field_compression_type)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 48)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function CryptoParams_compression_type_normalizeEnum(value as Dynamic) as Integer
    values = CryptoParams_compression_type_getEnumValues()
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

function CryptoParams_compression_type_enumName(value as Integer) as Dynamic
    names = CryptoParams_compression_type_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function CryptoParams_compression_type_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "CryptoParams_compression_type_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["BROTLI"] = 2
    table["GZIP"] = 1
    table["UNKNOWN"] = 0
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function CryptoParams_compression_type_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "CryptoParams_compression_type_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "UNKNOWN"
    table["1"] = "GZIP"
    table["2"] = "BROTLI"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function CryptoParamsDecode(encoded as String) as Object
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
        if fieldNumber = 4 then
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
        else if fieldNumber = 5 then
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
        else if fieldNumber = 6 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                compression_typeEnumValue = CryptoParams_compression_type_enumName(numericValue)
                message["compressionType"] = compression_typeEnumValue
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
    if message.DoesExist("hmac") = false then
        hmacDefaultValue = ""
        message["hmac"] = hmacDefaultValue
    end if
    if message.DoesExist("iv") = false then
        ivDefaultValue = ""
        message["iv"] = ivDefaultValue
    end if
    if message.DoesExist("compressionType") = false then
        compression_typeDefaultValue = CryptoParams_compression_type_enumName(0)
        message["compressionType"] = compression_typeDefaultValue
    end if
    return message
end function
