' Auto-generated encoder/decoder for video_streaming.UnknownMessage2

function VideoStreamingUnknownMessage2Encode(message as Object) as String
    bytes = __pb_createByteArray()
    field_field1 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field1") then
                field_field1 = message.Lookup("field1")
            end if
        else
            field_field1 = message["field1"]
        end if
    end if

    field1Items = invalid
    if field_field1 <> invalid then
        if GetInterface(field_field1, "ifArray") <> invalid then
            field1Items = field_field1
        else
            field1Single = CreateObject("roArray", 1, true)
            field1Single.Push(field_field1)
            field1Items = field1Single
        end if
    end if

    if field1Items <> invalid then
        for each field1Item in field1Items
            strValue = field1Item
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end for
    end if

    field_field2 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field2") then
                field_field2 = message.Lookup("field2")
            end if
        else
            field_field2 = message["field2"]
        end if
    end if

    if field_field2 <> invalid then
        if not __pb_scalarEqualsDefault(field_field2, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_field2 <> invalid then
                valueType = Type(field_field2)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_field2)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_field2)
                end if
            end if
            __pb_writeVarint(bytes, 18)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_field3 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field3") then
                field_field3 = message.Lookup("field3")
            end if
        else
            field_field3 = message["field3"]
        end if
    end if

    if field_field3 <> invalid then
        if not __pb_scalarEqualsDefault(field_field3, "string", "") then
            strValue = field_field3
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 26)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end if
    end if

    field_field4 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field4") then
                field_field4 = message.Lookup("field4")
            end if
        else
            field_field4 = message["field4"]
        end if
    end if

    if field_field4 <> invalid then
        if not __pb_scalarEqualsDefault(field_field4, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field4)
            __pb_writeVarint(bytes, 32)
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

    field_field6 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field6") then
                field_field6 = message.Lookup("field6")
            end if
        else
            field_field6 = message["field6"]
        end if
    end if

    if field_field6 <> invalid then
        if not __pb_scalarEqualsDefault(field_field6, "string", "") then
            strValue = field_field6
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 50)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function VideoStreamingUnknownMessage2Decode(encoded as String) as Object
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
            field1Values = invalid
            if GetInterface(message, "ifAssociativeArray") <> invalid then
                if message.DoesExist("field1") then
                    field1Values = message["field1"]
                end if
            end if
            if field1Values = invalid then
                field1Values = CreateObject("roArray", 0, true)
            end if
            message["field1"] = field1Values
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                fieldValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                field1Values.Push(fieldValue)
            else if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field1PackEnd = cursor + lengthResult.value
                while cursor < field1PackEnd
                    lengthResult = __pb_readVarint(bytes, cursor)
                    cursor = lengthResult.nextIndex
                    strLength = lengthResult.value
                    fieldValue = __pb_readString(bytes, cursor, strLength)
                    cursor = cursor + strLength
                    field1Values.Push(fieldValue)
                end while
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
                field2Raw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                field2Value = __pb_byteArrayToBase64(field2Raw)
                message["field2"] = field2Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                field3Value = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["field3"] = field3Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field4Value = __pb_toSigned32FromString(valueResult.value)
                message["field4"] = field4Value
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
        else if fieldNumber = 6 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                field6Value = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["field6"] = field6Value
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
    if message.DoesExist("field2") = false then
        field2DefaultValue = ""
        message["field2"] = field2DefaultValue
    end if
    if message.DoesExist("field3") = false then
        field3DefaultValue = ""
        message["field3"] = field3DefaultValue
    end if
    if message.DoesExist("field4") = false then
        field4DefaultValue = 0
        message["field4"] = field4DefaultValue
    end if
    if message.DoesExist("field5") = false then
        field5DefaultValue = 0
        message["field5"] = field5DefaultValue
    end if
    if message.DoesExist("field6") = false then
        field6DefaultValue = ""
        message["field6"] = field6DefaultValue
    end if
    return message
end function
