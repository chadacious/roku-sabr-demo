' Auto-generated encoder/decoder for video_streaming.MediaCapabilities.VideoFormatCapability

function VideoFormatCapabilityEncode(message as Object) as String
    fieldMap = {}
    fieldMap["video_codec"] = "videoCodec"
    fieldMap["max_height"] = "maxHeight"
    fieldMap["max_width"] = "maxWidth"
    fieldMap["max_framerate"] = "maxFramerate"
    fieldMap["max_bitrate_bps"] = "maxBitrateBps"
    fieldMap["is_10_bit_supported"] = "is10BitSupported"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_video_codec = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("video_codec") then
                field_video_codec = message.Lookup("video_codec")
            else if message.DoesExist("videoCodec") then
                field_video_codec = message.Lookup("videoCodec")
            end if
        else
            field_video_codec = message["video_codec"]
            if field_video_codec = invalid then
                field_video_codec = message["videoCodec"]
            end if
        end if
    end if

    if field_video_codec <> invalid then
        normalized = __pb_normalizeSigned32(field_video_codec)
        __pb_writeVarint(bytes, 8)
        __pb_writeVarint(bytes, normalized)
    end if

    field_max_height = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_height") then
                field_max_height = message.Lookup("max_height")
            else if message.DoesExist("maxHeight") then
                field_max_height = message.Lookup("maxHeight")
            end if
        else
            field_max_height = message["max_height"]
            if field_max_height = invalid then
                field_max_height = message["maxHeight"]
            end if
        end if
    end if

    if field_max_height <> invalid then
        normalized = __pb_normalizeSigned32(field_max_height)
        __pb_writeVarint(bytes, 24)
        __pb_writeVarint(bytes, normalized)
    end if

    field_max_width = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_width") then
                field_max_width = message.Lookup("max_width")
            else if message.DoesExist("maxWidth") then
                field_max_width = message.Lookup("maxWidth")
            end if
        else
            field_max_width = message["max_width"]
            if field_max_width = invalid then
                field_max_width = message["maxWidth"]
            end if
        end if
    end if

    if field_max_width <> invalid then
        normalized = __pb_normalizeSigned32(field_max_width)
        __pb_writeVarint(bytes, 32)
        __pb_writeVarint(bytes, normalized)
    end if

    field_max_framerate = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_framerate") then
                field_max_framerate = message.Lookup("max_framerate")
            else if message.DoesExist("maxFramerate") then
                field_max_framerate = message.Lookup("maxFramerate")
            end if
        else
            field_max_framerate = message["max_framerate"]
            if field_max_framerate = invalid then
                field_max_framerate = message["maxFramerate"]
            end if
        end if
    end if

    if field_max_framerate <> invalid then
        normalized = __pb_normalizeSigned32(field_max_framerate)
        __pb_writeVarint(bytes, 88)
        __pb_writeVarint(bytes, normalized)
    end if

    field_max_bitrate_bps = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_bitrate_bps") then
                field_max_bitrate_bps = message.Lookup("max_bitrate_bps")
            else if message.DoesExist("maxBitrateBps") then
                field_max_bitrate_bps = message.Lookup("maxBitrateBps")
            end if
        else
            field_max_bitrate_bps = message["max_bitrate_bps"]
            if field_max_bitrate_bps = invalid then
                field_max_bitrate_bps = message["maxBitrateBps"]
            end if
        end if
    end if

    if field_max_bitrate_bps <> invalid then
        normalized = __pb_normalizeSigned32(field_max_bitrate_bps)
        __pb_writeVarint(bytes, 96)
        __pb_writeVarint(bytes, normalized)
    end if

    field_is_10_bit_supported = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("is_10_bit_supported") then
                field_is_10_bit_supported = message.Lookup("is_10_bit_supported")
            else if message.DoesExist("is10BitSupported") then
                field_is_10_bit_supported = message.Lookup("is10BitSupported")
            end if
        else
            field_is_10_bit_supported = message["is_10_bit_supported"]
            if field_is_10_bit_supported = invalid then
                field_is_10_bit_supported = message["is10BitSupported"]
            end if
        end if
    end if

    if field_is_10_bit_supported <> invalid then
        boolValue = field_is_10_bit_supported
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
        __pb_writeVarint(bytes, 120)
        __pb_writeVarint(bytes, boolInt)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function VideoFormatCapabilityDecode(encoded as String) as Object
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
                video_codecValue = __pb_toSigned32FromString(valueResult.value)
                message["videoCodec"] = video_codecValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_heightValue = __pb_toSigned32FromString(valueResult.value)
                message["maxHeight"] = max_heightValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_widthValue = __pb_toSigned32FromString(valueResult.value)
                message["maxWidth"] = max_widthValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 11 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_framerateValue = __pb_toSigned32FromString(valueResult.value)
                message["maxFramerate"] = max_framerateValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 12 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_bitrate_bpsValue = __pb_toSigned32FromString(valueResult.value)
                message["maxBitrateBps"] = max_bitrate_bpsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 15 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                is_10_bit_supportedValue = (valueResult.value <> 0)
                message["is10BitSupported"] = is_10_bit_supportedValue
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
