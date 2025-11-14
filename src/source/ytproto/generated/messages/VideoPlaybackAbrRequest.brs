' Auto-generated encoder/decoder for video_streaming.VideoPlaybackAbrRequest
import "pkg:/source/ytproto/generated/messages/ClientAbrState.brs"
import "pkg:/source/ytproto/generated/messages/BufferedRange.brs"
import "pkg:/source/ytproto/generated/messages/VideoStreamingUnknownMessage1.brs"
import "pkg:/source/ytproto/generated/messages/VideoStreamingUnknownMessage2.brs"
import "pkg:/source/ytproto/generated/messages/StreamerContext.brs"
import "pkg:/source/ytproto/generated/messages/UnknownMessage3.brs"

function VideoPlaybackAbrRequestEncode(message as Object) as String
    fieldMap = {}
    fieldMap["client_abr_state"] = "clientAbrState"
    fieldMap["selected_format_ids"] = "selectedFormatIds"
    fieldMap["buffered_ranges"] = "bufferedRanges"
    fieldMap["player_time_ms"] = "playerTimeMs"
    fieldMap["video_playback_ustreamer_config"] = "videoPlaybackUstreamerConfig"
    fieldMap["preferred_audio_format_ids"] = "preferredAudioFormatIds"
    fieldMap["preferred_video_format_ids"] = "preferredVideoFormatIds"
    fieldMap["preferred_subtitle_format_ids"] = "preferredSubtitleFormatIds"
    fieldMap["streamer_context"] = "streamerContext"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_client_abr_state = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_abr_state") then
                field_client_abr_state = message.Lookup("client_abr_state")
            else if message.DoesExist("clientAbrState") then
                field_client_abr_state = message.Lookup("clientAbrState")
            end if
        else
            field_client_abr_state = message["client_abr_state"]
            if field_client_abr_state = invalid then
                field_client_abr_state = message["clientAbrState"]
            end if
        end if
    end if

    if field_client_abr_state <> invalid then
        client_abr_stateEncoded = ClientAbrStateEncode(field_client_abr_state)
        client_abr_stateChildBytes = __pb_fromBase64(client_abr_stateEncoded)
        __pb_writeVarint(bytes, 10)
        __pb_writeVarint(bytes, client_abr_stateChildBytes.Count())
        __pb_appendByteArray(bytes, client_abr_stateChildBytes)
    end if

    field_selected_format_ids = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("selected_format_ids") then
                field_selected_format_ids = message.Lookup("selected_format_ids")
            else if message.DoesExist("selectedFormatIds") then
                field_selected_format_ids = message.Lookup("selectedFormatIds")
            end if
        else
            field_selected_format_ids = message["selected_format_ids"]
            if field_selected_format_ids = invalid then
                field_selected_format_ids = message["selectedFormatIds"]
            end if
        end if
    end if

    selected_format_idsItems = invalid
    if field_selected_format_ids <> invalid then
        if GetInterface(field_selected_format_ids, "ifArray") <> invalid then
            selected_format_idsItems = field_selected_format_ids
        else
            selected_format_idsSingle = CreateObject("roArray", 1, true)
            selected_format_idsSingle.Push(field_selected_format_ids)
            selected_format_idsItems = selected_format_idsSingle
        end if
    end if

    if selected_format_idsItems <> invalid then
        for each selected_format_idsItem in selected_format_idsItems
            if selected_format_idsItem <> invalid then
                selected_format_idsEncoded = FormatIdEncode(selected_format_idsItem)
                selected_format_idsChildBytes = __pb_fromBase64(selected_format_idsEncoded)
                __pb_writeVarint(bytes, 18)
                __pb_writeVarint(bytes, selected_format_idsChildBytes.Count())
                __pb_appendByteArray(bytes, selected_format_idsChildBytes)
            end if
        end for
    end if

    field_buffered_ranges = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("buffered_ranges") then
                field_buffered_ranges = message.Lookup("buffered_ranges")
            else if message.DoesExist("bufferedRanges") then
                field_buffered_ranges = message.Lookup("bufferedRanges")
            end if
        else
            field_buffered_ranges = message["buffered_ranges"]
            if field_buffered_ranges = invalid then
                field_buffered_ranges = message["bufferedRanges"]
            end if
        end if
    end if

    buffered_rangesItems = invalid
    if field_buffered_ranges <> invalid then
        if GetInterface(field_buffered_ranges, "ifArray") <> invalid then
            buffered_rangesItems = field_buffered_ranges
        else
            buffered_rangesSingle = CreateObject("roArray", 1, true)
            buffered_rangesSingle.Push(field_buffered_ranges)
            buffered_rangesItems = buffered_rangesSingle
        end if
    end if

    if buffered_rangesItems <> invalid then
        for each buffered_rangesItem in buffered_rangesItems
            if buffered_rangesItem <> invalid then
                buffered_rangesEncoded = BufferedRangeEncode(buffered_rangesItem)
                buffered_rangesChildBytes = __pb_fromBase64(buffered_rangesEncoded)
                __pb_writeVarint(bytes, 26)
                __pb_writeVarint(bytes, buffered_rangesChildBytes.Count())
                __pb_appendByteArray(bytes, buffered_rangesChildBytes)
            end if
        end for
    end if

    field_player_time_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("player_time_ms") then
                field_player_time_ms = message.Lookup("player_time_ms")
            else if message.DoesExist("playerTimeMs") then
                field_player_time_ms = message.Lookup("playerTimeMs")
            end if
        else
            field_player_time_ms = message["player_time_ms"]
            if field_player_time_ms = invalid then
                field_player_time_ms = message["playerTimeMs"]
            end if
        end if
    end if

    if field_player_time_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_player_time_ms, "int64", "0") then
            __pb_writeVarint(bytes, 32)
            __pb_writeVarint64(bytes, field_player_time_ms)
        end if
    end if

    field_video_playback_ustreamer_config = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("video_playback_ustreamer_config") then
                field_video_playback_ustreamer_config = message.Lookup("video_playback_ustreamer_config")
            else if message.DoesExist("videoPlaybackUstreamerConfig") then
                field_video_playback_ustreamer_config = message.Lookup("videoPlaybackUstreamerConfig")
            end if
        else
            field_video_playback_ustreamer_config = message["video_playback_ustreamer_config"]
            if field_video_playback_ustreamer_config = invalid then
                field_video_playback_ustreamer_config = message["videoPlaybackUstreamerConfig"]
            end if
        end if
    end if

    if field_video_playback_ustreamer_config <> invalid then
        if not __pb_scalarEqualsDefault(field_video_playback_ustreamer_config, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_video_playback_ustreamer_config <> invalid then
                valueType = Type(field_video_playback_ustreamer_config)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_video_playback_ustreamer_config)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_video_playback_ustreamer_config)
                end if
            end if
            __pb_writeVarint(bytes, 42)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_field6 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field6") then
                field_field6 = message.Lookup("field6")
            end if
        else
            field_field6 = message["field6"]
        end if
    end if

    if field_field6 <> invalid then
        field6Encoded = VideoStreamingUnknownMessage1Encode(field_field6)
        field6ChildBytes = __pb_fromBase64(field6Encoded)
        __pb_writeVarint(bytes, 50)
        __pb_writeVarint(bytes, field6ChildBytes.Count())
        __pb_appendByteArray(bytes, field6ChildBytes)
    end if

    field_preferred_audio_format_ids = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("preferred_audio_format_ids") then
                field_preferred_audio_format_ids = message.Lookup("preferred_audio_format_ids")
            else if message.DoesExist("preferredAudioFormatIds") then
                field_preferred_audio_format_ids = message.Lookup("preferredAudioFormatIds")
            end if
        else
            field_preferred_audio_format_ids = message["preferred_audio_format_ids"]
            if field_preferred_audio_format_ids = invalid then
                field_preferred_audio_format_ids = message["preferredAudioFormatIds"]
            end if
        end if
    end if

    preferred_audio_format_idsItems = invalid
    if field_preferred_audio_format_ids <> invalid then
        if GetInterface(field_preferred_audio_format_ids, "ifArray") <> invalid then
            preferred_audio_format_idsItems = field_preferred_audio_format_ids
        else
            preferred_audio_format_idsSingle = CreateObject("roArray", 1, true)
            preferred_audio_format_idsSingle.Push(field_preferred_audio_format_ids)
            preferred_audio_format_idsItems = preferred_audio_format_idsSingle
        end if
    end if

    if preferred_audio_format_idsItems <> invalid then
        for each preferred_audio_format_idsItem in preferred_audio_format_idsItems
            if preferred_audio_format_idsItem <> invalid then
                preferred_audio_format_idsEncoded = FormatIdEncode(preferred_audio_format_idsItem)
                preferred_audio_format_idsChildBytes = __pb_fromBase64(preferred_audio_format_idsEncoded)
                __pb_writeVarint(bytes, 130)
                __pb_writeVarint(bytes, preferred_audio_format_idsChildBytes.Count())
                __pb_appendByteArray(bytes, preferred_audio_format_idsChildBytes)
            end if
        end for
    end if

    field_preferred_video_format_ids = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("preferred_video_format_ids") then
                field_preferred_video_format_ids = message.Lookup("preferred_video_format_ids")
            else if message.DoesExist("preferredVideoFormatIds") then
                field_preferred_video_format_ids = message.Lookup("preferredVideoFormatIds")
            end if
        else
            field_preferred_video_format_ids = message["preferred_video_format_ids"]
            if field_preferred_video_format_ids = invalid then
                field_preferred_video_format_ids = message["preferredVideoFormatIds"]
            end if
        end if
    end if

    preferred_video_format_idsItems = invalid
    if field_preferred_video_format_ids <> invalid then
        if GetInterface(field_preferred_video_format_ids, "ifArray") <> invalid then
            preferred_video_format_idsItems = field_preferred_video_format_ids
        else
            preferred_video_format_idsSingle = CreateObject("roArray", 1, true)
            preferred_video_format_idsSingle.Push(field_preferred_video_format_ids)
            preferred_video_format_idsItems = preferred_video_format_idsSingle
        end if
    end if

    if preferred_video_format_idsItems <> invalid then
        for each preferred_video_format_idsItem in preferred_video_format_idsItems
            if preferred_video_format_idsItem <> invalid then
                preferred_video_format_idsEncoded = FormatIdEncode(preferred_video_format_idsItem)
                preferred_video_format_idsChildBytes = __pb_fromBase64(preferred_video_format_idsEncoded)
                __pb_writeVarint(bytes, 138)
                __pb_writeVarint(bytes, preferred_video_format_idsChildBytes.Count())
                __pb_appendByteArray(bytes, preferred_video_format_idsChildBytes)
            end if
        end for
    end if

    field_preferred_subtitle_format_ids = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("preferred_subtitle_format_ids") then
                field_preferred_subtitle_format_ids = message.Lookup("preferred_subtitle_format_ids")
            else if message.DoesExist("preferredSubtitleFormatIds") then
                field_preferred_subtitle_format_ids = message.Lookup("preferredSubtitleFormatIds")
            end if
        else
            field_preferred_subtitle_format_ids = message["preferred_subtitle_format_ids"]
            if field_preferred_subtitle_format_ids = invalid then
                field_preferred_subtitle_format_ids = message["preferredSubtitleFormatIds"]
            end if
        end if
    end if

    preferred_subtitle_format_idsItems = invalid
    if field_preferred_subtitle_format_ids <> invalid then
        if GetInterface(field_preferred_subtitle_format_ids, "ifArray") <> invalid then
            preferred_subtitle_format_idsItems = field_preferred_subtitle_format_ids
        else
            preferred_subtitle_format_idsSingle = CreateObject("roArray", 1, true)
            preferred_subtitle_format_idsSingle.Push(field_preferred_subtitle_format_ids)
            preferred_subtitle_format_idsItems = preferred_subtitle_format_idsSingle
        end if
    end if

    if preferred_subtitle_format_idsItems <> invalid then
        for each preferred_subtitle_format_idsItem in preferred_subtitle_format_idsItems
            if preferred_subtitle_format_idsItem <> invalid then
                preferred_subtitle_format_idsEncoded = FormatIdEncode(preferred_subtitle_format_idsItem)
                preferred_subtitle_format_idsChildBytes = __pb_fromBase64(preferred_subtitle_format_idsEncoded)
                __pb_writeVarint(bytes, 146)
                __pb_writeVarint(bytes, preferred_subtitle_format_idsChildBytes.Count())
                __pb_appendByteArray(bytes, preferred_subtitle_format_idsChildBytes)
            end if
        end for
    end if

    field_streamer_context = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("streamer_context") then
                field_streamer_context = message.Lookup("streamer_context")
            else if message.DoesExist("streamerContext") then
                field_streamer_context = message.Lookup("streamerContext")
            end if
        else
            field_streamer_context = message["streamer_context"]
            if field_streamer_context = invalid then
                field_streamer_context = message["streamerContext"]
            end if
        end if
    end if

    if field_streamer_context <> invalid then
        streamer_contextEncoded = StreamerContextEncode(field_streamer_context)
        streamer_contextChildBytes = __pb_fromBase64(streamer_contextEncoded)
        __pb_writeVarint(bytes, 154)
        __pb_writeVarint(bytes, streamer_contextChildBytes.Count())
        __pb_appendByteArray(bytes, streamer_contextChildBytes)
    end if

    field_field21 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field21") then
                field_field21 = message.Lookup("field21")
            end if
        else
            field_field21 = message["field21"]
        end if
    end if

    if field_field21 <> invalid then
        field21Encoded = VideoStreamingUnknownMessage2Encode(field_field21)
        field21ChildBytes = __pb_fromBase64(field21Encoded)
        __pb_writeVarint(bytes, 170)
        __pb_writeVarint(bytes, field21ChildBytes.Count())
        __pb_appendByteArray(bytes, field21ChildBytes)
    end if

    field_field22 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field22") then
                field_field22 = message.Lookup("field22")
            end if
        else
            field_field22 = message["field22"]
        end if
    end if

    if field_field22 <> invalid then
        if not __pb_scalarEqualsDefault(field_field22, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field22)
            __pb_writeVarint(bytes, 176)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_field23 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field23") then
                field_field23 = message.Lookup("field23")
            end if
        else
            field_field23 = message["field23"]
        end if
    end if

    if field_field23 <> invalid then
        if not __pb_scalarEqualsDefault(field_field23, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field23)
            __pb_writeVarint(bytes, 184)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_field1000 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field1000") then
                field_field1000 = message.Lookup("field1000")
            end if
        else
            field_field1000 = message["field1000"]
        end if
    end if

    field1000Items = invalid
    if field_field1000 <> invalid then
        if GetInterface(field_field1000, "ifArray") <> invalid then
            field1000Items = field_field1000
        else
            field1000Single = CreateObject("roArray", 1, true)
            field1000Single.Push(field_field1000)
            field1000Items = field1000Single
        end if
    end if

    if field1000Items <> invalid then
        for each field1000Item in field1000Items
            if field1000Item <> invalid then
                field1000Encoded = UnknownMessage3Encode(field1000Item)
                field1000ChildBytes = __pb_fromBase64(field1000Encoded)
                __pb_writeVarint(bytes, 8002)
                __pb_writeVarint(bytes, field1000ChildBytes.Count())
                __pb_appendByteArray(bytes, field1000ChildBytes)
            end if
        end for
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function VideoPlaybackAbrRequestDecode(encoded as String) as Object
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
                client_abr_stateLength = lengthResult.value
                client_abr_stateChildBytes = __pb_readBytes(bytes, cursor, client_abr_stateLength)
                cursor = cursor + client_abr_stateLength
                client_abr_stateChild = __pb_byteArrayToBase64(client_abr_stateChildBytes)
                client_abr_stateDecoded = ClientAbrStateDecode(client_abr_stateChild)
                message["clientAbrState"] = client_abr_stateDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                selected_format_idsLength = lengthResult.value
                selected_format_idsChildBytes = __pb_readBytes(bytes, cursor, selected_format_idsLength)
                cursor = cursor + selected_format_idsLength
                selected_format_idsChild = __pb_byteArrayToBase64(selected_format_idsChildBytes)
                selected_format_idsValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("selectedFormatIds") then
                        selected_format_idsValues = message["selectedFormatIds"]
                    end if
                end if
                if selected_format_idsValues = invalid then
                    selected_format_idsValues = CreateObject("roArray", 0, true)
                end if
                message["selectedFormatIds"] = selected_format_idsValues
                selected_format_idsValues.Push(FormatIdDecode(selected_format_idsChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                buffered_rangesLength = lengthResult.value
                buffered_rangesChildBytes = __pb_readBytes(bytes, cursor, buffered_rangesLength)
                cursor = cursor + buffered_rangesLength
                buffered_rangesChild = __pb_byteArrayToBase64(buffered_rangesChildBytes)
                buffered_rangesValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("bufferedRanges") then
                        buffered_rangesValues = message["bufferedRanges"]
                    end if
                end if
                if buffered_rangesValues = invalid then
                    buffered_rangesValues = CreateObject("roArray", 0, true)
                end if
                message["bufferedRanges"] = buffered_rangesValues
                buffered_rangesValues.Push(BufferedRangeDecode(buffered_rangesChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 4 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                player_time_msValue = __pb_toSignedInt64String(valueResult.value)
                message["playerTimeMs"] = player_time_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 5 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                video_playback_ustreamer_configRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                video_playback_ustreamer_configValue = __pb_byteArrayToBase64(video_playback_ustreamer_configRaw)
                message["videoPlaybackUstreamerConfig"] = video_playback_ustreamer_configValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 6 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field6Length = lengthResult.value
                field6ChildBytes = __pb_readBytes(bytes, cursor, field6Length)
                cursor = cursor + field6Length
                field6Child = __pb_byteArrayToBase64(field6ChildBytes)
                field6Decoded = VideoStreamingUnknownMessage1Decode(field6Child)
                message["field6"] = field6Decoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 16 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                preferred_audio_format_idsLength = lengthResult.value
                preferred_audio_format_idsChildBytes = __pb_readBytes(bytes, cursor, preferred_audio_format_idsLength)
                cursor = cursor + preferred_audio_format_idsLength
                preferred_audio_format_idsChild = __pb_byteArrayToBase64(preferred_audio_format_idsChildBytes)
                preferred_audio_format_idsValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("preferredAudioFormatIds") then
                        preferred_audio_format_idsValues = message["preferredAudioFormatIds"]
                    end if
                end if
                if preferred_audio_format_idsValues = invalid then
                    preferred_audio_format_idsValues = CreateObject("roArray", 0, true)
                end if
                message["preferredAudioFormatIds"] = preferred_audio_format_idsValues
                preferred_audio_format_idsValues.Push(FormatIdDecode(preferred_audio_format_idsChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 17 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                preferred_video_format_idsLength = lengthResult.value
                preferred_video_format_idsChildBytes = __pb_readBytes(bytes, cursor, preferred_video_format_idsLength)
                cursor = cursor + preferred_video_format_idsLength
                preferred_video_format_idsChild = __pb_byteArrayToBase64(preferred_video_format_idsChildBytes)
                preferred_video_format_idsValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("preferredVideoFormatIds") then
                        preferred_video_format_idsValues = message["preferredVideoFormatIds"]
                    end if
                end if
                if preferred_video_format_idsValues = invalid then
                    preferred_video_format_idsValues = CreateObject("roArray", 0, true)
                end if
                message["preferredVideoFormatIds"] = preferred_video_format_idsValues
                preferred_video_format_idsValues.Push(FormatIdDecode(preferred_video_format_idsChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 18 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                preferred_subtitle_format_idsLength = lengthResult.value
                preferred_subtitle_format_idsChildBytes = __pb_readBytes(bytes, cursor, preferred_subtitle_format_idsLength)
                cursor = cursor + preferred_subtitle_format_idsLength
                preferred_subtitle_format_idsChild = __pb_byteArrayToBase64(preferred_subtitle_format_idsChildBytes)
                preferred_subtitle_format_idsValues = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("preferredSubtitleFormatIds") then
                        preferred_subtitle_format_idsValues = message["preferredSubtitleFormatIds"]
                    end if
                end if
                if preferred_subtitle_format_idsValues = invalid then
                    preferred_subtitle_format_idsValues = CreateObject("roArray", 0, true)
                end if
                message["preferredSubtitleFormatIds"] = preferred_subtitle_format_idsValues
                preferred_subtitle_format_idsValues.Push(FormatIdDecode(preferred_subtitle_format_idsChild))
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 19 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                streamer_contextLength = lengthResult.value
                streamer_contextChildBytes = __pb_readBytes(bytes, cursor, streamer_contextLength)
                cursor = cursor + streamer_contextLength
                streamer_contextChild = __pb_byteArrayToBase64(streamer_contextChildBytes)
                streamer_contextDecoded = StreamerContextDecode(streamer_contextChild)
                message["streamerContext"] = streamer_contextDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 21 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field21Length = lengthResult.value
                field21ChildBytes = __pb_readBytes(bytes, cursor, field21Length)
                cursor = cursor + field21Length
                field21Child = __pb_byteArrayToBase64(field21ChildBytes)
                field21Decoded = VideoStreamingUnknownMessage2Decode(field21Child)
                message["field21"] = field21Decoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 22 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field22Value = __pb_toSigned32FromString(valueResult.value)
                message["field22"] = field22Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 23 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field23Value = __pb_toSigned32FromString(valueResult.value)
                message["field23"] = field23Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 1000 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                field1000Length = lengthResult.value
                field1000ChildBytes = __pb_readBytes(bytes, cursor, field1000Length)
                cursor = cursor + field1000Length
                field1000Child = __pb_byteArrayToBase64(field1000ChildBytes)
                field1000Values = invalid
                if GetInterface(message, "ifAssociativeArray") <> invalid then
                    if message.DoesExist("field1000") then
                        field1000Values = message["field1000"]
                    end if
                end if
                if field1000Values = invalid then
                    field1000Values = CreateObject("roArray", 0, true)
                end if
                message["field1000"] = field1000Values
                field1000Values.Push(UnknownMessage3Decode(field1000Child))
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
    if message.DoesExist("playerTimeMs") = false then
        player_time_msDefaultValue = __pb_toSignedInt64String("0")
        message["playerTimeMs"] = player_time_msDefaultValue
    end if
    if message.DoesExist("videoPlaybackUstreamerConfig") = false then
        video_playback_ustreamer_configDefaultValue = ""
        message["videoPlaybackUstreamerConfig"] = video_playback_ustreamer_configDefaultValue
    end if
    if message.DoesExist("field22") = false then
        field22DefaultValue = 0
        message["field22"] = field22DefaultValue
    end if
    if message.DoesExist("field23") = false then
        field23DefaultValue = 0
        message["field23"] = field23DefaultValue
    end if
    return message
end function
