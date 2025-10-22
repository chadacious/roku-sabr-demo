' Auto-generated encoder/decoder for video_streaming.RequestCancellationPolicy.Item

function ItemEncode(message as Object) as String
    fieldMap = {}
    fieldMap["NK"] = "nK"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_fR = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("fR") then
                field_fR = message.Lookup("fR")
            end if
        else
            field_fR = message["fR"]
        end if
    end if

    if field_fR <> invalid then
        if not __pb_scalarEqualsDefault(field_fR, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_fR)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_NK = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("NK") then
                field_NK = message.Lookup("NK")
            else if message.DoesExist("nK") then
                field_NK = message.Lookup("nK")
            end if
        else
            field_NK = message["NK"]
            if field_NK = invalid then
                field_NK = message["nK"]
            end if
        end if
    end if

    if field_NK <> invalid then
        if not __pb_scalarEqualsDefault(field_NK, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_NK)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_minReadaheadMs = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("minReadaheadMs") then
                field_minReadaheadMs = message.Lookup("minReadaheadMs")
            end if
        else
            field_minReadaheadMs = message["minReadaheadMs"]
        end if
    end if

    if field_minReadaheadMs <> invalid then
        if not __pb_scalarEqualsDefault(field_minReadaheadMs, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_minReadaheadMs)
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function ItemDecode(encoded as String) as Object
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
                fRValue = __pb_toSigned32FromString(valueResult.value)
                message["fR"] = fRValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                NKValue = __pb_toSigned32FromString(valueResult.value)
                message["nK"] = NKValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                minReadaheadMsValue = __pb_toSigned32FromString(valueResult.value)
                message["minReadaheadMs"] = minReadaheadMsValue
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
    if message.DoesExist("fR") = false then
        fRDefaultValue = 0
        message["fR"] = fRDefaultValue
    end if
    if message.DoesExist("nK") = false then
        NKDefaultValue = 0
        message["nK"] = NKDefaultValue
    end if
    if message.DoesExist("minReadaheadMs") = false then
        minReadaheadMsDefaultValue = 0
        message["minReadaheadMs"] = minReadaheadMsDefaultValue
    end if
    return message
end function
