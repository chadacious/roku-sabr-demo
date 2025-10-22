' Auto-generated encoder/decoder for samples.FlagMessage

function FlagMessageEncode(message as Object) as String
    bytes = __pb_createByteArray()
    field_enabled = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("enabled") then
                field_enabled = message.Lookup("enabled")
            end if
        else
            field_enabled = message["enabled"]
        end if
    end if

    if field_enabled <> invalid then
        if not __pb_scalarEqualsDefault(field_enabled, "bool", false) then
            boolValue = field_enabled
            boolType = Type(boolValue)
            if boolType = "String" or boolType = "roString" then
                lower = LCase(boolValue)
                boolValue = (lower = "true") or (lower = "1")
            else if boolType = "Boolean" or boolType = "roBoolean" then
                ' keep as is
            else
                boolValue = (boolValue <> 0)
            end if
            boolInt = 0
            if boolValue = true then boolInt = 1
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function FlagMessageDecode(encoded as String) as Object
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
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                enabledValue = (valueResult.value <> 0)
                message["enabled"] = enabledValue
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
    if message.DoesExist("enabled") = false then
        enabledDefaultValue = false
        message["enabled"] = enabledDefaultValue
    end if
    return message
end function
