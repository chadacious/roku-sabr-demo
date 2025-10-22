' Auto-generated encoder/decoder for video_streaming.StreamProtectionStatus

function StreamProtectionStatusEncode(message as Object) as String
    fieldMap = {}
    fieldMap["max_retries"] = "maxRetries"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_status = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("status") then
                field_status = message.Lookup("status")
            end if
        else
            field_status = message["status"]
        end if
    end if

    if field_status <> invalid then
        if not __pb_scalarEqualsDefault(field_status, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_status)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_max_retries = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_retries") then
                field_max_retries = message.Lookup("max_retries")
            else if message.DoesExist("maxRetries") then
                field_max_retries = message.Lookup("maxRetries")
            end if
        else
            field_max_retries = message["max_retries"]
            if field_max_retries = invalid then
                field_max_retries = message["maxRetries"]
            end if
        end if
    end if

    if field_max_retries <> invalid then
        if not __pb_scalarEqualsDefault(field_max_retries, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_max_retries)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function StreamProtectionStatusDecode(encoded as String) as Object
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
                statusValue = __pb_toSigned32FromString(valueResult.value)
                message["status"] = statusValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_retriesValue = __pb_toSigned32FromString(valueResult.value)
                message["maxRetries"] = max_retriesValue
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
    if message.DoesExist("status") = false then
        statusDefaultValue = 0
        message["status"] = statusDefaultValue
    end if
    if message.DoesExist("maxRetries") = false then
        max_retriesDefaultValue = 0
        message["maxRetries"] = max_retriesDefaultValue
    end if
    return message
end function
