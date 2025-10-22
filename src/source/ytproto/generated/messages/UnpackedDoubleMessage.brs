' Auto-generated encoder/decoder for samples.UnpackedDoubleMessage

function UnpackedDoubleMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_values = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("values") then
                field_values = message.Lookup("values")
            end if
        else
            field_values = message["values"]
        end if
    end if

    valuesItems = invalid
    if field_values <> invalid then
        if GetInterface(field_values, "ifArray") <> invalid then
            valuesItems = field_values
        else
            valuesSingle = CreateObject("roArray", 1, true)
            valuesSingle.Push(field_values)
            valuesItems = valuesSingle
        end if
    end if

    if valuesItems <> invalid then
        for each valuesItem in valuesItems
            normalized = __pb_toLong(valuesItem)
            __pb_writeVarint(bytes, 9)
            __pb_writeFloat64(bytes, normalized)
        end for
        if valuesItems.Count() = 0 then
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, 0)
        end if
    else
        __pb_writeVarint(bytes, 10)
        __pb_writeVarint(bytes, 0)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function UnpackedDoubleMessageDecode(encoded as String) as Object
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
            valuesValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("values") then
                    valuesValues = message["values"]
                end if
            end if
            if valuesValues = invalid then
                valuesValues = CreateObject("roArray", 0, true)
            end if
            message["values"] = valuesValues
            if wireType = 1 then
                doubleResult = __pb_readFloat64(bytes, cursor)
                cursor = doubleResult.nextIndex
                valuesValues.Push(doubleResult.value)
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                valuesPackEnd = cursor + lengthResult.value
                while cursor < valuesPackEnd
                    doubleResult = __pb_readFloat64(bytes, cursor)
                    cursor = doubleResult.nextIndex
                    valuesValues.Push(doubleResult.value)
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
    if message.DoesExist("values") = false then
        valuesDefaultValues = CreateObject("roArray", 0, true)
        message["values"] = valuesDefaultValues
    end if
    return message
end function
