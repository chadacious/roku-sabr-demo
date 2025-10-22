' Auto-generated encoder/decoder for samples.PackedUint32Message

function PackedUint32MessageEncode(message as Object) as String
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
        valuesPacked = __pb_createByteArray()
        for each valuesItem in valuesItems
            normalized = __pb_normalizeUnsigned32(valuesItem)
            __pb_writeVarint64(valuesPacked, normalized)
        end for
        valuesPackedLength = valuesPacked.Count()
        if valuesPackedLength > 0 then
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, valuesPackedLength)
            __pb_appendByteArray(bytes, valuesPacked)
        else if valuesItems.Count() = 0 then
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

function PackedUint32MessageDecode(encoded as String) as Object
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
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                valuesValues.Push(__pb_toUnsigned32(valueResult.value))
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                valuesPackEnd = cursor + lengthResult.value
                while cursor < valuesPackEnd
                    valueResult = __pb_readVarint(bytes, cursor)
                    cursor = valueResult.nextIndex
                    valuesValues.Push(__pb_toUnsigned32(valueResult.value))
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
