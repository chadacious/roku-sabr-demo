' Auto-generated encoder/decoder for samples.PackedEnumMessage

function PackedEnumMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_choices = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("choices") then
                field_choices = message.Lookup("choices")
            end if
        else
            field_choices = message["choices"]
        end if
    end if

    choicesItems = invalid
    if field_choices <> invalid then
        if GetInterface(field_choices, "ifArray") <> invalid then
            choicesItems = field_choices
        else
            choicesSingle = CreateObject("roArray", 1, true)
            choicesSingle.Push(field_choices)
            choicesItems = choicesSingle
        end if
    end if

    if choicesItems <> invalid then
        choicesPacked = __pb_createByteArray()
        for each choicesItem in choicesItems
            numericValue = PackedEnumMessage_choices_normalizeEnum(choicesItem)
            __pb_writeVarint(choicesPacked, numericValue)
        end for
        if choicesPacked.Count() > 0 then
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, choicesPacked.Count())
            __pb_appendByteArray(bytes, choicesPacked)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function PackedEnumMessage_choices_normalizeEnum(value as Dynamic) as Integer
    values = PackedEnumMessage_choices_getEnumValues()
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

function PackedEnumMessage_choices_enumName(value as Integer) as Dynamic
    names = PackedEnumMessage_choices_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function PackedEnumMessage_choices_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "PackedEnumMessage_choices_EnumValues"
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

function PackedEnumMessage_choices_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "PackedEnumMessage_choices_EnumNames"
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

function PackedEnumMessageDecode(encoded as String) as Object
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
            choicesValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("choices") then
                    choicesValues = message["choices"]
                end if
            end if
            if choicesValues = invalid then
                choicesValues = CreateObject("roArray", 0, true)
            end if
            message["choices"] = choicesValues
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                choicesValues.Push(PackedEnumMessage_choices_enumName(numericValue))
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                choicesPackEnd = cursor + lengthResult.value
                while cursor < choicesPackEnd
                    valueResult = __pb_readVarint64(bytes, cursor)
                    cursor = valueResult.nextIndex
                    numericValue = __pb_toSigned32FromString(valueResult.value)
                    choicesValues.Push(PackedEnumMessage_choices_enumName(numericValue))
                end while
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
    if message.DoesExist("choices") = false then
        choicesDefaultValues = CreateObject("roArray", 0, true)
        message["choices"] = choicesDefaultValues
    end if
    return message
end function
