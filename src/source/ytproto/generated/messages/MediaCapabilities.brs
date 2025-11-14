' Auto-generated encoder/decoder for video_streaming.MediaCapabilities

function MediaCapabilitiesEncode(message as Object) as String
    fieldMap = {}
    fieldMap["video_format_capabilities"] = "videoFormatCapabilities"
    fieldMap["audio_format_capabilities"] = "audioFormatCapabilities"
    fieldMap["hdr_mode_bitmask"] = "hdrModeBitmask"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_video_format_capabilities = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("video_format_capabilities") then
                field_video_format_capabilities = message.Lookup("video_format_capabilities")
            else if message.DoesExist("videoFormatCapabilities") then
                field_video_format_capabilities = message.Lookup("videoFormatCapabilities")
            end if
        else
            field_video_format_capabilities = message["video_format_capabilities"]
            if field_video_format_capabilities = invalid then
                field_video_format_capabilities = message["videoFormatCapabilities"]
            end if
        end if
    end if

    video_format_capabilitiesItems = invalid
    if field_video_format_capabilities <> invalid then
        if GetInterface(field_video_format_capabilities, "ifArray") <> invalid then
            video_format_capabilitiesItems = field_video_format_capabilities
        else
            video_format_capabilitiesSingle = CreateObject("roArray", 1, true)
            video_format_capabilitiesSingle.Push(field_video_format_capabilities)
            video_format_capabilitiesItems = video_format_capabilitiesSingle
        end if
    end if

    if video_format_capabilitiesItems <> invalid then
        for each video_format_capabilitiesItem in video_format_capabilitiesItems
            if video_format_capabilitiesItem <> invalid then
                video_format_capabilitiesEncoded = VideoFormatCapabilityEncode(video_format_capabilitiesItem)
                video_format_capabilitiesChildBytes = __pb_fromBase64(video_format_capabilitiesEncoded)
                __pb_writeVarint(bytes, 10)
                __pb_writeVarint(bytes, video_format_capabilitiesChildBytes.Count())
                __pb_appendByteArray(bytes, video_format_capabilitiesChildBytes)
            end if
        end for
    end if

    field_audio_format_capabilities = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("audio_format_capabilities") then
                field_audio_format_capabilities = message.Lookup("audio_format_capabilities")
            else if message.DoesExist("audioFormatCapabilities") then
                field_audio_format_capabilities = message.Lookup("audioFormatCapabilities")
            end if
        else
            field_audio_format_capabilities = message["audio_format_capabilities"]
            if field_audio_format_capabilities = invalid then
                field_audio_format_capabilities = message["audioFormatCapabilities"]
            end if
        end if
    end if

    audio_format_capabilitiesItems = invalid
    if field_audio_format_capabilities <> invalid then
        if GetInterface(field_audio_format_capabilities, "ifArray") <> invalid then
            audio_format_capabilitiesItems = field_audio_format_capabilities
        else
            audio_format_capabilitiesSingle = CreateObject("roArray", 1, true)
            audio_format_capabilitiesSingle.Push(field_audio_format_capabilities)
            audio_format_capabilitiesItems = audio_format_capabilitiesSingle
        end if
    end if

    if audio_format_capabilitiesItems <> invalid then
        for each audio_format_capabilitiesItem in audio_format_capabilitiesItems
            if audio_format_capabilitiesItem <> invalid then
                audio_format_capabilitiesEncoded = AudioFormatCapabilityEncode(audio_format_capabilitiesItem)
                audio_format_capabilitiesChildBytes = __pb_fromBase64(audio_format_capabilitiesEncoded)
                __pb_writeVarint(bytes, 18)
                __pb_writeVarint(bytes, audio_format_capabilitiesChildBytes.Count())
                __pb_appendByteArray(bytes, audio_format_capabilitiesChildBytes)
            end if
        end for
    end if

    field_hdr_mode_bitmask = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("hdr_mode_bitmask") then
                field_hdr_mode_bitmask = message.Lookup("hdr_mode_bitmask")
            else if message.DoesExist("hdrModeBitmask") then
                field_hdr_mode_bitmask = message.Lookup("hdrModeBitmask")
            end if
        else
            field_hdr_mode_bitmask = message["hdr_mode_bitmask"]
            if field_hdr_mode_bitmask = invalid then
                field_hdr_mode_bitmask = message["hdrModeBitmask"]
            end if
        end if
    end if

    if field_hdr_mode_bitmask <> invalid then
        normalized = __pb_normalizeSigned32(field_hdr_mode_bitmask)
        __pb_writeVarint(bytes, 40)
        __pb_writeVarint(bytes, normalized)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function MediaCapabilitiesDecode(encoded as String) as Object
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
                video_format_capabilitiesLength = lengthResult.value
                video_format_capabilitiesChildBytes = __pb_readBytes(bytes, cursor, video_format_capabilitiesLength)
                cursor = cursor + video_format_capabilitiesLength
                video_format_capabilitiesChild = __pb_byteArrayToBase64(video_format_capabilitiesChildBytes)
                video_format_capabilitiesValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("videoFormatCapabilities") then
                        video_format_capabilitiesValues = message["videoFormatCapabilities"]
                    end if
                end if
                if video_format_capabilitiesValues = invalid then
                    video_format_capabilitiesValues = CreateObject("roArray", 0, true)
                end if
                message["videoFormatCapabilities"] = video_format_capabilitiesValues
                video_format_capabilitiesValues.Push(VideoFormatCapabilityDecode(video_format_capabilitiesChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                audio_format_capabilitiesLength = lengthResult.value
                audio_format_capabilitiesChildBytes = __pb_readBytes(bytes, cursor, audio_format_capabilitiesLength)
                cursor = cursor + audio_format_capabilitiesLength
                audio_format_capabilitiesChild = __pb_byteArrayToBase64(audio_format_capabilitiesChildBytes)
                audio_format_capabilitiesValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("audioFormatCapabilities") then
                        audio_format_capabilitiesValues = message["audioFormatCapabilities"]
                    end if
                end if
                if audio_format_capabilitiesValues = invalid then
                    audio_format_capabilitiesValues = CreateObject("roArray", 0, true)
                end if
                message["audioFormatCapabilities"] = audio_format_capabilitiesValues
                audio_format_capabilitiesValues.Push(AudioFormatCapabilityDecode(audio_format_capabilitiesChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                hdr_mode_bitmaskValue = __pb_toSigned32FromString(valueResult.value)
                message["hdrModeBitmask"] = hdr_mode_bitmaskValue
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
