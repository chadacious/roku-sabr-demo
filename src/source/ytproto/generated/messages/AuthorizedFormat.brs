' Auto-generated encoder/decoder for misc.AuthorizedFormat

function AuthorizedFormatEncode(message as Object) as String
    fieldMap = {}
    fieldMap["track_type"] = "trackType"
    fieldMap["is_hdr"] = "isHdr"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_track_type = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("track_type") then
                field_track_type = message.Lookup("track_type")
            else if message.DoesExist("trackType") then
                field_track_type = message.Lookup("trackType")
            end if
        else
            field_track_type = message["track_type"]
            if field_track_type = invalid then
                field_track_type = message["trackType"]
            end if
        end if
    end if

    if field_track_type <> invalid then
        if not __pb_scalarEqualsDefault(field_track_type, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_track_type)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_is_hdr = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("is_hdr") then
                field_is_hdr = message.Lookup("is_hdr")
            else if message.DoesExist("isHdr") then
                field_is_hdr = message.Lookup("isHdr")
            end if
        else
            field_is_hdr = message["is_hdr"]
            if field_is_hdr = invalid then
                field_is_hdr = message["isHdr"]
            end if
        end if
    end if

    if field_is_hdr <> invalid then
        if not __pb_scalarEqualsDefault(field_is_hdr, "bool", false) then
            boolValue = field_is_hdr
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
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function AuthorizedFormatDecode(encoded as String) as Object
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
                track_typeValue = __pb_toSigned32FromString(valueResult.value)
                message["trackType"] = track_typeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                is_hdrValue = (valueResult.value <> 0)
                message["isHdr"] = is_hdrValue
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
    if message.DoesExist("trackType") = false then
        track_typeDefaultValue = 0
        message["trackType"] = track_typeDefaultValue
    end if
    if message.DoesExist("isHdr") = false then
        is_hdrDefaultValue = false
        message["isHdr"] = is_hdrDefaultValue
    end if
    return message
end function
