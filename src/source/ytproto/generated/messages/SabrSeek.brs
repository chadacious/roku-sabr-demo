' Auto-generated encoder/decoder for video_streaming.SabrSeek

function SabrSeekEncode(message as Object) as String
    fieldMap = {}
    fieldMap["seek_media_time"] = "seekMediaTime"
    fieldMap["seek_media_timescale"] = "seekMediaTimescale"
    fieldMap["seek_source"] = "seekSource"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_seek_media_time = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("seek_media_time") then
                field_seek_media_time = message.Lookup("seek_media_time")
            else if message.DoesExist("seekMediaTime") then
                field_seek_media_time = message.Lookup("seekMediaTime")
            end if
        else
            field_seek_media_time = message["seek_media_time"]
            if field_seek_media_time = invalid then
                field_seek_media_time = message["seekMediaTime"]
            end if
        end if
    end if

    if field_seek_media_time <> invalid then
        if not __pb_scalarEqualsDefault(field_seek_media_time, "int64", "0") then
            __pb_writeVarint(bytes, 8)
            __pb_writeVarint64(bytes, field_seek_media_time)
        end if
    end if

    field_seek_media_timescale = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("seek_media_timescale") then
                field_seek_media_timescale = message.Lookup("seek_media_timescale")
            else if message.DoesExist("seekMediaTimescale") then
                field_seek_media_timescale = message.Lookup("seekMediaTimescale")
            end if
        else
            field_seek_media_timescale = message["seek_media_timescale"]
            if field_seek_media_timescale = invalid then
                field_seek_media_timescale = message["seekMediaTimescale"]
            end if
        end if
    end if

    if field_seek_media_timescale <> invalid then
        if not __pb_scalarEqualsDefault(field_seek_media_timescale, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_seek_media_timescale)
            __pb_writeVarint(bytes, 16)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_seek_source = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("seek_source") then
                field_seek_source = message.Lookup("seek_source")
            else if message.DoesExist("seekSource") then
                field_seek_source = message.Lookup("seekSource")
            end if
        else
            field_seek_source = message["seek_source"]
            if field_seek_source = invalid then
                field_seek_source = message["seekSource"]
            end if
        end if
    end if

    if field_seek_source <> invalid then
        numericValue = SabrSeek_seek_source_normalizeEnum(field_seek_source)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function SabrSeek_seek_source_normalizeEnum(value as Dynamic) as Integer
    values = SabrSeek_seek_source_getEnumValues()
    if value = invalid then return 0
    valueType = Type(value)
    if valueType = "String" or valueType = "roString" then
        upper = UCase(value)
        if values.DoesExist(upper) then
            return values[upper]
        end if
        return 0
    end if
    return Int(value)
end function

function SabrSeek_seek_source_enumName(value as Integer) as Dynamic
    names = SabrSeek_seek_source_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function SabrSeek_seek_source_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "SabrSeek_seek_source_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["SEEK_SOURCE_ANDROID_CLEAR_BUFFER"] = 110
    table["SEEK_SOURCE_ANDROID_MEDIA_SESSION"] = 35
    table["SEEK_SOURCE_AUTOMATIC_PREVIEW_REPLAY_ACTION"] = 103
    table["SEEK_SOURCE_AUTOMATIC_REPLAY_ACTION"] = 37
    table["SEEK_SOURCE_CLIP_SLIDE_ON_FLIMSTRIP"] = 61
    table["SEEK_SOURCE_DOUBLE_TAP_TO_SEEK"] = 4
    table["SEEK_SOURCE_DOUBLE_TAP_TO_SKIP_CHAPTER"] = 5
    table["SEEK_SOURCE_FINE_SCRUBBER_CANCELLED"] = 63
    table["SEEK_SOURCE_FINE_SCRUBBER_SLIDE_ON_FILMSTRIP"] = 25
    table["SEEK_SOURCE_FINE_SCRUBBER_SLIDE_ON_SCRUBBER_BAR"] = 27
    table["SEEK_SOURCE_FINE_SCRUBBER_TAP_ON_FILMSTRIP"] = 26
    table["SEEK_SOURCE_H5_MEDIA_ELEMENT_EVENT"] = 104
    table["SEEK_SOURCE_H5_WORKAROUND_SEEK"] = 105
    table["SEEK_SOURCE_HIDDEN_FAST_FORWARD_BUTTON"] = 82
    table["SEEK_SOURCE_HIDDEN_REWIND_BUTTON"] = 83
    table["SEEK_SOURCE_HIGHLIGHTS_AUTOMATIC_NEXT_PLAY"] = 43
    table["SEEK_SOURCE_HIGHLIGHTS_PLAYER_EXIT_FULLSCREEN"] = 67
    table["SEEK_SOURCE_HIGHLIGHTS_SEEK_TO_END"] = 45
    table["SEEK_SOURCE_HIGHLIGHTS_SEEK_TO_FIRST_PLAY"] = 44
    table["SEEK_SOURCE_HIGHLIGHTS_TAP_HIDDEN_NEXT_PLAY"] = 41
    table["SEEK_SOURCE_HIGHLIGHTS_TAP_LIST_ITEM"] = 42
    table["SEEK_SOURCE_HIGHLIGHTS_TAP_NEXT_PLAY"] = 40
    table["SEEK_SOURCE_HIGHLIGHTS_TAP_PREVIOUS_PLAY"] = 66
    table["SEEK_SOURCE_INLINE_PLAYER_SEEK_CHAPTER"] = 64
    table["SEEK_SOURCE_INLINE_PLAYER_SEEK_SECONDS"] = 65
    table["SEEK_SOURCE_IOS_PLAYER_ITEM_SEEK"] = 21
    table["SEEK_SOURCE_IOS_PLAYER_ITEM_SEEK_TO_END"] = 22
    table["SEEK_SOURCE_IOS_PLAYER_REMOVED_SEGMENTS"] = 19
    table["SEEK_SOURCE_IOS_PLAYER_SEEK_TO_END_TO_RESYNC"] = 23
    table["SEEK_SOURCE_IOS_PLAYER_SEGMENT_LIST"] = 20
    table["SEEK_SOURCE_IOS_SEEK_ACCESSIBILITY_BUTTON"] = 24
    table["SEEK_SOURCE_IOS_SHAREPLAY_PAUSE"] = 54
    table["SEEK_SOURCE_IOS_SHAREPLAY_SEEK"] = 55
    table["SEEK_SOURCE_IOS_SHAREPLAY_SYNC_RESPONSE"] = 56
    table["SEEK_SOURCE_KEYBOARD_SEEK_TO_BEGINNING"] = 79
    table["SEEK_SOURCE_KEYBOARD_SEEK_TO_END"] = 80
    table["SEEK_SOURCE_LARGE_CONTROLS_FORWARD_BUTTON"] = 68
    table["SEEK_SOURCE_LARGE_CONTROLS_REWIND_BUTTON"] = 69
    table["SEEK_SOURCE_LARGE_CONTROLS_SCRUBBER_BAR"] = 70
    table["SEEK_SOURCE_LR_KEY_PLAYS"] = 96
    table["SEEK_SOURCE_LR_MEDIA_SESSION_SEEK"] = 87
    table["SEEK_SOURCE_LR_PLAYER_CONTROL_ACTION"] = 94
    table["SEEK_SOURCE_LR_QUICK_SEEK"] = 92
    table["SEEK_SOURCE_MACRO_MARKER_LIST_ITEM"] = 3
    table["SEEK_SOURCE_MIDROLLS_WITH_TIME_RANGE"] = 88
    table["SEEK_SOURCE_MINIPLAYER_FAST_FORWARD_BUTTON"] = 107
    table["SEEK_SOURCE_MINIPLAYER_REWIND_BUTTON"] = 106
    table["SEEK_SOURCE_MOVING_CLIP_FRAME"] = 50
    table["SEEK_SOURCE_NON_USER_SEEK_TO_NEXT"] = 39
    table["SEEK_SOURCE_NON_USER_SEEK_TO_PREVIOUS"] = 38
    table["SEEK_SOURCE_ONESIE_LIVE"] = 93
    table["SEEK_SOURCE_PEG_TO_LIVE"] = 34
    table["SEEK_SOURCE_PICK_UP_CLIP_SLIDER"] = 62
    table["SEEK_SOURCE_PICK_UP_PLAY_HEAD"] = 6
    table["SEEK_SOURCE_PIP_FAST_FORWARD_BUTTON"] = 47
    table["SEEK_SOURCE_PIP_RESUME_ON_HEAD"] = 49
    table["SEEK_SOURCE_PIP_REWIND_BUTTON"] = 48
    table["SEEK_SOURCE_PLAYER_VIEW_REPARENT_INTERNAL"] = 30
    table["SEEK_SOURCE_PRESS_FAST_FORWARD_PLAY_BACK_CONTROL"] = 32
    table["SEEK_SOURCE_PRESS_LIVE_SYNC_ICON"] = 33
    table["SEEK_SOURCE_PRESS_REWIND_PLAY_BACK_CONTROL"] = 31
    table["SEEK_SOURCE_RESUME_CLIP_PREVIOUS_POSITION"] = 51
    table["SEEK_SOURCE_SABR_ACCURATE_SEEK"] = 17
    table["SEEK_SOURCE_SABR_INGESTION_WALL_TIME_SEEK"] = 29
    table["SEEK_SOURCE_SABR_LIVE_DVR_USER_SEEK"] = 11
    table["SEEK_SOURCE_SABR_PARTIAL_CHUNK"] = 9
    table["SEEK_SOURCE_SABR_RELOAD_PLAYER_RESPONSE_TOKEN_SEEK"] = 108
    table["SEEK_SOURCE_SABR_SEEK_TO_CLOSEST_KEYFRAME"] = 59
    table["SEEK_SOURCE_SABR_SEEK_TO_DVR_LOWER_BOUND"] = 12
    table["SEEK_SOURCE_SABR_SEEK_TO_DVR_UPPER_BOUND"] = 13
    table["SEEK_SOURCE_SABR_SEEK_TO_HEAD"] = 10
    table["SEEK_SOURCE_SEEK_BACKWARD_10S"] = 73
    table["SEEK_SOURCE_SEEK_BACKWARD_5S"] = 71
    table["SEEK_SOURCE_SEEK_BACKWARD_60S"] = 76
    table["SEEK_SOURCE_SEEK_BUTTON_ON_PLAYER_CONTROL"] = 28
    table["SEEK_SOURCE_SEEK_FORWARD_10S"] = 74
    table["SEEK_SOURCE_SEEK_FORWARD_5S"] = 72
    table["SEEK_SOURCE_SEEK_FORWARD_60S"] = 75
    table["SEEK_SOURCE_SEEK_PERCENT_OF_VIDEO"] = 81
    table["SEEK_SOURCE_SEEK_TO_END_OF_LOOPING_RANGE_OF_SHORTS"] = 60
    table["SEEK_SOURCE_SEEK_TO_HEAD"] = 102
    table["SEEK_SOURCE_SEEK_TO_HEAD_IMMERSIVE_LIVE_VIDEO"] = 57
    table["SEEK_SOURCE_SEEK_TO_NEXT"] = 91
    table["SEEK_SOURCE_SEEK_TO_NEXT_CHAPTER"] = 52
    table["SEEK_SOURCE_SEEK_TO_NEXT_FRAME"] = 77
    table["SEEK_SOURCE_SEEK_TO_PREV_FRAME"] = 78
    table["SEEK_SOURCE_SEEK_TO_PREVIOUS"] = 90
    table["SEEK_SOURCE_SEEK_TO_PREVIOUS_CHAPTER"] = 53
    table["SEEK_SOURCE_SEEK_TO_START_OF_LOOPING_RANGE_OF_SHORTS"] = 58
    table["SEEK_SOURCE_SEGMENTS_TAP_LIST_ITEM"] = 46
    table["SEEK_SOURCE_SKIP_AD"] = 89
    table["SEEK_SOURCE_SLIDE_ON_PLAYER"] = 8
    table["SEEK_SOURCE_SLIDE_ON_SCRUBBER_BAR"] = 7
    table["SEEK_SOURCE_SLIDE_ON_SCRUBBER_BAR_CHAPTER"] = 109
    table["SEEK_SOURCE_SSAP_AD_FMT_FATAL"] = 97
    table["SEEK_SOURCE_SSDAI_INTERNAL"] = 14
    table["SEEK_SOURCE_START_PLAYBACK"] = 15
    table["SEEK_SOURCE_START_PLAYBACK_SEEK_TO_END"] = 18
    table["SEEK_SOURCE_TAP_ON_REPLAY_ACTION"] = 36
    table["SEEK_SOURCE_TIMESTAMP"] = 84
    table["SEEK_SOURCE_TIMESTAMP_IN_COMMENTS"] = 1
    table["SEEK_SOURCE_TIMESTAMP_IN_DESCRIPTION"] = 2
    table["SEEK_SOURCE_TVHTML5_INPUT_SOURCE_CONTROLS"] = 99
    table["SEEK_SOURCE_TVHTML5_INPUT_SOURCE_KEY_EVENT"] = 98
    table["SEEK_SOURCE_TVHTML5_INPUT_SOURCE_TOUCH"] = 100
    table["SEEK_SOURCE_TVHTML5_INPUT_SOURCE_TOUCHPAD"] = 101
    table["SEEK_SOURCE_UNKNOWN"] = 0
    table["SEEK_SOURCE_UNPLUGGED_LENS_START_CLIP"] = 95
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function SabrSeek_seek_source_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "SabrSeek_seek_source_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "SEEK_SOURCE_UNKNOWN"
    table["1"] = "SEEK_SOURCE_TIMESTAMP_IN_COMMENTS"
    table["2"] = "SEEK_SOURCE_TIMESTAMP_IN_DESCRIPTION"
    table["3"] = "SEEK_SOURCE_MACRO_MARKER_LIST_ITEM"
    table["4"] = "SEEK_SOURCE_DOUBLE_TAP_TO_SEEK"
    table["5"] = "SEEK_SOURCE_DOUBLE_TAP_TO_SKIP_CHAPTER"
    table["6"] = "SEEK_SOURCE_PICK_UP_PLAY_HEAD"
    table["7"] = "SEEK_SOURCE_SLIDE_ON_SCRUBBER_BAR"
    table["8"] = "SEEK_SOURCE_SLIDE_ON_PLAYER"
    table["9"] = "SEEK_SOURCE_SABR_PARTIAL_CHUNK"
    table["10"] = "SEEK_SOURCE_SABR_SEEK_TO_HEAD"
    table["11"] = "SEEK_SOURCE_SABR_LIVE_DVR_USER_SEEK"
    table["12"] = "SEEK_SOURCE_SABR_SEEK_TO_DVR_LOWER_BOUND"
    table["13"] = "SEEK_SOURCE_SABR_SEEK_TO_DVR_UPPER_BOUND"
    table["14"] = "SEEK_SOURCE_SSDAI_INTERNAL"
    table["15"] = "SEEK_SOURCE_START_PLAYBACK"
    table["17"] = "SEEK_SOURCE_SABR_ACCURATE_SEEK"
    table["18"] = "SEEK_SOURCE_START_PLAYBACK_SEEK_TO_END"
    table["19"] = "SEEK_SOURCE_IOS_PLAYER_REMOVED_SEGMENTS"
    table["20"] = "SEEK_SOURCE_IOS_PLAYER_SEGMENT_LIST"
    table["21"] = "SEEK_SOURCE_IOS_PLAYER_ITEM_SEEK"
    table["22"] = "SEEK_SOURCE_IOS_PLAYER_ITEM_SEEK_TO_END"
    table["23"] = "SEEK_SOURCE_IOS_PLAYER_SEEK_TO_END_TO_RESYNC"
    table["24"] = "SEEK_SOURCE_IOS_SEEK_ACCESSIBILITY_BUTTON"
    table["25"] = "SEEK_SOURCE_FINE_SCRUBBER_SLIDE_ON_FILMSTRIP"
    table["26"] = "SEEK_SOURCE_FINE_SCRUBBER_TAP_ON_FILMSTRIP"
    table["27"] = "SEEK_SOURCE_FINE_SCRUBBER_SLIDE_ON_SCRUBBER_BAR"
    table["28"] = "SEEK_SOURCE_SEEK_BUTTON_ON_PLAYER_CONTROL"
    table["29"] = "SEEK_SOURCE_SABR_INGESTION_WALL_TIME_SEEK"
    table["30"] = "SEEK_SOURCE_PLAYER_VIEW_REPARENT_INTERNAL"
    table["31"] = "SEEK_SOURCE_PRESS_REWIND_PLAY_BACK_CONTROL"
    table["32"] = "SEEK_SOURCE_PRESS_FAST_FORWARD_PLAY_BACK_CONTROL"
    table["33"] = "SEEK_SOURCE_PRESS_LIVE_SYNC_ICON"
    table["34"] = "SEEK_SOURCE_PEG_TO_LIVE"
    table["35"] = "SEEK_SOURCE_ANDROID_MEDIA_SESSION"
    table["36"] = "SEEK_SOURCE_TAP_ON_REPLAY_ACTION"
    table["37"] = "SEEK_SOURCE_AUTOMATIC_REPLAY_ACTION"
    table["38"] = "SEEK_SOURCE_NON_USER_SEEK_TO_PREVIOUS"
    table["39"] = "SEEK_SOURCE_NON_USER_SEEK_TO_NEXT"
    table["40"] = "SEEK_SOURCE_HIGHLIGHTS_TAP_NEXT_PLAY"
    table["41"] = "SEEK_SOURCE_HIGHLIGHTS_TAP_HIDDEN_NEXT_PLAY"
    table["42"] = "SEEK_SOURCE_HIGHLIGHTS_TAP_LIST_ITEM"
    table["43"] = "SEEK_SOURCE_HIGHLIGHTS_AUTOMATIC_NEXT_PLAY"
    table["44"] = "SEEK_SOURCE_HIGHLIGHTS_SEEK_TO_FIRST_PLAY"
    table["45"] = "SEEK_SOURCE_HIGHLIGHTS_SEEK_TO_END"
    table["46"] = "SEEK_SOURCE_SEGMENTS_TAP_LIST_ITEM"
    table["47"] = "SEEK_SOURCE_PIP_FAST_FORWARD_BUTTON"
    table["48"] = "SEEK_SOURCE_PIP_REWIND_BUTTON"
    table["49"] = "SEEK_SOURCE_PIP_RESUME_ON_HEAD"
    table["50"] = "SEEK_SOURCE_MOVING_CLIP_FRAME"
    table["51"] = "SEEK_SOURCE_RESUME_CLIP_PREVIOUS_POSITION"
    table["52"] = "SEEK_SOURCE_SEEK_TO_NEXT_CHAPTER"
    table["53"] = "SEEK_SOURCE_SEEK_TO_PREVIOUS_CHAPTER"
    table["54"] = "SEEK_SOURCE_IOS_SHAREPLAY_PAUSE"
    table["55"] = "SEEK_SOURCE_IOS_SHAREPLAY_SEEK"
    table["56"] = "SEEK_SOURCE_IOS_SHAREPLAY_SYNC_RESPONSE"
    table["57"] = "SEEK_SOURCE_SEEK_TO_HEAD_IMMERSIVE_LIVE_VIDEO"
    table["58"] = "SEEK_SOURCE_SEEK_TO_START_OF_LOOPING_RANGE_OF_SHORTS"
    table["59"] = "SEEK_SOURCE_SABR_SEEK_TO_CLOSEST_KEYFRAME"
    table["60"] = "SEEK_SOURCE_SEEK_TO_END_OF_LOOPING_RANGE_OF_SHORTS"
    table["61"] = "SEEK_SOURCE_CLIP_SLIDE_ON_FLIMSTRIP"
    table["62"] = "SEEK_SOURCE_PICK_UP_CLIP_SLIDER"
    table["63"] = "SEEK_SOURCE_FINE_SCRUBBER_CANCELLED"
    table["64"] = "SEEK_SOURCE_INLINE_PLAYER_SEEK_CHAPTER"
    table["65"] = "SEEK_SOURCE_INLINE_PLAYER_SEEK_SECONDS"
    table["66"] = "SEEK_SOURCE_HIGHLIGHTS_TAP_PREVIOUS_PLAY"
    table["67"] = "SEEK_SOURCE_HIGHLIGHTS_PLAYER_EXIT_FULLSCREEN"
    table["68"] = "SEEK_SOURCE_LARGE_CONTROLS_FORWARD_BUTTON"
    table["69"] = "SEEK_SOURCE_LARGE_CONTROLS_REWIND_BUTTON"
    table["70"] = "SEEK_SOURCE_LARGE_CONTROLS_SCRUBBER_BAR"
    table["71"] = "SEEK_SOURCE_SEEK_BACKWARD_5S"
    table["72"] = "SEEK_SOURCE_SEEK_FORWARD_5S"
    table["73"] = "SEEK_SOURCE_SEEK_BACKWARD_10S"
    table["74"] = "SEEK_SOURCE_SEEK_FORWARD_10S"
    table["75"] = "SEEK_SOURCE_SEEK_FORWARD_60S"
    table["76"] = "SEEK_SOURCE_SEEK_BACKWARD_60S"
    table["77"] = "SEEK_SOURCE_SEEK_TO_NEXT_FRAME"
    table["78"] = "SEEK_SOURCE_SEEK_TO_PREV_FRAME"
    table["79"] = "SEEK_SOURCE_KEYBOARD_SEEK_TO_BEGINNING"
    table["80"] = "SEEK_SOURCE_KEYBOARD_SEEK_TO_END"
    table["81"] = "SEEK_SOURCE_SEEK_PERCENT_OF_VIDEO"
    table["82"] = "SEEK_SOURCE_HIDDEN_FAST_FORWARD_BUTTON"
    table["83"] = "SEEK_SOURCE_HIDDEN_REWIND_BUTTON"
    table["84"] = "SEEK_SOURCE_TIMESTAMP"
    table["87"] = "SEEK_SOURCE_LR_MEDIA_SESSION_SEEK"
    table["88"] = "SEEK_SOURCE_MIDROLLS_WITH_TIME_RANGE"
    table["89"] = "SEEK_SOURCE_SKIP_AD"
    table["90"] = "SEEK_SOURCE_SEEK_TO_PREVIOUS"
    table["91"] = "SEEK_SOURCE_SEEK_TO_NEXT"
    table["92"] = "SEEK_SOURCE_LR_QUICK_SEEK"
    table["93"] = "SEEK_SOURCE_ONESIE_LIVE"
    table["94"] = "SEEK_SOURCE_LR_PLAYER_CONTROL_ACTION"
    table["95"] = "SEEK_SOURCE_UNPLUGGED_LENS_START_CLIP"
    table["96"] = "SEEK_SOURCE_LR_KEY_PLAYS"
    table["97"] = "SEEK_SOURCE_SSAP_AD_FMT_FATAL"
    table["98"] = "SEEK_SOURCE_TVHTML5_INPUT_SOURCE_KEY_EVENT"
    table["99"] = "SEEK_SOURCE_TVHTML5_INPUT_SOURCE_CONTROLS"
    table["100"] = "SEEK_SOURCE_TVHTML5_INPUT_SOURCE_TOUCH"
    table["101"] = "SEEK_SOURCE_TVHTML5_INPUT_SOURCE_TOUCHPAD"
    table["102"] = "SEEK_SOURCE_SEEK_TO_HEAD"
    table["103"] = "SEEK_SOURCE_AUTOMATIC_PREVIEW_REPLAY_ACTION"
    table["104"] = "SEEK_SOURCE_H5_MEDIA_ELEMENT_EVENT"
    table["105"] = "SEEK_SOURCE_H5_WORKAROUND_SEEK"
    table["106"] = "SEEK_SOURCE_MINIPLAYER_REWIND_BUTTON"
    table["107"] = "SEEK_SOURCE_MINIPLAYER_FAST_FORWARD_BUTTON"
    table["108"] = "SEEK_SOURCE_SABR_RELOAD_PLAYER_RESPONSE_TOKEN_SEEK"
    table["109"] = "SEEK_SOURCE_SLIDE_ON_SCRUBBER_BAR_CHAPTER"
    table["110"] = "SEEK_SOURCE_ANDROID_CLEAR_BUFFER"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function SabrSeekDecode(encoded as String) as Object
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
                seek_media_timeValue = __pb_toSignedInt64String(valueResult.value)
                message["seekMediaTime"] = seek_media_timeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                seek_media_timescaleValue = __pb_toSigned32FromString(valueResult.value)
                message["seekMediaTimescale"] = seek_media_timescaleValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                seek_sourceEnumValue = SabrSeek_seek_source_enumName(numericValue)
                message["seekSource"] = seek_sourceEnumValue
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
    if message.DoesExist("seekMediaTime") = false then
        seek_media_timeDefaultValue = __pb_toSignedInt64String("0")
        message["seekMediaTime"] = seek_media_timeDefaultValue
    end if
    if message.DoesExist("seekMediaTimescale") = false then
        seek_media_timescaleDefaultValue = 0
        message["seekMediaTimescale"] = seek_media_timescaleDefaultValue
    end if
    if message.DoesExist("seekSource") = false then
        seek_sourceDefaultValue = SabrSeek_seek_source_enumName(0)
        message["seekSource"] = seek_sourceDefaultValue
    end if
    return message
end function
