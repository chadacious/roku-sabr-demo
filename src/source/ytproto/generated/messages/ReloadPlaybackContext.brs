' Auto-generated encoder/decoder for video_streaming.ReloadPlaybackContext

function ReloadPlaybackContextEncode(message as Object) as String
    fieldMap = {}
    fieldMap["reload_playback_params"] = "reloadPlaybackParams"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_reload_playback_params = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("reload_playback_params") then
                field_reload_playback_params = message.Lookup("reload_playback_params")
            else if message.DoesExist("reloadPlaybackParams") then
                field_reload_playback_params = message.Lookup("reloadPlaybackParams")
            end if
        else
            field_reload_playback_params = message["reload_playback_params"]
            if field_reload_playback_params = invalid then
                field_reload_playback_params = message["reloadPlaybackParams"]
            end if
        end if
    end if

    if field_reload_playback_params <> invalid then
        reload_playback_paramsEncoded = ReloadPlaybackParamsEncode(field_reload_playback_params)
        reload_playback_paramsChildBytes = __pb_fromBase64(reload_playback_paramsEncoded)
        __pb_writeVarint(bytes, 10)
        __pb_writeVarint(bytes, reload_playback_paramsChildBytes.Count())
        __pb_appendByteArray(bytes, reload_playback_paramsChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function ReloadPlaybackContextDecode(encoded as String) as Object
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
                reload_playback_paramsLength = lengthResult.value
                reload_playback_paramsChildBytes = __pb_readBytes(bytes, cursor, reload_playback_paramsLength)
                cursor = cursor + reload_playback_paramsLength
                reload_playback_paramsChild = __pb_byteArrayToBase64(reload_playback_paramsChildBytes)
                reload_playback_paramsDecoded = ReloadPlaybackParamsDecode(reload_playback_paramsChild)
                message["reloadPlaybackParams"] = reload_playback_paramsDecoded
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
