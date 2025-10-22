' Auto-generated encoder/decoder for samples.EnumMessage

function EnumMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_choice = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("choice") then
                field_choice = message.Lookup("choice")
            end if
        else
            field_choice = message["choice"]
        end if
    end if

    if field_choice <> invalid then
        numericValue = EnumMessage_choice_normalizeEnum(field_choice)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function EnumMessage_choice_normalizeEnum(value as Dynamic) as Integer
    values = EnumMessage_choice_getEnumValues()
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

function EnumMessage_choice_enumName(value as Integer) as Dynamic
    names = EnumMessage_choice_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function EnumMessage_choice_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "EnumMessage_choice_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["SAMPLE_ENUM_FIRST"] = 1
    table["SAMPLE_ENUM_SECOND"] = 2
    table["SAMPLE_ENUM_THIRD"] = 3
    table["SAMPLE_ENUM_UNKNOWN"] = 0
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function EnumMessage_choice_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "EnumMessage_choice_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "SAMPLE_ENUM_UNKNOWN"
    table["1"] = "SAMPLE_ENUM_FIRST"
    table["2"] = "SAMPLE_ENUM_SECOND"
    table["3"] = "SAMPLE_ENUM_THIRD"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function EnumMessageDecode(encoded as String) as Object
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
                choiceEnumValue = EnumMessage_choice_enumName(numericValue)
                message["choice"] = choiceEnumValue
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
    if message.DoesExist("choice") = false then
        choiceDefaultValue = EnumMessage_choice_enumName(0)
        message["choice"] = choiceDefaultValue
    end if
    return message
end function
