' Auto-generated encoder/decoder for video_streaming.SabrContextValue

function SabrContextValueEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_timing = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("timing") then
                field_timing = message.Lookup("timing")
            end if
        else
            field_timing = message["timing"]
        end if
    end if

    if field_timing <> invalid then
        timingEncoded = TimingInfoEncode(field_timing)
        timingChildBytes = __pb_fromBase64(timingEncoded)
        __pb_writeVarint(bytes, 10)
        __pb_writeVarint(bytes, timingChildBytes.Count())
        __pb_appendByteArray(bytes, timingChildBytes)
    end if

    field_signature = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("signature") then
                field_signature = message.Lookup("signature")
            end if
        else
            field_signature = message["signature"]
        end if
    end if

    if field_signature <> invalid then
        if not __pb_scalarEqualsDefault(field_signature, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_signature <> invalid then
                valueType = Type(field_signature)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_signature)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_signature)
                end if
            end if
            __pb_writeVarint(bytes, 18)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
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

function SabrContextValueDecode(encoded as String) as Object
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
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                timingLength = lengthResult.value
                timingChildBytes = __pb_readBytes(bytes, cursor, timingLength)
                cursor = cursor + timingLength
                timingChild = __pb_byteArrayToBase64(timingChildBytes)
                timingDecoded = TimingInfoDecode(timingChild)
                message["timing"] = timingDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                signatureRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                signatureValue = __pb_byteArrayToBase64(signatureRaw)
                message["signature"] = signatureValue
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
    if message.DoesExist("signature") = false then
        signatureDefaultValue = ""
        message["signature"] = signatureDefaultValue
    end if
    if message.DoesExist("field5") = false then
        field5DefaultValue = 0
        message["field5"] = field5DefaultValue
    end if
    return message
end function
