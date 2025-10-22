' Auto-generated encoder/decoder for video_streaming.SabrContextUpdate

function SabrContextUpdateEncode(message as Object) as String
    fieldMap = {}
    fieldMap["send_by_default"] = "sendByDefault"
    fieldMap["write_policy"] = "writePolicy"
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
        if not __pb_scalarEqualsDefault(field_type, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_type)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_scope = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("scope") then
                field_scope = message.Lookup("scope")
            end if
        else
            field_scope = message["scope"]
        end if
    end if

    if field_scope <> invalid then
        numericValue = SabrContextUpdate_scope_normalizeEnum(field_scope)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    field_value = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("value") then
                field_value = message.Lookup("value")
            end if
        else
            field_value = message["value"]
        end if
    end if

    if field_value <> invalid then
        if not __pb_scalarEqualsDefault(field_value, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_value <> invalid then
                valueType = Type(field_value)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_value)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_value)
                end if
            end if
            __pb_writeVarint(bytes, 26)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_send_by_default = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("send_by_default") then
                field_send_by_default = message.Lookup("send_by_default")
            else if message.DoesExist("sendByDefault") then
                field_send_by_default = message.Lookup("sendByDefault")
            end if
        else
            field_send_by_default = message["send_by_default"]
            if field_send_by_default = invalid then
                field_send_by_default = message["sendByDefault"]
            end if
        end if
    end if

    if field_send_by_default <> invalid then
        if not __pb_scalarEqualsDefault(field_send_by_default, "bool", false) then
            boolValue = field_send_by_default
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

    field_write_policy = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("write_policy") then
                field_write_policy = message.Lookup("write_policy")
            else if message.DoesExist("writePolicy") then
                field_write_policy = message.Lookup("writePolicy")
            end if
        else
            field_write_policy = message["write_policy"]
            if field_write_policy = invalid then
                field_write_policy = message["writePolicy"]
            end if
        end if
    end if

    if field_write_policy <> invalid then
        numericValue = SabrContextUpdate_write_policy_normalizeEnum(field_write_policy)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 40)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function SabrContextUpdate_scope_normalizeEnum(value as Dynamic) as Integer
    values = SabrContextUpdate_scope_getEnumValues()
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

function SabrContextUpdate_scope_enumName(value as Integer) as Dynamic
    names = SabrContextUpdate_scope_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function SabrContextUpdate_scope_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "SabrContextUpdate_scope_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["CONTENT_ADS"] = 4
    table["PLAYBACK"] = 1
    table["REQUEST"] = 2
    table["UNKNOWN"] = 0
    table["WATCH_ENDPOINT"] = 3
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function SabrContextUpdate_scope_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "SabrContextUpdate_scope_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "UNKNOWN"
    table["1"] = "PLAYBACK"
    table["2"] = "REQUEST"
    table["3"] = "WATCH_ENDPOINT"
    table["4"] = "CONTENT_ADS"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function SabrContextUpdate_write_policy_normalizeEnum(value as Dynamic) as Integer
    values = SabrContextUpdate_write_policy_getEnumValues()
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

function SabrContextUpdate_write_policy_enumName(value as Integer) as Dynamic
    names = SabrContextUpdate_write_policy_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function SabrContextUpdate_write_policy_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "SabrContextUpdate_write_policy_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["KEEP_EXISTING"] = 2
    table["OVERWRITE"] = 1
    table["UNSPECIFIED"] = 0
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function SabrContextUpdate_write_policy_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "SabrContextUpdate_write_policy_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "UNSPECIFIED"
    table["1"] = "OVERWRITE"
    table["2"] = "KEEP_EXISTING"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function SabrContextUpdateDecode(encoded as String) as Object
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
                typeValue = __pb_toSigned32FromString(valueResult.value)
                message["type"] = typeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                scopeEnumValue = SabrContextUpdate_scope_enumName(numericValue)
                message["scope"] = scopeEnumValue
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
                valueRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                valueValue = __pb_byteArrayToBase64(valueRaw)
                message["value"] = valueValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                send_by_defaultValue = (valueResult.value <> 0)
                message["sendByDefault"] = send_by_defaultValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                write_policyEnumValue = SabrContextUpdate_write_policy_enumName(numericValue)
                message["writePolicy"] = write_policyEnumValue
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
        typeDefaultValue = 0
        message["type"] = typeDefaultValue
    end if
    if message.DoesExist("scope") = false then
        scopeDefaultValue = SabrContextUpdate_scope_enumName(0)
        message["scope"] = scopeDefaultValue
    end if
    if message.DoesExist("value") = false then
        valueDefaultValue = ""
        message["value"] = valueDefaultValue
    end if
    if message.DoesExist("sendByDefault") = false then
        send_by_defaultDefaultValue = false
        message["sendByDefault"] = send_by_defaultDefaultValue
    end if
    if message.DoesExist("writePolicy") = false then
        write_policyDefaultValue = SabrContextUpdate_write_policy_enumName(0)
        message["writePolicy"] = write_policyDefaultValue
    end if
    return message
end function
