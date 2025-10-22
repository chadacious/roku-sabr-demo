' Auto-generated encoder/decoder for video_streaming.UstreamerFlags

function UstreamerFlagsEncode(message as Object) as String
    fieldMap = {}
    fieldMap["send_video_playback_config"] = "sendVideoPlaybackConfig"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_send_video_playback_config = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("send_video_playback_config") then
                field_send_video_playback_config = message.Lookup("send_video_playback_config")
            else if message.DoesExist("sendVideoPlaybackConfig") then
                field_send_video_playback_config = message.Lookup("sendVideoPlaybackConfig")
            end if
        else
            field_send_video_playback_config = message["send_video_playback_config"]
            if field_send_video_playback_config = invalid then
                field_send_video_playback_config = message["sendVideoPlaybackConfig"]
            end if
        end if
    end if

    if field_send_video_playback_config <> invalid then
        if not __pb_scalarEqualsDefault(field_send_video_playback_config, "bool", false) then
            boolValue = field_send_video_playback_config
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

function UstreamerFlagsDecode(encoded as String) as Object
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
        if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                send_video_playback_configValue = (valueResult.value <> 0)
                message["sendVideoPlaybackConfig"] = send_video_playback_configValue
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
    if message.DoesExist("sendVideoPlaybackConfig") = false then
        send_video_playback_configDefaultValue = false
        message["sendVideoPlaybackConfig"] = send_video_playback_configDefaultValue
    end if
    return message
end function
