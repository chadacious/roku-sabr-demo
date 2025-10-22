' Auto-generated encoder/decoder for misc.IdentifierToken

function IdentifierTokenEncode(message as Object) as String
    fieldMap = {}
    fieldMap["request_number"] = "requestNumber"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_request_number = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("request_number") then
                field_request_number = message.Lookup("request_number")
            else if message.DoesExist("requestNumber") then
                field_request_number = message.Lookup("requestNumber")
            end if
        else
            field_request_number = message["request_number"]
            if field_request_number = invalid then
                field_request_number = message["requestNumber"]
            end if
        end if
    end if

    if field_request_number <> invalid then
        if not __pb_scalarEqualsDefault(field_request_number, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_request_number)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_field5 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field5") then
                field_field5 = message.Lookup("field5")
            end if
        else
            field_field5 = message["field5"]
        end if
    end if

    if field_field5 <> invalid then
        if not __pb_scalarEqualsDefault(field_field5, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field5)
            __pb_writeVarint(bytes, 40)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function IdentifierTokenDecode(encoded as String) as Object
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
                request_numberValue = __pb_toSigned32FromString(valueResult.value)
                message["requestNumber"] = request_numberValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field5Value = __pb_toSigned32FromString(valueResult.value)
                message["field5"] = field5Value
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
    if message.DoesExist("requestNumber") = false then
        request_numberDefaultValue = 0
        message["requestNumber"] = request_numberDefaultValue
    end if
    if message.DoesExist("field5") = false then
        field5DefaultValue = 0
        message["field5"] = field5DefaultValue
    end if
    return message
end function
