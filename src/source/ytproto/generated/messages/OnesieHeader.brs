' Auto-generated encoder/decoder for video_streaming.OnesieHeader

function OnesieHeaderEncode(message as Object) as String
    fieldMap = {}
    fieldMap["video_id"] = "videoId"
    fieldMap["crypto_params"] = "cryptoParams"
    fieldMap["last_modified"] = "lastModified"
    fieldMap["expected_media_size_bytes"] = "expectedMediaSizeBytes"
    fieldMap["restricted_formats"] = "restrictedFormats"
    fieldMap["sequence_number"] = "sequenceNumber"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_type = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("type") then
                field_type = message.Lookup("type")
            end if
        else
            field_type = message["type"]
        end if
    end if

    if field_type <> invalid then
        numericValue = OnesieHeader_type_normalizeEnum(field_type)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, numericValue)
        end if
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
            __pb_writeVarint(bytes, 18)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end if
    end if

    field_itag = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("itag") then
                field_itag = message.Lookup("itag")
            end if
        else
            field_itag = message["itag"]
        end if
    end if

    if field_itag <> invalid then
        if not __pb_scalarEqualsDefault(field_itag, "string", "") then
            strValue = field_itag
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

    field_crypto_params = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("crypto_params") then
                field_crypto_params = message.Lookup("crypto_params")
            else if message.DoesExist("cryptoParams") then
                field_crypto_params = message.Lookup("cryptoParams")
            end if
        else
            field_crypto_params = message["crypto_params"]
            if field_crypto_params = invalid then
                field_crypto_params = message["cryptoParams"]
            end if
        end if
    end if

    if field_crypto_params <> invalid then
        crypto_paramsEncoded = CryptoParamsEncode(field_crypto_params)
        crypto_paramsChildBytes = __pb_fromBase64(crypto_paramsEncoded)
        __pb_writeVarint(bytes, 34)
        __pb_writeVarint(bytes, crypto_paramsChildBytes.Count())
        __pb_appendByteArray(bytes, crypto_paramsChildBytes)
    end if

    field_last_modified = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("last_modified") then
                field_last_modified = message.Lookup("last_modified")
            else if message.DoesExist("lastModified") then
                field_last_modified = message.Lookup("lastModified")
            end if
        else
            field_last_modified = message["last_modified"]
            if field_last_modified = invalid then
                field_last_modified = message["lastModified"]
            end if
        end if
    end if

    if field_last_modified <> invalid then
        if not __pb_scalarEqualsDefault(field_last_modified, "uint64", "0") then
            __pb_writeVarint(bytes, 40)
            __pb_writeVarint64(bytes, field_last_modified)
        end if
    end if

    field_expected_media_size_bytes = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("expected_media_size_bytes") then
                field_expected_media_size_bytes = message.Lookup("expected_media_size_bytes")
            else if message.DoesExist("expectedMediaSizeBytes") then
                field_expected_media_size_bytes = message.Lookup("expectedMediaSizeBytes")
            end if
        else
            field_expected_media_size_bytes = message["expected_media_size_bytes"]
            if field_expected_media_size_bytes = invalid then
                field_expected_media_size_bytes = message["expectedMediaSizeBytes"]
            end if
        end if
    end if

    if field_expected_media_size_bytes <> invalid then
        if not __pb_scalarEqualsDefault(field_expected_media_size_bytes, "int64", "0") then
            __pb_writeVarint(bytes, 56)
            __pb_writeVarint64(bytes, field_expected_media_size_bytes)
        end if
    end if

    field_restricted_formats = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("restricted_formats") then
                field_restricted_formats = message.Lookup("restricted_formats")
            else if message.DoesExist("restrictedFormats") then
                field_restricted_formats = message.Lookup("restrictedFormats")
            end if
        else
            field_restricted_formats = message["restricted_formats"]
            if field_restricted_formats = invalid then
                field_restricted_formats = message["restrictedFormats"]
            end if
        end if
    end if

    restricted_formatsItems = invalid
    if field_restricted_formats <> invalid then
        if GetInterface(field_restricted_formats, "ifArray") <> invalid then
            restricted_formatsItems = field_restricted_formats
        else
            restricted_formatsSingle = CreateObject("roArray", 1, true)
            restricted_formatsSingle.Push(field_restricted_formats)
            restricted_formatsItems = restricted_formatsSingle
        end if
    end if

    if restricted_formatsItems <> invalid then
        for each restricted_formatsItem in restricted_formatsItems
            strValue = restricted_formatsItem
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 90)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end for
    end if

    field_xtags = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("xtags") then
                field_xtags = message.Lookup("xtags")
            end if
        else
            field_xtags = message["xtags"]
        end if
    end if

    if field_xtags <> invalid then
        if not __pb_scalarEqualsDefault(field_xtags, "string", "") then
            strValue = field_xtags
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 122)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end if
    end if

    field_sequence_number = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sequence_number") then
                field_sequence_number = message.Lookup("sequence_number")
            else if message.DoesExist("sequenceNumber") then
                field_sequence_number = message.Lookup("sequenceNumber")
            end if
        else
            field_sequence_number = message["sequence_number"]
            if field_sequence_number = invalid then
                field_sequence_number = message["sequenceNumber"]
            end if
        end if
    end if

    if field_sequence_number <> invalid then
        if not __pb_scalarEqualsDefault(field_sequence_number, "int64", "0") then
            __pb_writeVarint(bytes, 144)
            __pb_writeVarint64(bytes, field_sequence_number)
        end if
    end if

    field_field23 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field23") then
                field_field23 = message.Lookup("field23")
            end if
        else
            field_field23 = message["field23"]
        end if
    end if

    if field_field23 <> invalid then
        field23Encoded = VideoStreamingOnesieHeaderUnknownMessage1Encode(field_field23)
        field23ChildBytes = __pb_fromBase64(field23Encoded)
        __pb_writeVarint(bytes, 186)
        __pb_writeVarint(bytes, field23ChildBytes.Count())
        __pb_appendByteArray(bytes, field23ChildBytes)
    end if

    field_field34 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field34") then
                field_field34 = message.Lookup("field34")
            end if
        else
            field_field34 = message["field34"]
        end if
    end if

    if field_field34 <> invalid then
        field34Encoded = VideoStreamingOnesieHeaderUnknownMessage2Encode(field_field34)
        field34ChildBytes = __pb_fromBase64(field34Encoded)
        __pb_writeVarint(bytes, 274)
        __pb_writeVarint(bytes, field34ChildBytes.Count())
        __pb_appendByteArray(bytes, field34ChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function OnesieHeader_type_normalizeEnum(value as Dynamic) as Integer
    values = OnesieHeader_type_getEnumValues()
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

function OnesieHeader_type_enumName(value as Integer) as Dynamic
    names = OnesieHeader_type_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function OnesieHeader_type_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "OnesieHeader_type_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["ACK"] = 5
    table["CLEAR_INIT_SEGMENT"] = 4
    table["CLEAR_MEDIA"] = 3
    table["ENCRYPTED_INNERTUBE_RESPONSE_PART"] = 25
    table["LAST_HIGH_PRIORITY_HINT"] = 9
    table["MEDIA"] = 1
    table["MEDIA_DECRYPTION_KEY"] = 2
    table["MEDIA_SIZE_HINT"] = 7
    table["MEDIA_STREAMER_HOSTNAME"] = 6
    table["ONESIE_PLAYER_RESPONSE"] = 0
    table["PLAYER_SERVICE_RESPONSE_PUSH_URL"] = 8
    table["STREAM_METADATA"] = 16
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function OnesieHeader_type_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "OnesieHeader_type_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "ONESIE_PLAYER_RESPONSE"
    table["1"] = "MEDIA"
    table["2"] = "MEDIA_DECRYPTION_KEY"
    table["3"] = "CLEAR_MEDIA"
    table["4"] = "CLEAR_INIT_SEGMENT"
    table["5"] = "ACK"
    table["6"] = "MEDIA_STREAMER_HOSTNAME"
    table["7"] = "MEDIA_SIZE_HINT"
    table["8"] = "PLAYER_SERVICE_RESPONSE_PUSH_URL"
    table["9"] = "LAST_HIGH_PRIORITY_HINT"
    table["16"] = "STREAM_METADATA"
    table["25"] = "ENCRYPTED_INNERTUBE_RESPONSE_PART"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function OnesieHeaderDecode(encoded as String) as Object
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
                typeEnumValue = OnesieHeader_type_enumName(numericValue)
                message["type"] = typeEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
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
        else if fieldNumber = 3 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                itagValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["itag"] = itagValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                crypto_paramsLength = lengthResult.value
                crypto_paramsChildBytes = __pb_readBytes(bytes, cursor, crypto_paramsLength)
                cursor = cursor + crypto_paramsLength
                crypto_paramsChild = __pb_byteArrayToBase64(crypto_paramsChildBytes)
                crypto_paramsDecoded = CryptoParamsDecode(crypto_paramsChild)
                message["cryptoParams"] = crypto_paramsDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                last_modifiedValue = valueResult.value
                message["lastModified"] = last_modifiedValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 7 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                expected_media_size_bytesValue = __pb_toSignedInt64String(valueResult.value)
                message["expectedMediaSizeBytes"] = expected_media_size_bytesValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 11 then
            restricted_formatsValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("restrictedFormats") then
                    restricted_formatsValues = message["restrictedFormats"]
                end if
            end if
            if restricted_formatsValues = invalid then
                restricted_formatsValues = CreateObject("roArray", 0, true)
            end if
            message["restrictedFormats"] = restricted_formatsValues
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                fieldValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                restricted_formatsValues.Push(fieldValue)
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                restricted_formatsPackEnd = cursor + lengthResult.value
                while cursor < restricted_formatsPackEnd
                    lengthResult = __pb_readVarint(bytes, cursor)
                    cursor = lengthResult.nextIndex
                    strLength = lengthResult.value
                    fieldValue = __pb_readString(bytes, cursor, strLength)
                    cursor = cursor + strLength
                    restricted_formatsValues.Push(fieldValue)
                end while
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 15 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                xtagsValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["xtags"] = xtagsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 18 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                sequence_numberValue = __pb_toSignedInt64String(valueResult.value)
                message["sequenceNumber"] = sequence_numberValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 23 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field23Length = lengthResult.value
                field23ChildBytes = __pb_readBytes(bytes, cursor, field23Length)
                cursor = cursor + field23Length
                field23Child = __pb_byteArrayToBase64(field23ChildBytes)
                field23Decoded = VideoStreamingOnesieHeaderUnknownMessage1Decode(field23Child)
                message["field23"] = field23Decoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 34 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field34Length = lengthResult.value
                field34ChildBytes = __pb_readBytes(bytes, cursor, field34Length)
                cursor = cursor + field34Length
                field34Child = __pb_byteArrayToBase64(field34ChildBytes)
                field34Decoded = VideoStreamingOnesieHeaderUnknownMessage2Decode(field34Child)
                message["field34"] = field34Decoded
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
    if message.DoesExist("type") = false then
        typeDefaultValue = OnesieHeader_type_enumName(0)
        message["type"] = typeDefaultValue
    end if
    if message.DoesExist("videoId") = false then
        video_idDefaultValue = ""
        message["videoId"] = video_idDefaultValue
    end if
    if message.DoesExist("itag") = false then
        itagDefaultValue = ""
        message["itag"] = itagDefaultValue
    end if
    if message.DoesExist("lastModified") = false then
        last_modifiedDefaultValue = "0"
        message["lastModified"] = last_modifiedDefaultValue
    end if
    if message.DoesExist("expectedMediaSizeBytes") = false then
        expected_media_size_bytesDefaultValue = __pb_toSignedInt64String("0")
        message["expectedMediaSizeBytes"] = expected_media_size_bytesDefaultValue
    end if
    if message.DoesExist("xtags") = false then
        xtagsDefaultValue = ""
        message["xtags"] = xtagsDefaultValue
    end if
    if message.DoesExist("sequenceNumber") = false then
        sequence_numberDefaultValue = __pb_toSignedInt64String("0")
        message["sequenceNumber"] = sequence_numberDefaultValue
    end if
    return message
end function
