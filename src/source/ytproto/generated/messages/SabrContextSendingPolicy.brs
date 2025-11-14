' Auto-generated encoder/decoder for video_streaming.SabrContextSendingPolicy

function SabrContextSendingPolicyEncode(message as Object) as String
    fieldMap = {}
    fieldMap["start_policy"] = "startPolicy"
    fieldMap["stop_policy"] = "stopPolicy"
    fieldMap["discard_policy"] = "discardPolicy"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_start_policy = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("start_policy") then
                field_start_policy = message.Lookup("start_policy")
            else if message.DoesExist("startPolicy") then
                field_start_policy = message.Lookup("startPolicy")
            end if
        else
            field_start_policy = message["start_policy"]
            if field_start_policy = invalid then
                field_start_policy = message["startPolicy"]
            end if
        end if
    end if

    start_policyItems = invalid
    if field_start_policy <> invalid then
        if GetInterface(field_start_policy, "ifArray") <> invalid then
            start_policyItems = field_start_policy
        else
            start_policySingle = CreateObject("roArray", 1, true)
            start_policySingle.Push(field_start_policy)
            start_policyItems = start_policySingle
        end if
    end if

    if start_policyItems <> invalid then
        for each start_policyItem in start_policyItems
            normalized = __pb_normalizeSigned32(start_policyItem)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end for
    end if

    field_stop_policy = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("stop_policy") then
                field_stop_policy = message.Lookup("stop_policy")
            else if message.DoesExist("stopPolicy") then
                field_stop_policy = message.Lookup("stopPolicy")
            end if
        else
            field_stop_policy = message["stop_policy"]
            if field_stop_policy = invalid then
                field_stop_policy = message["stopPolicy"]
            end if
        end if
    end if

    stop_policyItems = invalid
    if field_stop_policy <> invalid then
        if GetInterface(field_stop_policy, "ifArray") <> invalid then
            stop_policyItems = field_stop_policy
        else
            stop_policySingle = CreateObject("roArray", 1, true)
            stop_policySingle.Push(field_stop_policy)
            stop_policyItems = stop_policySingle
        end if
    end if

    if stop_policyItems <> invalid then
        for each stop_policyItem in stop_policyItems
            normalized = __pb_normalizeSigned32(stop_policyItem)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end for
    end if

    field_discard_policy = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("discard_policy") then
                field_discard_policy = message.Lookup("discard_policy")
            else if message.DoesExist("discardPolicy") then
                field_discard_policy = message.Lookup("discardPolicy")
            end if
        else
            field_discard_policy = message["discard_policy"]
            if field_discard_policy = invalid then
                field_discard_policy = message["discardPolicy"]
            end if
        end if
    end if

    discard_policyItems = invalid
    if field_discard_policy <> invalid then
        if GetInterface(field_discard_policy, "ifArray") <> invalid then
            discard_policyItems = field_discard_policy
        else
            discard_policySingle = CreateObject("roArray", 1, true)
            discard_policySingle.Push(field_discard_policy)
            discard_policyItems = discard_policySingle
        end if
    end if

    if discard_policyItems <> invalid then
        for each discard_policyItem in discard_policyItems
            normalized = __pb_normalizeSigned32(discard_policyItem)
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint(bytes, normalized)
        end for
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function SabrContextSendingPolicyDecode(encoded as String) as Object
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
            start_policyValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("startPolicy") then
                    start_policyValues = message["startPolicy"]
                end if
            end if
            if start_policyValues = invalid then
                start_policyValues = CreateObject("roArray", 0, true)
            end if
            message["startPolicy"] = start_policyValues
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                start_policyValues.Push(__pb_toSigned32FromString(valueResult.value))
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                start_policyPackEnd = cursor + lengthResult.value
                while cursor < start_policyPackEnd
                    valueResult = __pb_readVarint64(bytes, cursor)
                    cursor = valueResult.nextIndex
                    start_policyValues.Push(__pb_toSigned32FromString(valueResult.value))
                end while
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            stop_policyValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("stopPolicy") then
                    stop_policyValues = message["stopPolicy"]
                end if
            end if
            if stop_policyValues = invalid then
                stop_policyValues = CreateObject("roArray", 0, true)
            end if
            message["stopPolicy"] = stop_policyValues
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                stop_policyValues.Push(__pb_toSigned32FromString(valueResult.value))
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                stop_policyPackEnd = cursor + lengthResult.value
                while cursor < stop_policyPackEnd
                    valueResult = __pb_readVarint64(bytes, cursor)
                    cursor = valueResult.nextIndex
                    stop_policyValues.Push(__pb_toSigned32FromString(valueResult.value))
                end while
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            discard_policyValues = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("discardPolicy") then
                    discard_policyValues = message["discardPolicy"]
                end if
            end if
            if discard_policyValues = invalid then
                discard_policyValues = CreateObject("roArray", 0, true)
            end if
            message["discardPolicy"] = discard_policyValues
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                discard_policyValues.Push(__pb_toSigned32FromString(valueResult.value))
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                discard_policyPackEnd = cursor + lengthResult.value
                while cursor < discard_policyPackEnd
                    valueResult = __pb_readVarint64(bytes, cursor)
                    cursor = valueResult.nextIndex
                    discard_policyValues.Push(__pb_toSigned32FromString(valueResult.value))
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
    return message
end function
