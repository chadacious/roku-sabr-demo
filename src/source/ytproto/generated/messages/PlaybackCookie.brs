' Auto-generated encoder/decoder for video_streaming.PlaybackCookie

function PlaybackCookieEncode(message as Object) as String
    fieldMap = {}
    fieldMap["video_fmt"] = "videoFmt"
    fieldMap["audio_fmt"] = "audioFmt"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_resolution = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("resolution") then
                field_resolution = message.Lookup("resolution")
            end if
        else
            field_resolution = message["resolution"]
        end if
    end if

    if field_resolution <> invalid then
        if not __pb_scalarEqualsDefault(field_resolution, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_resolution)
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint(bytes, normalized)
        end if
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
        if not __pb_scalarEqualsDefault(field_field2, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field2)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_video_fmt = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("video_fmt") then
                field_video_fmt = message.Lookup("video_fmt")
            else if message.DoesExist("videoFmt") then
                field_video_fmt = message.Lookup("videoFmt")
            end if
        else
            field_video_fmt = message["video_fmt"]
            if field_video_fmt = invalid then
                field_video_fmt = message["videoFmt"]
            end if
        end if
    end if

    if field_video_fmt <> invalid then
        video_fmtEncoded = FormatIdEncode(field_video_fmt)
        video_fmtChildBytes = __pb_fromBase64(video_fmtEncoded)
        __pb_writeVarint(bytes, 58)
        __pb_writeVarint(bytes, video_fmtChildBytes.Count())
        __pb_appendByteArray(bytes, video_fmtChildBytes)
    end if

    field_audio_fmt = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("audio_fmt") then
                field_audio_fmt = message.Lookup("audio_fmt")
            else if message.DoesExist("audioFmt") then
                field_audio_fmt = message.Lookup("audioFmt")
            end if
        else
            field_audio_fmt = message["audio_fmt"]
            if field_audio_fmt = invalid then
                field_audio_fmt = message["audioFmt"]
            end if
        end if
    end if

    if field_audio_fmt <> invalid then
        audio_fmtEncoded = FormatIdEncode(field_audio_fmt)
        audio_fmtChildBytes = __pb_fromBase64(audio_fmtEncoded)
        __pb_writeVarint(bytes, 66)
        __pb_writeVarint(bytes, audio_fmtChildBytes.Count())
        __pb_appendByteArray(bytes, audio_fmtChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function PlaybackCookieDecode(encoded as String) as Object
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
                resolutionValue = __pb_toSigned32FromString(valueResult.value)
                message["resolution"] = resolutionValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field2Value = __pb_toSigned32FromString(valueResult.value)
                message["field2"] = field2Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 7 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                video_fmtLength = lengthResult.value
                video_fmtChildBytes = __pb_readBytes(bytes, cursor, video_fmtLength)
                cursor = cursor + video_fmtLength
                video_fmtChild = __pb_byteArrayToBase64(video_fmtChildBytes)
                video_fmtDecoded = FormatIdDecode(video_fmtChild)
                message["videoFmt"] = video_fmtDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 8 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                audio_fmtLength = lengthResult.value
                audio_fmtChildBytes = __pb_readBytes(bytes, cursor, audio_fmtLength)
                cursor = cursor + audio_fmtLength
                audio_fmtChild = __pb_byteArrayToBase64(audio_fmtChildBytes)
                audio_fmtDecoded = FormatIdDecode(audio_fmtChild)
                message["audioFmt"] = audio_fmtDecoded
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
    if message.DoesExist("resolution") = false then
        resolutionDefaultValue = 0
        message["resolution"] = resolutionDefaultValue
    end if
    if message.DoesExist("field2") = false then
        field2DefaultValue = 0
        message["field2"] = field2DefaultValue
    end if
    return message
end function
