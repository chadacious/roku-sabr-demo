' Auto-generated encoder/decoder for misc.PlaybackAuthorization

function PlaybackAuthorizationEncode(message as Object) as String
    fieldMap = {}
    fieldMap["authorized_formats"] = "authorizedFormats"
    fieldMap["sabr_license_constraint"] = "sabrLicenseConstraint"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_authorized_formats = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("authorized_formats") then
                field_authorized_formats = message.Lookup("authorized_formats")
            else if message.DoesExist("authorizedFormats") then
                field_authorized_formats = message.Lookup("authorizedFormats")
            end if
        else
            field_authorized_formats = message["authorized_formats"]
            if field_authorized_formats = invalid then
                field_authorized_formats = message["authorizedFormats"]
            end if
        end if
    end if

    authorized_formatsItems = invalid
    if field_authorized_formats <> invalid then
        if GetInterface(field_authorized_formats, "ifArray") <> invalid then
            authorized_formatsItems = field_authorized_formats
        else
            authorized_formatsSingle = CreateObject("roArray", 1, true)
            authorized_formatsSingle.Push(field_authorized_formats)
            authorized_formatsItems = authorized_formatsSingle
        end if
    end if

    if authorized_formatsItems <> invalid then
        for each authorized_formatsItem in authorized_formatsItems
            if authorized_formatsItem <> invalid then
                authorized_formatsEncoded = AuthorizedFormatEncode(authorized_formatsItem)
                authorized_formatsChildBytes = __pb_fromBase64(authorized_formatsEncoded)
                __pb_writeVarint(bytes, 10)
                __pb_writeVarint(bytes, authorized_formatsChildBytes.Count())
                __pb_appendByteArray(bytes, authorized_formatsChildBytes)
            end if
        end for
    end if

    field_sabr_license_constraint = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sabr_license_constraint") then
                field_sabr_license_constraint = message.Lookup("sabr_license_constraint")
            else if message.DoesExist("sabrLicenseConstraint") then
                field_sabr_license_constraint = message.Lookup("sabrLicenseConstraint")
            end if
        else
            field_sabr_license_constraint = message["sabr_license_constraint"]
            if field_sabr_license_constraint = invalid then
                field_sabr_license_constraint = message["sabrLicenseConstraint"]
            end if
        end if
    end if

    if field_sabr_license_constraint <> invalid then
        dataBytes = __pb_createByteArray()
        if field_sabr_license_constraint <> invalid then
            valueType = Type(field_sabr_license_constraint)
            if valueType = "String" or valueType = "roString" then
                dataBytes.FromBase64String(field_sabr_license_constraint)
            else if valueType = "roByteArray" then
                __pb_appendByteArray(dataBytes, field_sabr_license_constraint)
            end if
        end if
        __pb_writeVarint(bytes, 18)
        __pb_writeVarint(bytes, dataBytes.Count())
        __pb_appendByteArray(bytes, dataBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function PlaybackAuthorizationDecode(encoded as String) as Object
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
                authorized_formatsLength = lengthResult.value
                authorized_formatsChildBytes = __pb_readBytes(bytes, cursor, authorized_formatsLength)
                cursor = cursor + authorized_formatsLength
                authorized_formatsChild = __pb_byteArrayToBase64(authorized_formatsChildBytes)
                authorized_formatsValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("authorizedFormats") then
                        authorized_formatsValues = message["authorizedFormats"]
                    end if
                end if
                if authorized_formatsValues = invalid then
                    authorized_formatsValues = CreateObject("roArray", 0, true)
                end if
                message["authorizedFormats"] = authorized_formatsValues
                authorized_formatsValues.Push(AuthorizedFormatDecode(authorized_formatsChild))
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
                sabr_license_constraintRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                sabr_license_constraintValue = __pb_byteArrayToBase64(sabr_license_constraintRaw)
                message["sabrLicenseConstraint"] = sabr_license_constraintValue
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
