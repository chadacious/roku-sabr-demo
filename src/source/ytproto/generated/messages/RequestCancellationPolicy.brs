' Auto-generated encoder/decoder for video_streaming.RequestCancellationPolicy

function RequestCancellationPolicyEncode(message as Object) as String
    fieldMap = {}
    fieldMap["N0"] = "n0"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_N0 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("N0") then
                field_N0 = message.Lookup("N0")
            else if message.DoesExist("n0") then
                field_N0 = message.Lookup("n0")
            end if
        else
            field_N0 = message["N0"]
            if field_N0 = invalid then
                field_N0 = message["n0"]
            end if
        end if
    end if

    if field_N0 <> invalid then
        if not __pb_scalarEqualsDefault(field_N0, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_N0)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_items = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("items") then
                field_items = message.Lookup("items")
            end if
        else
            field_items = message["items"]
        end if
    end if

    itemsItems = invalid
    if field_items <> invalid then
        if GetInterface(field_items, "ifArray") <> invalid then
            itemsItems = field_items
        else
            itemsSingle = CreateObject("roArray", 1, true)
            itemsSingle.Push(field_items)
            itemsItems = itemsSingle
        end if
    end if

    if itemsItems <> invalid then
        for each itemsItem in itemsItems
            if itemsItem <> invalid then
                itemsEncoded = ItemEncode(itemsItem)
                itemsChildBytes = __pb_fromBase64(itemsEncoded)
                __pb_writeVarint(bytes, 18)
                __pb_writeVarint(bytes, itemsChildBytes.Count())
                __pb_appendByteArray(bytes, itemsChildBytes)
            end if
        end for
    end if

    field_jq = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("jq") then
                field_jq = message.Lookup("jq")
            end if
        else
            field_jq = message["jq"]
        end if
    end if

    if field_jq <> invalid then
        if not __pb_scalarEqualsDefault(field_jq, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_jq)
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function RequestCancellationPolicyDecode(encoded as String) as Object
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
                N0Value = __pb_toSigned32FromString(valueResult.value)
                message["n0"] = N0Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                itemsLength = lengthResult.value
                itemsChildBytes = __pb_readBytes(bytes, cursor, itemsLength)
                cursor = cursor + itemsLength
                itemsChild = __pb_byteArrayToBase64(itemsChildBytes)
                itemsValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("items") then
                        itemsValues = message["items"]
                    end if
                end if
                if itemsValues = invalid then
                    itemsValues = CreateObject("roArray", 0, true)
                end if
                message["items"] = itemsValues
                itemsValues.Push(ItemDecode(itemsChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                jqValue = __pb_toSigned32FromString(valueResult.value)
                message["jq"] = jqValue
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
    if message.DoesExist("n0") = false then
        N0DefaultValue = 0
        message["n0"] = N0DefaultValue
    end if
    if message.DoesExist("jq") = false then
        jqDefaultValue = 0
        message["jq"] = jqDefaultValue
    end if
    return message
end function
