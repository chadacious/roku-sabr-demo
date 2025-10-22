' Auto-generated encoder/decoder for video_streaming.LiveMetadata

function LiveMetadataEncode(message as Object) as String
    fieldMap = {}
    fieldMap["broadcast_id"] = "broadcastId"
    fieldMap["head_sequence_number"] = "headSequenceNumber"
    fieldMap["head_time_ms"] = "headTimeMs"
    fieldMap["wall_time_ms"] = "wallTimeMs"
    fieldMap["video_id"] = "videoId"
    fieldMap["post_live_dvr"] = "postLiveDvr"
    fieldMap["min_seekable_time_ticks"] = "minSeekableTimeTicks"
    fieldMap["min_seekable_timescale"] = "minSeekableTimescale"
    fieldMap["max_seekable_time_ticks"] = "maxSeekableTimeTicks"
    fieldMap["max_seekable_timescale"] = "maxSeekableTimescale"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_broadcast_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("broadcast_id") then
                field_broadcast_id = message.Lookup("broadcast_id")
            else if message.DoesExist("broadcastId") then
                field_broadcast_id = message.Lookup("broadcastId")
            end if
        else
            field_broadcast_id = message["broadcast_id"]
            if field_broadcast_id = invalid then
                field_broadcast_id = message["broadcastId"]
            end if
        end if
    end if

    if field_broadcast_id <> invalid then
        if not __pb_scalarEqualsDefault(field_broadcast_id, "string", "") then
            strValue = field_broadcast_id
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 10)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end if
    end if

    field_head_sequence_number = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("head_sequence_number") then
                field_head_sequence_number = message.Lookup("head_sequence_number")
            else if message.DoesExist("headSequenceNumber") then
                field_head_sequence_number = message.Lookup("headSequenceNumber")
            end if
        else
            field_head_sequence_number = message["head_sequence_number"]
            if field_head_sequence_number = invalid then
                field_head_sequence_number = message["headSequenceNumber"]
            end if
        end if
    end if

    if field_head_sequence_number <> invalid then
        if not __pb_scalarEqualsDefault(field_head_sequence_number, "int64", "0") then
            __pb_writeVarint(bytes, 24)
            __pb_writeVarint64(bytes, field_head_sequence_number)
        end if
    end if

    field_head_time_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("head_time_ms") then
                field_head_time_ms = message.Lookup("head_time_ms")
            else if message.DoesExist("headTimeMs") then
                field_head_time_ms = message.Lookup("headTimeMs")
            end if
        else
            field_head_time_ms = message["head_time_ms"]
            if field_head_time_ms = invalid then
                field_head_time_ms = message["headTimeMs"]
            end if
        end if
    end if

    if field_head_time_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_head_time_ms, "int64", "0") then
            __pb_writeVarint(bytes, 32)
            __pb_writeVarint64(bytes, field_head_time_ms)
        end if
    end if

    field_wall_time_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("wall_time_ms") then
                field_wall_time_ms = message.Lookup("wall_time_ms")
            else if message.DoesExist("wallTimeMs") then
                field_wall_time_ms = message.Lookup("wallTimeMs")
            end if
        else
            field_wall_time_ms = message["wall_time_ms"]
            if field_wall_time_ms = invalid then
                field_wall_time_ms = message["wallTimeMs"]
            end if
        end if
    end if

    if field_wall_time_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_wall_time_ms, "int64", "0") then
            __pb_writeVarint(bytes, 40)
            __pb_writeVarint64(bytes, field_wall_time_ms)
        end if
    end if

    field_video_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("video_id") then
                field_video_id = message.Lookup("video_id")
            else if message.DoesExist("videoId") then
                field_video_id = message.Lookup("videoId")
            end if
        else
            field_video_id = message["video_id"]
            if field_video_id = invalid then
                field_video_id = message["videoId"]
            end if
        end if
    end if

    if field_video_id <> invalid then
        if not __pb_scalarEqualsDefault(field_video_id, "string", "") then
            strValue = field_video_id
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

    field_post_live_dvr = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("post_live_dvr") then
                field_post_live_dvr = message.Lookup("post_live_dvr")
            else if message.DoesExist("postLiveDvr") then
                field_post_live_dvr = message.Lookup("postLiveDvr")
            end if
        else
            field_post_live_dvr = message["post_live_dvr"]
            if field_post_live_dvr = invalid then
                field_post_live_dvr = message["postLiveDvr"]
            end if
        end if
    end if

    if field_post_live_dvr <> invalid then
        if not __pb_scalarEqualsDefault(field_post_live_dvr, "bool", false) then
            boolValue = field_post_live_dvr
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
            __pb_writeVarint(bytes, 64)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_headm = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("headm") then
                field_headm = message.Lookup("headm")
            end if
        else
            field_headm = message["headm"]
        end if
    end if

    if field_headm <> invalid then
        if not __pb_scalarEqualsDefault(field_headm, "int64", "0") then
            __pb_writeVarint(bytes, 80)
            __pb_writeVarint64(bytes, field_headm)
        end if
    end if

    field_min_seekable_time_ticks = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("min_seekable_time_ticks") then
                field_min_seekable_time_ticks = message.Lookup("min_seekable_time_ticks")
            else if message.DoesExist("minSeekableTimeTicks") then
                field_min_seekable_time_ticks = message.Lookup("minSeekableTimeTicks")
            end if
        else
            field_min_seekable_time_ticks = message["min_seekable_time_ticks"]
            if field_min_seekable_time_ticks = invalid then
                field_min_seekable_time_ticks = message["minSeekableTimeTicks"]
            end if
        end if
    end if

    if field_min_seekable_time_ticks <> invalid then
        if not __pb_scalarEqualsDefault(field_min_seekable_time_ticks, "int64", "0") then
            __pb_writeVarint(bytes, 96)
            __pb_writeVarint64(bytes, field_min_seekable_time_ticks)
        end if
    end if

    field_min_seekable_timescale = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("min_seekable_timescale") then
                field_min_seekable_timescale = message.Lookup("min_seekable_timescale")
            else if message.DoesExist("minSeekableTimescale") then
                field_min_seekable_timescale = message.Lookup("minSeekableTimescale")
            end if
        else
            field_min_seekable_timescale = message["min_seekable_timescale"]
            if field_min_seekable_timescale = invalid then
                field_min_seekable_timescale = message["minSeekableTimescale"]
            end if
        end if
    end if

    if field_min_seekable_timescale <> invalid then
        if not __pb_scalarEqualsDefault(field_min_seekable_timescale, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_min_seekable_timescale)
            __pb_writeVarint(bytes, 104)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_max_seekable_time_ticks = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_seekable_time_ticks") then
                field_max_seekable_time_ticks = message.Lookup("max_seekable_time_ticks")
            else if message.DoesExist("maxSeekableTimeTicks") then
                field_max_seekable_time_ticks = message.Lookup("maxSeekableTimeTicks")
            end if
        else
            field_max_seekable_time_ticks = message["max_seekable_time_ticks"]
            if field_max_seekable_time_ticks = invalid then
                field_max_seekable_time_ticks = message["maxSeekableTimeTicks"]
            end if
        end if
    end if

    if field_max_seekable_time_ticks <> invalid then
        if not __pb_scalarEqualsDefault(field_max_seekable_time_ticks, "int64", "0") then
            __pb_writeVarint(bytes, 112)
            __pb_writeVarint64(bytes, field_max_seekable_time_ticks)
        end if
    end if

    field_max_seekable_timescale = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_seekable_timescale") then
                field_max_seekable_timescale = message.Lookup("max_seekable_timescale")
            else if message.DoesExist("maxSeekableTimescale") then
                field_max_seekable_timescale = message.Lookup("maxSeekableTimescale")
            end if
        else
            field_max_seekable_timescale = message["max_seekable_timescale"]
            if field_max_seekable_timescale = invalid then
                field_max_seekable_timescale = message["maxSeekableTimescale"]
            end if
        end if
    end if

    if field_max_seekable_timescale <> invalid then
        if not __pb_scalarEqualsDefault(field_max_seekable_timescale, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_max_seekable_timescale)
            __pb_writeVarint(bytes, 120)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function LiveMetadataDecode(encoded as String) as Object
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
                strLength = lengthResult.value
                broadcast_idValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["broadcastId"] = broadcast_idValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                head_sequence_numberValue = __pb_toSignedInt64String(valueResult.value)
                message["headSequenceNumber"] = head_sequence_numberValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                head_time_msValue = __pb_toSignedInt64String(valueResult.value)
                message["headTimeMs"] = head_time_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                wall_time_msValue = __pb_toSignedInt64String(valueResult.value)
                message["wallTimeMs"] = wall_time_msValue
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
                video_idValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["videoId"] = video_idValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 8 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                post_live_dvrValue = (valueResult.value <> 0)
                message["postLiveDvr"] = post_live_dvrValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 10 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                headmValue = __pb_toSignedInt64String(valueResult.value)
                message["headm"] = headmValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 12 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                min_seekable_time_ticksValue = __pb_toSignedInt64String(valueResult.value)
                message["minSeekableTimeTicks"] = min_seekable_time_ticksValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 13 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                min_seekable_timescaleValue = __pb_toSigned32FromString(valueResult.value)
                message["minSeekableTimescale"] = min_seekable_timescaleValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 14 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_seekable_time_ticksValue = __pb_toSignedInt64String(valueResult.value)
                message["maxSeekableTimeTicks"] = max_seekable_time_ticksValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 15 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_seekable_timescaleValue = __pb_toSigned32FromString(valueResult.value)
                message["maxSeekableTimescale"] = max_seekable_timescaleValue
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
    if message.DoesExist("broadcastId") = false then
        broadcast_idDefaultValue = ""
        message["broadcastId"] = broadcast_idDefaultValue
    end if
    if message.DoesExist("headSequenceNumber") = false then
        head_sequence_numberDefaultValue = __pb_toSignedInt64String("0")
        message["headSequenceNumber"] = head_sequence_numberDefaultValue
    end if
    if message.DoesExist("headTimeMs") = false then
        head_time_msDefaultValue = __pb_toSignedInt64String("0")
        message["headTimeMs"] = head_time_msDefaultValue
    end if
    if message.DoesExist("wallTimeMs") = false then
        wall_time_msDefaultValue = __pb_toSignedInt64String("0")
        message["wallTimeMs"] = wall_time_msDefaultValue
    end if
    if message.DoesExist("videoId") = false then
        video_idDefaultValue = ""
        message["videoId"] = video_idDefaultValue
    end if
    if message.DoesExist("postLiveDvr") = false then
        post_live_dvrDefaultValue = false
        message["postLiveDvr"] = post_live_dvrDefaultValue
    end if
    if message.DoesExist("headm") = false then
        headmDefaultValue = __pb_toSignedInt64String("0")
        message["headm"] = headmDefaultValue
    end if
    if message.DoesExist("minSeekableTimeTicks") = false then
        min_seekable_time_ticksDefaultValue = __pb_toSignedInt64String("0")
        message["minSeekableTimeTicks"] = min_seekable_time_ticksDefaultValue
    end if
    if message.DoesExist("minSeekableTimescale") = false then
        min_seekable_timescaleDefaultValue = 0
        message["minSeekableTimescale"] = min_seekable_timescaleDefaultValue
    end if
    if message.DoesExist("maxSeekableTimeTicks") = false then
        max_seekable_time_ticksDefaultValue = __pb_toSignedInt64String("0")
        message["maxSeekableTimeTicks"] = max_seekable_time_ticksDefaultValue
    end if
    if message.DoesExist("maxSeekableTimescale") = false then
        max_seekable_timescaleDefaultValue = 0
        message["maxSeekableTimescale"] = max_seekable_timescaleDefaultValue
    end if
    return message
end function
