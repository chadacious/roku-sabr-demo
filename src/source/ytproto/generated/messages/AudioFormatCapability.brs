' Auto-generated encoder/decoder for video_streaming.MediaCapabilities.AudioFormatCapability

function AudioFormatCapabilityEncode(message as Object) as String
    fieldMap = {}
    fieldMap["audio_codec"] = "audioCodec"
    fieldMap["num_channels"] = "numChannels"
    fieldMap["max_bitrate_bps"] = "maxBitrateBps"
    fieldMap["spatial_capability_bitmask"] = "spatialCapabilityBitmask"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_audio_codec = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("audio_codec") then
                field_audio_codec = message.Lookup("audio_codec")
            else if message.DoesExist("audioCodec") then
                field_audio_codec = message.Lookup("audioCodec")
            end if
        else
            field_audio_codec = message["audio_codec"]
            if field_audio_codec = invalid then
                field_audio_codec = message["audioCodec"]
            end if
        end if
    end if

    if field_audio_codec <> invalid then
        if not __pb_scalarEqualsDefault(field_audio_codec, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_audio_codec)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_num_channels = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("num_channels") then
                field_num_channels = message.Lookup("num_channels")
            else if message.DoesExist("numChannels") then
                field_num_channels = message.Lookup("numChannels")
            end if
        else
            field_num_channels = message["num_channels"]
            if field_num_channels = invalid then
                field_num_channels = message["numChannels"]
            end if
        end if
    end if

    if field_num_channels <> invalid then
        if not __pb_scalarEqualsDefault(field_num_channels, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_num_channels)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end if
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
        if not __pb_scalarEqualsDefault(field_max_bitrate_bps, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_max_bitrate_bps)
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_spatial_capability_bitmask = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("spatial_capability_bitmask") then
                field_spatial_capability_bitmask = message.Lookup("spatial_capability_bitmask")
            else if message.DoesExist("spatialCapabilityBitmask") then
                field_spatial_capability_bitmask = message.Lookup("spatialCapabilityBitmask")
            end if
        else
            field_spatial_capability_bitmask = message["spatial_capability_bitmask"]
            if field_spatial_capability_bitmask = invalid then
                field_spatial_capability_bitmask = message["spatialCapabilityBitmask"]
            end if
        end if
    end if

    if field_spatial_capability_bitmask <> invalid then
        if not __pb_scalarEqualsDefault(field_spatial_capability_bitmask, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_spatial_capability_bitmask)
            __pb_writeVarint(bytes, 48)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function AudioFormatCapabilityDecode(encoded as String) as Object
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
                audio_codecValue = __pb_toSigned32FromString(valueResult.value)
                message["audioCodec"] = audio_codecValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                num_channelsValue = __pb_toSigned32FromString(valueResult.value)
                message["numChannels"] = num_channelsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
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
        else if fieldNumber = 6 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                spatial_capability_bitmaskValue = __pb_toSigned32FromString(valueResult.value)
                message["spatialCapabilityBitmask"] = spatial_capability_bitmaskValue
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
    if message.DoesExist("audioCodec") = false then
        audio_codecDefaultValue = 0
        message["audioCodec"] = audio_codecDefaultValue
    end if
    if message.DoesExist("numChannels") = false then
        num_channelsDefaultValue = 0
        message["numChannels"] = num_channelsDefaultValue
    end if
    if message.DoesExist("maxBitrateBps") = false then
        max_bitrate_bpsDefaultValue = 0
        message["maxBitrateBps"] = max_bitrate_bpsDefaultValue
    end if
    if message.DoesExist("spatialCapabilityBitmask") = false then
        spatial_capability_bitmaskDefaultValue = 0
        message["spatialCapabilityBitmask"] = spatial_capability_bitmaskDefaultValue
    end if
    return message
end function
