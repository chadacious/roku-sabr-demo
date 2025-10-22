' Auto-generated encoder/decoder for video_streaming.ClientAbrState

function ClientAbrStateEncode(message as Object) as String
    fieldMap = {}
    fieldMap["time_since_last_manual_format_selection_ms"] = "timeSinceLastManualFormatSelectionMs"
    fieldMap["last_manual_direction"] = "lastManualDirection"
    fieldMap["last_manual_selected_resolution"] = "lastManualSelectedResolution"
    fieldMap["detailed_network_type"] = "detailedNetworkType"
    fieldMap["client_viewport_width"] = "clientViewportWidth"
    fieldMap["client_viewport_height"] = "clientViewportHeight"
    fieldMap["client_bitrate_cap_bytes_per_sec"] = "clientBitrateCapBytesPerSec"
    fieldMap["sticky_resolution"] = "stickyResolution"
    fieldMap["client_viewport_is_flexible"] = "clientViewportIsFlexible"
    fieldMap["bandwidth_estimate"] = "bandwidthEstimate"
    fieldMap["min_audio_quality"] = "minAudioQuality"
    fieldMap["max_audio_quality"] = "maxAudioQuality"
    fieldMap["video_quality_setting"] = "videoQualitySetting"
    fieldMap["audio_route"] = "audioRoute"
    fieldMap["player_time_ms"] = "playerTimeMs"
    fieldMap["time_since_last_seek"] = "timeSinceLastSeek"
    fieldMap["data_saver_mode"] = "dataSaverMode"
    fieldMap["network_metered_state"] = "networkMeteredState"
    fieldMap["playback_rate"] = "playbackRate"
    fieldMap["elapsed_wall_time_ms"] = "elapsedWallTimeMs"
    fieldMap["media_capabilities"] = "mediaCapabilities"
    fieldMap["time_since_last_action_ms"] = "timeSinceLastActionMs"
    fieldMap["enabled_track_types_bitfield"] = "enabledTrackTypesBitfield"
    fieldMap["max_pacing_rate"] = "maxPacingRate"
    fieldMap["player_state"] = "playerState"
    fieldMap["drc_enabled"] = "drcEnabled"
    fieldMap["sabr_report_request_cancellation_info"] = "sabrReportRequestCancellationInfo"
    fieldMap["disable_streaming_xhr"] = "disableStreamingXhr"
    fieldMap["prefer_vp9"] = "preferVp9"
    fieldMap["av1_quality_threshold"] = "av1QualityThreshold"
    fieldMap["is_prefetch"] = "isPrefetch"
    fieldMap["sabr_support_quality_constraints"] = "sabrSupportQualityConstraints"
    fieldMap["sabr_license_constraint"] = "sabrLicenseConstraint"
    fieldMap["allow_proxima_live_latency"] = "allowProximaLiveLatency"
    fieldMap["sabr_force_proxima"] = "sabrForceProxima"
    fieldMap["sabr_force_max_network_interruption_duration_ms"] = "sabrForceMaxNetworkInterruptionDurationMs"
    fieldMap["audio_track_id"] = "audioTrackId"
    fieldMap["enable_voice_boost"] = "enableVoiceBoost"
    fieldMap["playback_authorization"] = "playbackAuthorization"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_time_since_last_manual_format_selection_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("time_since_last_manual_format_selection_ms") then
                field_time_since_last_manual_format_selection_ms = message.Lookup("time_since_last_manual_format_selection_ms")
            else if message.DoesExist("timeSinceLastManualFormatSelectionMs") then
                field_time_since_last_manual_format_selection_ms = message.Lookup("timeSinceLastManualFormatSelectionMs")
            end if
        else
            field_time_since_last_manual_format_selection_ms = message["time_since_last_manual_format_selection_ms"]
            if field_time_since_last_manual_format_selection_ms = invalid then
                field_time_since_last_manual_format_selection_ms = message["timeSinceLastManualFormatSelectionMs"]
            end if
        end if
    end if

    if field_time_since_last_manual_format_selection_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_time_since_last_manual_format_selection_ms, "int64", "0") then
            __pb_writeVarint(bytes, 104)
            __pb_writeVarint64(bytes, field_time_since_last_manual_format_selection_ms)
        end if
    end if

    field_last_manual_direction = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("last_manual_direction") then
                field_last_manual_direction = message.Lookup("last_manual_direction")
            else if message.DoesExist("lastManualDirection") then
                field_last_manual_direction = message.Lookup("lastManualDirection")
            end if
        else
            field_last_manual_direction = message["last_manual_direction"]
            if field_last_manual_direction = invalid then
                field_last_manual_direction = message["lastManualDirection"]
            end if
        end if
    end if

    if field_last_manual_direction <> invalid then
        if not __pb_scalarEqualsDefault(field_last_manual_direction, "sint32", "0") then
            normalized = __pb_normalizeSigned32(field_last_manual_direction)
            encoded = __pb_encodeZigZag32FromString(normalized)
            __pb_writeVarint(bytes, 112)
            __pb_writeVarint64(bytes, encoded)
        end if
    end if

    field_last_manual_selected_resolution = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("last_manual_selected_resolution") then
                field_last_manual_selected_resolution = message.Lookup("last_manual_selected_resolution")
            else if message.DoesExist("lastManualSelectedResolution") then
                field_last_manual_selected_resolution = message.Lookup("lastManualSelectedResolution")
            end if
        else
            field_last_manual_selected_resolution = message["last_manual_selected_resolution"]
            if field_last_manual_selected_resolution = invalid then
                field_last_manual_selected_resolution = message["lastManualSelectedResolution"]
            end if
        end if
    end if

    if field_last_manual_selected_resolution <> invalid then
        if not __pb_scalarEqualsDefault(field_last_manual_selected_resolution, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_last_manual_selected_resolution)
            __pb_writeVarint(bytes, 128)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_detailed_network_type = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("detailed_network_type") then
                field_detailed_network_type = message.Lookup("detailed_network_type")
            else if message.DoesExist("detailedNetworkType") then
                field_detailed_network_type = message.Lookup("detailedNetworkType")
            end if
        else
            field_detailed_network_type = message["detailed_network_type"]
            if field_detailed_network_type = invalid then
                field_detailed_network_type = message["detailedNetworkType"]
            end if
        end if
    end if

    if field_detailed_network_type <> invalid then
        if not __pb_scalarEqualsDefault(field_detailed_network_type, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_detailed_network_type)
            __pb_writeVarint(bytes, 136)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_client_viewport_width = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_viewport_width") then
                field_client_viewport_width = message.Lookup("client_viewport_width")
            else if message.DoesExist("clientViewportWidth") then
                field_client_viewport_width = message.Lookup("clientViewportWidth")
            end if
        else
            field_client_viewport_width = message["client_viewport_width"]
            if field_client_viewport_width = invalid then
                field_client_viewport_width = message["clientViewportWidth"]
            end if
        end if
    end if

    if field_client_viewport_width <> invalid then
        if not __pb_scalarEqualsDefault(field_client_viewport_width, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_client_viewport_width)
            __pb_writeVarint(bytes, 144)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_client_viewport_height = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_viewport_height") then
                field_client_viewport_height = message.Lookup("client_viewport_height")
            else if message.DoesExist("clientViewportHeight") then
                field_client_viewport_height = message.Lookup("clientViewportHeight")
            end if
        else
            field_client_viewport_height = message["client_viewport_height"]
            if field_client_viewport_height = invalid then
                field_client_viewport_height = message["clientViewportHeight"]
            end if
        end if
    end if

    if field_client_viewport_height <> invalid then
        if not __pb_scalarEqualsDefault(field_client_viewport_height, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_client_viewport_height)
            __pb_writeVarint(bytes, 152)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_client_bitrate_cap_bytes_per_sec = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_bitrate_cap_bytes_per_sec") then
                field_client_bitrate_cap_bytes_per_sec = message.Lookup("client_bitrate_cap_bytes_per_sec")
            else if message.DoesExist("clientBitrateCapBytesPerSec") then
                field_client_bitrate_cap_bytes_per_sec = message.Lookup("clientBitrateCapBytesPerSec")
            end if
        else
            field_client_bitrate_cap_bytes_per_sec = message["client_bitrate_cap_bytes_per_sec"]
            if field_client_bitrate_cap_bytes_per_sec = invalid then
                field_client_bitrate_cap_bytes_per_sec = message["clientBitrateCapBytesPerSec"]
            end if
        end if
    end if

    if field_client_bitrate_cap_bytes_per_sec <> invalid then
        if not __pb_scalarEqualsDefault(field_client_bitrate_cap_bytes_per_sec, "int64", "0") then
            __pb_writeVarint(bytes, 160)
            __pb_writeVarint64(bytes, field_client_bitrate_cap_bytes_per_sec)
        end if
    end if

    field_sticky_resolution = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sticky_resolution") then
                field_sticky_resolution = message.Lookup("sticky_resolution")
            else if message.DoesExist("stickyResolution") then
                field_sticky_resolution = message.Lookup("stickyResolution")
            end if
        else
            field_sticky_resolution = message["sticky_resolution"]
            if field_sticky_resolution = invalid then
                field_sticky_resolution = message["stickyResolution"]
            end if
        end if
    end if

    if field_sticky_resolution <> invalid then
        if not __pb_scalarEqualsDefault(field_sticky_resolution, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_sticky_resolution)
            __pb_writeVarint(bytes, 168)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_client_viewport_is_flexible = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_viewport_is_flexible") then
                field_client_viewport_is_flexible = message.Lookup("client_viewport_is_flexible")
            else if message.DoesExist("clientViewportIsFlexible") then
                field_client_viewport_is_flexible = message.Lookup("clientViewportIsFlexible")
            end if
        else
            field_client_viewport_is_flexible = message["client_viewport_is_flexible"]
            if field_client_viewport_is_flexible = invalid then
                field_client_viewport_is_flexible = message["clientViewportIsFlexible"]
            end if
        end if
    end if

    if field_client_viewport_is_flexible <> invalid then
        if not __pb_scalarEqualsDefault(field_client_viewport_is_flexible, "bool", false) then
            boolValue = field_client_viewport_is_flexible
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
            __pb_writeVarint(bytes, 176)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_bandwidth_estimate = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("bandwidth_estimate") then
                field_bandwidth_estimate = message.Lookup("bandwidth_estimate")
            else if message.DoesExist("bandwidthEstimate") then
                field_bandwidth_estimate = message.Lookup("bandwidthEstimate")
            end if
        else
            field_bandwidth_estimate = message["bandwidth_estimate"]
            if field_bandwidth_estimate = invalid then
                field_bandwidth_estimate = message["bandwidthEstimate"]
            end if
        end if
    end if

    if field_bandwidth_estimate <> invalid then
        if not __pb_scalarEqualsDefault(field_bandwidth_estimate, "int64", "0") then
            __pb_writeVarint(bytes, 184)
            __pb_writeVarint64(bytes, field_bandwidth_estimate)
        end if
    end if

    field_min_audio_quality = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("min_audio_quality") then
                field_min_audio_quality = message.Lookup("min_audio_quality")
            else if message.DoesExist("minAudioQuality") then
                field_min_audio_quality = message.Lookup("minAudioQuality")
            end if
        else
            field_min_audio_quality = message["min_audio_quality"]
            if field_min_audio_quality = invalid then
                field_min_audio_quality = message["minAudioQuality"]
            end if
        end if
    end if

    if field_min_audio_quality <> invalid then
        numericValue = ClientAbrState_min_audio_quality_normalizeEnum(field_min_audio_quality)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 192)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    field_max_audio_quality = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_audio_quality") then
                field_max_audio_quality = message.Lookup("max_audio_quality")
            else if message.DoesExist("maxAudioQuality") then
                field_max_audio_quality = message.Lookup("maxAudioQuality")
            end if
        else
            field_max_audio_quality = message["max_audio_quality"]
            if field_max_audio_quality = invalid then
                field_max_audio_quality = message["maxAudioQuality"]
            end if
        end if
    end if

    if field_max_audio_quality <> invalid then
        numericValue = ClientAbrState_max_audio_quality_normalizeEnum(field_max_audio_quality)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 200)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    field_video_quality_setting = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("video_quality_setting") then
                field_video_quality_setting = message.Lookup("video_quality_setting")
            else if message.DoesExist("videoQualitySetting") then
                field_video_quality_setting = message.Lookup("videoQualitySetting")
            end if
        else
            field_video_quality_setting = message["video_quality_setting"]
            if field_video_quality_setting = invalid then
                field_video_quality_setting = message["videoQualitySetting"]
            end if
        end if
    end if

    if field_video_quality_setting <> invalid then
        numericValue = ClientAbrState_video_quality_setting_normalizeEnum(field_video_quality_setting)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 208)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    field_audio_route = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("audio_route") then
                field_audio_route = message.Lookup("audio_route")
            else if message.DoesExist("audioRoute") then
                field_audio_route = message.Lookup("audioRoute")
            end if
        else
            field_audio_route = message["audio_route"]
            if field_audio_route = invalid then
                field_audio_route = message["audioRoute"]
            end if
        end if
    end if

    if field_audio_route <> invalid then
        numericValue = ClientAbrState_audio_route_normalizeEnum(field_audio_route)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 216)
            __pb_writeVarint(bytes, numericValue)
        end if
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
            __pb_writeVarint(bytes, 224)
            __pb_writeVarint64(bytes, field_player_time_ms)
        end if
    end if

    field_time_since_last_seek = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("time_since_last_seek") then
                field_time_since_last_seek = message.Lookup("time_since_last_seek")
            else if message.DoesExist("timeSinceLastSeek") then
                field_time_since_last_seek = message.Lookup("timeSinceLastSeek")
            end if
        else
            field_time_since_last_seek = message["time_since_last_seek"]
            if field_time_since_last_seek = invalid then
                field_time_since_last_seek = message["timeSinceLastSeek"]
            end if
        end if
    end if

    if field_time_since_last_seek <> invalid then
        if not __pb_scalarEqualsDefault(field_time_since_last_seek, "int64", "0") then
            __pb_writeVarint(bytes, 232)
            __pb_writeVarint64(bytes, field_time_since_last_seek)
        end if
    end if

    field_data_saver_mode = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("data_saver_mode") then
                field_data_saver_mode = message.Lookup("data_saver_mode")
            else if message.DoesExist("dataSaverMode") then
                field_data_saver_mode = message.Lookup("dataSaverMode")
            end if
        else
            field_data_saver_mode = message["data_saver_mode"]
            if field_data_saver_mode = invalid then
                field_data_saver_mode = message["dataSaverMode"]
            end if
        end if
    end if

    if field_data_saver_mode <> invalid then
        if not __pb_scalarEqualsDefault(field_data_saver_mode, "bool", false) then
            boolValue = field_data_saver_mode
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
            __pb_writeVarint(bytes, 240)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_network_metered_state = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("network_metered_state") then
                field_network_metered_state = message.Lookup("network_metered_state")
            else if message.DoesExist("networkMeteredState") then
                field_network_metered_state = message.Lookup("networkMeteredState")
            end if
        else
            field_network_metered_state = message["network_metered_state"]
            if field_network_metered_state = invalid then
                field_network_metered_state = message["networkMeteredState"]
            end if
        end if
    end if

    if field_network_metered_state <> invalid then
        numericValue = ClientAbrState_network_metered_state_normalizeEnum(field_network_metered_state)
        if not __pb_scalarEqualsDefault(numericValue, "enum", "0") then
            __pb_writeVarint(bytes, 256)
            __pb_writeVarint(bytes, numericValue)
        end if
    end if

    field_visibility = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("visibility") then
                field_visibility = message.Lookup("visibility")
            end if
        else
            field_visibility = message["visibility"]
        end if
    end if

    if field_visibility <> invalid then
        if not __pb_scalarEqualsDefault(field_visibility, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_visibility)
            __pb_writeVarint(bytes, 272)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_playback_rate = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("playback_rate") then
                field_playback_rate = message.Lookup("playback_rate")
            else if message.DoesExist("playbackRate") then
                field_playback_rate = message.Lookup("playbackRate")
            end if
        else
            field_playback_rate = message["playback_rate"]
            if field_playback_rate = invalid then
                field_playback_rate = message["playbackRate"]
            end if
        end if
    end if

    if field_playback_rate <> invalid then
        if not __pb_scalarEqualsDefault(field_playback_rate, "float", "0") then
            normalized = __pb_toLong(field_playback_rate)
            __pb_writeVarint(bytes, 285)
            __pb_writeFloat32(bytes, normalized)
        end if
    end if

    field_elapsed_wall_time_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("elapsed_wall_time_ms") then
                field_elapsed_wall_time_ms = message.Lookup("elapsed_wall_time_ms")
            else if message.DoesExist("elapsedWallTimeMs") then
                field_elapsed_wall_time_ms = message.Lookup("elapsedWallTimeMs")
            end if
        else
            field_elapsed_wall_time_ms = message["elapsed_wall_time_ms"]
            if field_elapsed_wall_time_ms = invalid then
                field_elapsed_wall_time_ms = message["elapsedWallTimeMs"]
            end if
        end if
    end if

    if field_elapsed_wall_time_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_elapsed_wall_time_ms, "int64", "0") then
            __pb_writeVarint(bytes, 288)
            __pb_writeVarint64(bytes, field_elapsed_wall_time_ms)
        end if
    end if

    field_media_capabilities = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("media_capabilities") then
                field_media_capabilities = message.Lookup("media_capabilities")
            else if message.DoesExist("mediaCapabilities") then
                field_media_capabilities = message.Lookup("mediaCapabilities")
            end if
        else
            field_media_capabilities = message["media_capabilities"]
            if field_media_capabilities = invalid then
                field_media_capabilities = message["mediaCapabilities"]
            end if
        end if
    end if

    if field_media_capabilities <> invalid then
        media_capabilitiesEncoded = MediaCapabilitiesEncode(field_media_capabilities)
        media_capabilitiesChildBytes = __pb_fromBase64(media_capabilitiesEncoded)
        __pb_writeVarint(bytes, 306)
        __pb_writeVarint(bytes, media_capabilitiesChildBytes.Count())
        __pb_appendByteArray(bytes, media_capabilitiesChildBytes)
    end if

    field_time_since_last_action_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("time_since_last_action_ms") then
                field_time_since_last_action_ms = message.Lookup("time_since_last_action_ms")
            else if message.DoesExist("timeSinceLastActionMs") then
                field_time_since_last_action_ms = message.Lookup("timeSinceLastActionMs")
            end if
        else
            field_time_since_last_action_ms = message["time_since_last_action_ms"]
            if field_time_since_last_action_ms = invalid then
                field_time_since_last_action_ms = message["timeSinceLastActionMs"]
            end if
        end if
    end if

    if field_time_since_last_action_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_time_since_last_action_ms, "int64", "0") then
            __pb_writeVarint(bytes, 312)
            __pb_writeVarint64(bytes, field_time_since_last_action_ms)
        end if
    end if

    field_enabled_track_types_bitfield = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("enabled_track_types_bitfield") then
                field_enabled_track_types_bitfield = message.Lookup("enabled_track_types_bitfield")
            else if message.DoesExist("enabledTrackTypesBitfield") then
                field_enabled_track_types_bitfield = message.Lookup("enabledTrackTypesBitfield")
            end if
        else
            field_enabled_track_types_bitfield = message["enabled_track_types_bitfield"]
            if field_enabled_track_types_bitfield = invalid then
                field_enabled_track_types_bitfield = message["enabledTrackTypesBitfield"]
            end if
        end if
    end if

    if field_enabled_track_types_bitfield <> invalid then
        if not __pb_scalarEqualsDefault(field_enabled_track_types_bitfield, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_enabled_track_types_bitfield)
            __pb_writeVarint(bytes, 320)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_max_pacing_rate = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("max_pacing_rate") then
                field_max_pacing_rate = message.Lookup("max_pacing_rate")
            else if message.DoesExist("maxPacingRate") then
                field_max_pacing_rate = message.Lookup("maxPacingRate")
            end if
        else
            field_max_pacing_rate = message["max_pacing_rate"]
            if field_max_pacing_rate = invalid then
                field_max_pacing_rate = message["maxPacingRate"]
            end if
        end if
    end if

    if field_max_pacing_rate <> invalid then
        if not __pb_scalarEqualsDefault(field_max_pacing_rate, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_max_pacing_rate)
            __pb_writeVarint(bytes, 344)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_player_state = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("player_state") then
                field_player_state = message.Lookup("player_state")
            else if message.DoesExist("playerState") then
                field_player_state = message.Lookup("playerState")
            end if
        else
            field_player_state = message["player_state"]
            if field_player_state = invalid then
                field_player_state = message["playerState"]
            end if
        end if
    end if

    if field_player_state <> invalid then
        if not __pb_scalarEqualsDefault(field_player_state, "int64", "0") then
            __pb_writeVarint(bytes, 352)
            __pb_writeVarint64(bytes, field_player_state)
        end if
    end if

    field_drc_enabled = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("drc_enabled") then
                field_drc_enabled = message.Lookup("drc_enabled")
            else if message.DoesExist("drcEnabled") then
                field_drc_enabled = message.Lookup("drcEnabled")
            end if
        else
            field_drc_enabled = message["drc_enabled"]
            if field_drc_enabled = invalid then
                field_drc_enabled = message["drcEnabled"]
            end if
        end if
    end if

    if field_drc_enabled <> invalid then
        if not __pb_scalarEqualsDefault(field_drc_enabled, "bool", false) then
            boolValue = field_drc_enabled
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
            __pb_writeVarint(bytes, 368)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_field48 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field48") then
                field_field48 = message.Lookup("field48")
            end if
        else
            field_field48 = message["field48"]
        end if
    end if

    if field_field48 <> invalid then
        if not __pb_scalarEqualsDefault(field_field48, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field48)
            __pb_writeVarint(bytes, 384)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_field50 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field50") then
                field_field50 = message.Lookup("field50")
            end if
        else
            field_field50 = message["field50"]
        end if
    end if

    if field_field50 <> invalid then
        if not __pb_scalarEqualsDefault(field_field50, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field50)
            __pb_writeVarint(bytes, 400)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_field51 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field51") then
                field_field51 = message.Lookup("field51")
            end if
        else
            field_field51 = message["field51"]
        end if
    end if

    if field_field51 <> invalid then
        if not __pb_scalarEqualsDefault(field_field51, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field51)
            __pb_writeVarint(bytes, 408)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_sabr_report_request_cancellation_info = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sabr_report_request_cancellation_info") then
                field_sabr_report_request_cancellation_info = message.Lookup("sabr_report_request_cancellation_info")
            else if message.DoesExist("sabrReportRequestCancellationInfo") then
                field_sabr_report_request_cancellation_info = message.Lookup("sabrReportRequestCancellationInfo")
            end if
        else
            field_sabr_report_request_cancellation_info = message["sabr_report_request_cancellation_info"]
            if field_sabr_report_request_cancellation_info = invalid then
                field_sabr_report_request_cancellation_info = message["sabrReportRequestCancellationInfo"]
            end if
        end if
    end if

    if field_sabr_report_request_cancellation_info <> invalid then
        if not __pb_scalarEqualsDefault(field_sabr_report_request_cancellation_info, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_sabr_report_request_cancellation_info)
            __pb_writeVarint(bytes, 432)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_disable_streaming_xhr = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("disable_streaming_xhr") then
                field_disable_streaming_xhr = message.Lookup("disable_streaming_xhr")
            else if message.DoesExist("disableStreamingXhr") then
                field_disable_streaming_xhr = message.Lookup("disableStreamingXhr")
            end if
        else
            field_disable_streaming_xhr = message["disable_streaming_xhr"]
            if field_disable_streaming_xhr = invalid then
                field_disable_streaming_xhr = message["disableStreamingXhr"]
            end if
        end if
    end if

    if field_disable_streaming_xhr <> invalid then
        if not __pb_scalarEqualsDefault(field_disable_streaming_xhr, "bool", false) then
            boolValue = field_disable_streaming_xhr
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
            __pb_writeVarint(bytes, 448)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_field57 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field57") then
                field_field57 = message.Lookup("field57")
            end if
        else
            field_field57 = message["field57"]
        end if
    end if

    if field_field57 <> invalid then
        if not __pb_scalarEqualsDefault(field_field57, "int64", "0") then
            __pb_writeVarint(bytes, 456)
            __pb_writeVarint64(bytes, field_field57)
        end if
    end if

    field_prefer_vp9 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("prefer_vp9") then
                field_prefer_vp9 = message.Lookup("prefer_vp9")
            else if message.DoesExist("preferVp9") then
                field_prefer_vp9 = message.Lookup("preferVp9")
            end if
        else
            field_prefer_vp9 = message["prefer_vp9"]
            if field_prefer_vp9 = invalid then
                field_prefer_vp9 = message["preferVp9"]
            end if
        end if
    end if

    if field_prefer_vp9 <> invalid then
        if not __pb_scalarEqualsDefault(field_prefer_vp9, "bool", false) then
            boolValue = field_prefer_vp9
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
            __pb_writeVarint(bytes, 464)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_av1_quality_threshold = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("av1_quality_threshold") then
                field_av1_quality_threshold = message.Lookup("av1_quality_threshold")
            else if message.DoesExist("av1QualityThreshold") then
                field_av1_quality_threshold = message.Lookup("av1QualityThreshold")
            end if
        else
            field_av1_quality_threshold = message["av1_quality_threshold"]
            if field_av1_quality_threshold = invalid then
                field_av1_quality_threshold = message["av1QualityThreshold"]
            end if
        end if
    end if

    if field_av1_quality_threshold <> invalid then
        if not __pb_scalarEqualsDefault(field_av1_quality_threshold, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_av1_quality_threshold)
            __pb_writeVarint(bytes, 472)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_field60 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field60") then
                field_field60 = message.Lookup("field60")
            end if
        else
            field_field60 = message["field60"]
        end if
    end if

    if field_field60 <> invalid then
        if not __pb_scalarEqualsDefault(field_field60, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field60)
            __pb_writeVarint(bytes, 480)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_is_prefetch = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("is_prefetch") then
                field_is_prefetch = message.Lookup("is_prefetch")
            else if message.DoesExist("isPrefetch") then
                field_is_prefetch = message.Lookup("isPrefetch")
            end if
        else
            field_is_prefetch = message["is_prefetch"]
            if field_is_prefetch = invalid then
                field_is_prefetch = message["isPrefetch"]
            end if
        end if
    end if

    if field_is_prefetch <> invalid then
        if not __pb_scalarEqualsDefault(field_is_prefetch, "bool", false) then
            boolValue = field_is_prefetch
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
            __pb_writeVarint(bytes, 488)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_sabr_support_quality_constraints = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sabr_support_quality_constraints") then
                field_sabr_support_quality_constraints = message.Lookup("sabr_support_quality_constraints")
            else if message.DoesExist("sabrSupportQualityConstraints") then
                field_sabr_support_quality_constraints = message.Lookup("sabrSupportQualityConstraints")
            end if
        else
            field_sabr_support_quality_constraints = message["sabr_support_quality_constraints"]
            if field_sabr_support_quality_constraints = invalid then
                field_sabr_support_quality_constraints = message["sabrSupportQualityConstraints"]
            end if
        end if
    end if

    if field_sabr_support_quality_constraints <> invalid then
        if not __pb_scalarEqualsDefault(field_sabr_support_quality_constraints, "bool", false) then
            boolValue = field_sabr_support_quality_constraints
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
            __pb_writeVarint(bytes, 496)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_sabr_license_constraint = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sabr_license_constraint") then
                field_sabr_license_constraint = message.Lookup("sabr_license_constraint")
            else if message.DoesExist("sabrLicenseConstraint") then
                field_sabr_license_constraint = message.Lookup("sabrLicenseConstraint")
            end if
        else
            field_sabr_license_constraint = message["sabr_license_constraint"]
            if field_sabr_license_constraint = invalid then
                field_sabr_license_constraint = message["sabrLicenseConstraint"]
            end if
        end if
    end if

    if field_sabr_license_constraint <> invalid then
        if not __pb_scalarEqualsDefault(field_sabr_license_constraint, "bytes", "") then
            dataBytes = __pb_createByteArray()
            if field_sabr_license_constraint <> invalid then
                valueType = Type(field_sabr_license_constraint)
                if valueType = "String" or valueType = "roString" then
                    dataBytes.FromBase64String(field_sabr_license_constraint)
                else if valueType = "roByteArray" then
                    __pb_appendByteArray(dataBytes, field_sabr_license_constraint)
                end if
            end if
            __pb_writeVarint(bytes, 506)
            __pb_writeVarint(bytes, dataBytes.Count())
            __pb_appendByteArray(bytes, dataBytes)
        end if
    end if

    field_allow_proxima_live_latency = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("allow_proxima_live_latency") then
                field_allow_proxima_live_latency = message.Lookup("allow_proxima_live_latency")
            else if message.DoesExist("allowProximaLiveLatency") then
                field_allow_proxima_live_latency = message.Lookup("allowProximaLiveLatency")
            end if
        else
            field_allow_proxima_live_latency = message["allow_proxima_live_latency"]
            if field_allow_proxima_live_latency = invalid then
                field_allow_proxima_live_latency = message["allowProximaLiveLatency"]
            end if
        end if
    end if

    if field_allow_proxima_live_latency <> invalid then
        if not __pb_scalarEqualsDefault(field_allow_proxima_live_latency, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_allow_proxima_live_latency)
            __pb_writeVarint(bytes, 512)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_sabr_force_proxima = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sabr_force_proxima") then
                field_sabr_force_proxima = message.Lookup("sabr_force_proxima")
            else if message.DoesExist("sabrForceProxima") then
                field_sabr_force_proxima = message.Lookup("sabrForceProxima")
            end if
        else
            field_sabr_force_proxima = message["sabr_force_proxima"]
            if field_sabr_force_proxima = invalid then
                field_sabr_force_proxima = message["sabrForceProxima"]
            end if
        end if
    end if

    if field_sabr_force_proxima <> invalid then
        if not __pb_scalarEqualsDefault(field_sabr_force_proxima, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_sabr_force_proxima)
            __pb_writeVarint(bytes, 528)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_field67 = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("field67") then
                field_field67 = message.Lookup("field67")
            end if
        else
            field_field67 = message["field67"]
        end if
    end if

    if field_field67 <> invalid then
        if not __pb_scalarEqualsDefault(field_field67, "int32", "0") then
            normalized = __pb_normalizeSigned32(field_field67)
            __pb_writeVarint(bytes, 536)
            __pb_writeVarint(bytes, normalized)
        end if
    end if

    field_sabr_force_max_network_interruption_duration_ms = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("sabr_force_max_network_interruption_duration_ms") then
                field_sabr_force_max_network_interruption_duration_ms = message.Lookup("sabr_force_max_network_interruption_duration_ms")
            else if message.DoesExist("sabrForceMaxNetworkInterruptionDurationMs") then
                field_sabr_force_max_network_interruption_duration_ms = message.Lookup("sabrForceMaxNetworkInterruptionDurationMs")
            end if
        else
            field_sabr_force_max_network_interruption_duration_ms = message["sabr_force_max_network_interruption_duration_ms"]
            if field_sabr_force_max_network_interruption_duration_ms = invalid then
                field_sabr_force_max_network_interruption_duration_ms = message["sabrForceMaxNetworkInterruptionDurationMs"]
            end if
        end if
    end if

    if field_sabr_force_max_network_interruption_duration_ms <> invalid then
        if not __pb_scalarEqualsDefault(field_sabr_force_max_network_interruption_duration_ms, "int64", "0") then
            __pb_writeVarint(bytes, 544)
            __pb_writeVarint64(bytes, field_sabr_force_max_network_interruption_duration_ms)
        end if
    end if

    field_audio_track_id = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("audio_track_id") then
                field_audio_track_id = message.Lookup("audio_track_id")
            else if message.DoesExist("audioTrackId") then
                field_audio_track_id = message.Lookup("audioTrackId")
            end if
        else
            field_audio_track_id = message["audio_track_id"]
            if field_audio_track_id = invalid then
                field_audio_track_id = message["audioTrackId"]
            end if
        end if
    end if

    if field_audio_track_id <> invalid then
        if not __pb_scalarEqualsDefault(field_audio_track_id, "string", "") then
            strValue = field_audio_track_id
            valueType = Type(strValue)
            if valueType <> "String" and valueType <> "roString" then
                strValue = strValue + ""
            end if
            strBytes = __pb_createByteArray()
            strBytes.FromAsciiString(strValue)
            __pb_writeVarint(bytes, 554)
            __pb_writeVarint(bytes, strBytes.Count())
            __pb_appendByteArray(bytes, strBytes)
        end if
    end if

    field_enable_voice_boost = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("enable_voice_boost") then
                field_enable_voice_boost = message.Lookup("enable_voice_boost")
            else if message.DoesExist("enableVoiceBoost") then
                field_enable_voice_boost = message.Lookup("enableVoiceBoost")
            end if
        else
            field_enable_voice_boost = message["enable_voice_boost"]
            if field_enable_voice_boost = invalid then
                field_enable_voice_boost = message["enableVoiceBoost"]
            end if
        end if
    end if

    if field_enable_voice_boost <> invalid then
        if not __pb_scalarEqualsDefault(field_enable_voice_boost, "bool", false) then
            boolValue = field_enable_voice_boost
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
            __pb_writeVarint(bytes, 608)
            __pb_writeVarint(bytes, boolInt)
        end if
    end if

    field_playback_authorization = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("playback_authorization") then
                field_playback_authorization = message.Lookup("playback_authorization")
            else if message.DoesExist("playbackAuthorization") then
                field_playback_authorization = message.Lookup("playbackAuthorization")
            end if
        else
            field_playback_authorization = message["playback_authorization"]
            if field_playback_authorization = invalid then
                field_playback_authorization = message["playbackAuthorization"]
            end if
        end if
    end if

    if field_playback_authorization <> invalid then
        playback_authorizationEncoded = PlaybackAuthorizationEncode(field_playback_authorization)
        playback_authorizationChildBytes = __pb_fromBase64(playback_authorizationEncoded)
        __pb_writeVarint(bytes, 634)
        __pb_writeVarint(bytes, playback_authorizationChildBytes.Count())
        __pb_appendByteArray(bytes, playback_authorizationChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function ClientAbrState_min_audio_quality_normalizeEnum(value as Dynamic) as Integer
    values = ClientAbrState_min_audio_quality_getEnumValues()
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

function ClientAbrState_min_audio_quality_enumName(value as Integer) as Dynamic
    names = ClientAbrState_min_audio_quality_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function ClientAbrState_min_audio_quality_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_min_audio_quality_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["AUDIO_QUALITY_HIGH"] = 30
    table["AUDIO_QUALITY_LOW"] = 10
    table["AUDIO_QUALITY_MEDIUM"] = 20
    table["AUDIO_QUALITY_ULTRALOW"] = 5
    table["AUDIO_QUALITY_UNKNOWN"] = 0
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrState_min_audio_quality_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_min_audio_quality_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "AUDIO_QUALITY_UNKNOWN"
    table["5"] = "AUDIO_QUALITY_ULTRALOW"
    table["10"] = "AUDIO_QUALITY_LOW"
    table["20"] = "AUDIO_QUALITY_MEDIUM"
    table["30"] = "AUDIO_QUALITY_HIGH"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrState_max_audio_quality_normalizeEnum(value as Dynamic) as Integer
    values = ClientAbrState_max_audio_quality_getEnumValues()
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

function ClientAbrState_max_audio_quality_enumName(value as Integer) as Dynamic
    names = ClientAbrState_max_audio_quality_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function ClientAbrState_max_audio_quality_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_max_audio_quality_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["AUDIO_QUALITY_HIGH"] = 30
    table["AUDIO_QUALITY_LOW"] = 10
    table["AUDIO_QUALITY_MEDIUM"] = 20
    table["AUDIO_QUALITY_ULTRALOW"] = 5
    table["AUDIO_QUALITY_UNKNOWN"] = 0
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrState_max_audio_quality_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_max_audio_quality_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "AUDIO_QUALITY_UNKNOWN"
    table["5"] = "AUDIO_QUALITY_ULTRALOW"
    table["10"] = "AUDIO_QUALITY_LOW"
    table["20"] = "AUDIO_QUALITY_MEDIUM"
    table["30"] = "AUDIO_QUALITY_HIGH"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrState_video_quality_setting_normalizeEnum(value as Dynamic) as Integer
    values = ClientAbrState_video_quality_setting_getEnumValues()
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

function ClientAbrState_video_quality_setting_enumName(value as Integer) as Dynamic
    names = ClientAbrState_video_quality_setting_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function ClientAbrState_video_quality_setting_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_video_quality_setting_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["VIDEO_QUALITY_SETTING_ADVANCED_MENU"] = 3
    table["VIDEO_QUALITY_SETTING_DATA_SAVER"] = 2
    table["VIDEO_QUALITY_SETTING_HIGHER_QUALITY"] = 1
    table["VIDEO_QUALITY_SETTING_UNKNOWN"] = 0
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrState_video_quality_setting_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_video_quality_setting_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "VIDEO_QUALITY_SETTING_UNKNOWN"
    table["1"] = "VIDEO_QUALITY_SETTING_HIGHER_QUALITY"
    table["2"] = "VIDEO_QUALITY_SETTING_DATA_SAVER"
    table["3"] = "VIDEO_QUALITY_SETTING_ADVANCED_MENU"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrState_audio_route_normalizeEnum(value as Dynamic) as Integer
    values = ClientAbrState_audio_route_getEnumValues()
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

function ClientAbrState_audio_route_enumName(value as Integer) as Dynamic
    names = ClientAbrState_audio_route_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function ClientAbrState_audio_route_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_audio_route_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_AIR_PLAY"] = 7
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_ANDROID_AUDIO"] = 12
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BLUETOOTH_A2DP"] = 3
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BLUETOOTH_HFP"] = 9
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BLUETOOTH_LE"] = 8
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BUILT_IN_RECEIVER"] = 4
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BUILT_IN_SPEAKER"] = 5
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_CAR_PLAY"] = 11
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_HDMI"] = 6
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_HEADPHONES"] = 2
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_LINE_OUT"] = 1
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_UNKNOWN"] = 0
    table["PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_USB_AUDIO"] = 10
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrState_audio_route_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_audio_route_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_UNKNOWN"
    table["1"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_LINE_OUT"
    table["2"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_HEADPHONES"
    table["3"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BLUETOOTH_A2DP"
    table["4"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BUILT_IN_RECEIVER"
    table["5"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BUILT_IN_SPEAKER"
    table["6"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_HDMI"
    table["7"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_AIR_PLAY"
    table["8"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BLUETOOTH_LE"
    table["9"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_BLUETOOTH_HFP"
    table["10"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_USB_AUDIO"
    table["11"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_CAR_PLAY"
    table["12"] = "PLAYBACK_AUDIO_ROUTE_OUTPUT_TYPE_ANDROID_AUDIO"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrState_network_metered_state_normalizeEnum(value as Dynamic) as Integer
    values = ClientAbrState_network_metered_state_getEnumValues()
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

function ClientAbrState_network_metered_state_enumName(value as Integer) as Dynamic
    names = ClientAbrState_network_metered_state_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function ClientAbrState_network_metered_state_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_network_metered_state_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["NETWORK_METERED_STATE_METERED"] = 2
    table["NETWORK_METERED_STATE_UNKNOWN"] = 0
    table["NETWORK_METERED_STATE_UNMETERED"] = 1
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrState_network_metered_state_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "ClientAbrState_network_metered_state_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "NETWORK_METERED_STATE_UNKNOWN"
    table["1"] = "NETWORK_METERED_STATE_UNMETERED"
    table["2"] = "NETWORK_METERED_STATE_METERED"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientAbrStateDecode(encoded as String) as Object
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
        if fieldNumber = 13 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                time_since_last_manual_format_selection_msValue = __pb_toSignedInt64String(valueResult.value)
                message["timeSinceLastManualFormatSelectionMs"] = time_since_last_manual_format_selection_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 14 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                last_manual_directionValue = __pb_decodeZigZag32(valueResult.value)
                message["lastManualDirection"] = last_manual_directionValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 16 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                last_manual_selected_resolutionValue = __pb_toSigned32FromString(valueResult.value)
                message["lastManualSelectedResolution"] = last_manual_selected_resolutionValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 17 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                detailed_network_typeValue = __pb_toSigned32FromString(valueResult.value)
                message["detailedNetworkType"] = detailed_network_typeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 18 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                client_viewport_widthValue = __pb_toSigned32FromString(valueResult.value)
                message["clientViewportWidth"] = client_viewport_widthValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 19 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                client_viewport_heightValue = __pb_toSigned32FromString(valueResult.value)
                message["clientViewportHeight"] = client_viewport_heightValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 20 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                client_bitrate_cap_bytes_per_secValue = __pb_toSignedInt64String(valueResult.value)
                message["clientBitrateCapBytesPerSec"] = client_bitrate_cap_bytes_per_secValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 21 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                sticky_resolutionValue = __pb_toSigned32FromString(valueResult.value)
                message["stickyResolution"] = sticky_resolutionValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 22 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                client_viewport_is_flexibleValue = (valueResult.value <> 0)
                message["clientViewportIsFlexible"] = client_viewport_is_flexibleValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 23 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                bandwidth_estimateValue = __pb_toSignedInt64String(valueResult.value)
                message["bandwidthEstimate"] = bandwidth_estimateValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 24 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                min_audio_qualityEnumValue = ClientAbrState_min_audio_quality_enumName(numericValue)
                message["minAudioQuality"] = min_audio_qualityEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 25 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                max_audio_qualityEnumValue = ClientAbrState_max_audio_quality_enumName(numericValue)
                message["maxAudioQuality"] = max_audio_qualityEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 26 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                video_quality_settingEnumValue = ClientAbrState_video_quality_setting_enumName(numericValue)
                message["videoQualitySetting"] = video_quality_settingEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 27 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                audio_routeEnumValue = ClientAbrState_audio_route_enumName(numericValue)
                message["audioRoute"] = audio_routeEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 28 then
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
        else if fieldNumber = 29 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                time_since_last_seekValue = __pb_toSignedInt64String(valueResult.value)
                message["timeSinceLastSeek"] = time_since_last_seekValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 30 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                data_saver_modeValue = (valueResult.value <> 0)
                message["dataSaverMode"] = data_saver_modeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 32 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                network_metered_stateEnumValue = ClientAbrState_network_metered_state_enumName(numericValue)
                message["networkMeteredState"] = network_metered_stateEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 34 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                visibilityValue = __pb_toSigned32FromString(valueResult.value)
                message["visibility"] = visibilityValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 35 then
            if wireType = 5 then
                floatResult = __pb_readFloat32(bytes, cursor)
                cursor = floatResult.nextIndex
                playback_rateValue = floatResult.value
                message["playbackRate"] = playback_rateValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 36 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                elapsed_wall_time_msValue = __pb_toSignedInt64String(valueResult.value)
                message["elapsedWallTimeMs"] = elapsed_wall_time_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 38 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                media_capabilitiesLength = lengthResult.value
                media_capabilitiesChildBytes = __pb_readBytes(bytes, cursor, media_capabilitiesLength)
                cursor = cursor + media_capabilitiesLength
                media_capabilitiesChild = __pb_byteArrayToBase64(media_capabilitiesChildBytes)
                media_capabilitiesDecoded = MediaCapabilitiesDecode(media_capabilitiesChild)
                message["mediaCapabilities"] = media_capabilitiesDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 39 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                time_since_last_action_msValue = __pb_toSignedInt64String(valueResult.value)
                message["timeSinceLastActionMs"] = time_since_last_action_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 40 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                enabled_track_types_bitfieldValue = __pb_toSigned32FromString(valueResult.value)
                message["enabledTrackTypesBitfield"] = enabled_track_types_bitfieldValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 43 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                max_pacing_rateValue = __pb_toSigned32FromString(valueResult.value)
                message["maxPacingRate"] = max_pacing_rateValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 44 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                player_stateValue = __pb_toSignedInt64String(valueResult.value)
                message["playerState"] = player_stateValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 46 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                drc_enabledValue = (valueResult.value <> 0)
                message["drcEnabled"] = drc_enabledValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 48 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field48Value = __pb_toSigned32FromString(valueResult.value)
                message["field48"] = field48Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 50 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field50Value = __pb_toSigned32FromString(valueResult.value)
                message["field50"] = field50Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 51 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field51Value = __pb_toSigned32FromString(valueResult.value)
                message["field51"] = field51Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 54 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                sabr_report_request_cancellation_infoValue = __pb_toSigned32FromString(valueResult.value)
                message["sabrReportRequestCancellationInfo"] = sabr_report_request_cancellation_infoValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 56 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                disable_streaming_xhrValue = (valueResult.value <> 0)
                message["disableStreamingXhr"] = disable_streaming_xhrValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 57 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field57Value = __pb_toSignedInt64String(valueResult.value)
                message["field57"] = field57Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 58 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                prefer_vp9Value = (valueResult.value <> 0)
                message["preferVp9"] = prefer_vp9Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 59 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                av1_quality_thresholdValue = __pb_toSigned32FromString(valueResult.value)
                message["av1QualityThreshold"] = av1_quality_thresholdValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 60 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field60Value = __pb_toSigned32FromString(valueResult.value)
                message["field60"] = field60Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 61 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                is_prefetchValue = (valueResult.value <> 0)
                message["isPrefetch"] = is_prefetchValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 62 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                sabr_support_quality_constraintsValue = (valueResult.value <> 0)
                message["sabrSupportQualityConstraints"] = sabr_support_quality_constraintsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 63 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                dataLength = lengthResult.value
                sabr_license_constraintRaw = __pb_readBytes(bytes, cursor, dataLength)
                cursor = cursor + dataLength
                sabr_license_constraintValue = __pb_byteArrayToBase64(sabr_license_constraintRaw)
                message["sabrLicenseConstraint"] = sabr_license_constraintValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 64 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                allow_proxima_live_latencyValue = __pb_toSigned32FromString(valueResult.value)
                message["allowProximaLiveLatency"] = allow_proxima_live_latencyValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 66 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                sabr_force_proximaValue = __pb_toSigned32FromString(valueResult.value)
                message["sabrForceProxima"] = sabr_force_proximaValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 67 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                field67Value = __pb_toSigned32FromString(valueResult.value)
                message["field67"] = field67Value
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 68 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                sabr_force_max_network_interruption_duration_msValue = __pb_toSignedInt64String(valueResult.value)
                message["sabrForceMaxNetworkInterruptionDurationMs"] = sabr_force_max_network_interruption_duration_msValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 69 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                audio_track_idValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["audioTrackId"] = audio_track_idValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 76 then
            if wireType = 0 then
                valueResult = __pb_readVarint(bytes, cursor)
                cursor = valueResult.nextIndex
                enable_voice_boostValue = (valueResult.value <> 0)
                message["enableVoiceBoost"] = enable_voice_boostValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 79 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                playback_authorizationLength = lengthResult.value
                playback_authorizationChildBytes = __pb_readBytes(bytes, cursor, playback_authorizationLength)
                cursor = cursor + playback_authorizationLength
                playback_authorizationChild = __pb_byteArrayToBase64(playback_authorizationChildBytes)
                playback_authorizationDecoded = PlaybackAuthorizationDecode(playback_authorizationChild)
                message["playbackAuthorization"] = playback_authorizationDecoded
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
    if message.DoesExist("timeSinceLastManualFormatSelectionMs") = false then
        time_since_last_manual_format_selection_msDefaultValue = __pb_toSignedInt64String("0")
        message["timeSinceLastManualFormatSelectionMs"] = time_since_last_manual_format_selection_msDefaultValue
    end if
    if message.DoesExist("lastManualDirection") = false then
        last_manual_directionDefaultValue = 0
        message["lastManualDirection"] = last_manual_directionDefaultValue
    end if
    if message.DoesExist("lastManualSelectedResolution") = false then
        last_manual_selected_resolutionDefaultValue = 0
        message["lastManualSelectedResolution"] = last_manual_selected_resolutionDefaultValue
    end if
    if message.DoesExist("detailedNetworkType") = false then
        detailed_network_typeDefaultValue = 0
        message["detailedNetworkType"] = detailed_network_typeDefaultValue
    end if
    if message.DoesExist("clientViewportWidth") = false then
        client_viewport_widthDefaultValue = 0
        message["clientViewportWidth"] = client_viewport_widthDefaultValue
    end if
    if message.DoesExist("clientViewportHeight") = false then
        client_viewport_heightDefaultValue = 0
        message["clientViewportHeight"] = client_viewport_heightDefaultValue
    end if
    if message.DoesExist("clientBitrateCapBytesPerSec") = false then
        client_bitrate_cap_bytes_per_secDefaultValue = __pb_toSignedInt64String("0")
        message["clientBitrateCapBytesPerSec"] = client_bitrate_cap_bytes_per_secDefaultValue
    end if
    if message.DoesExist("stickyResolution") = false then
        sticky_resolutionDefaultValue = 0
        message["stickyResolution"] = sticky_resolutionDefaultValue
    end if
    if message.DoesExist("clientViewportIsFlexible") = false then
        client_viewport_is_flexibleDefaultValue = false
        message["clientViewportIsFlexible"] = client_viewport_is_flexibleDefaultValue
    end if
    if message.DoesExist("bandwidthEstimate") = false then
        bandwidth_estimateDefaultValue = __pb_toSignedInt64String("0")
        message["bandwidthEstimate"] = bandwidth_estimateDefaultValue
    end if
    if message.DoesExist("minAudioQuality") = false then
        min_audio_qualityDefaultValue = ClientAbrState_min_audio_quality_enumName(0)
        message["minAudioQuality"] = min_audio_qualityDefaultValue
    end if
    if message.DoesExist("maxAudioQuality") = false then
        max_audio_qualityDefaultValue = ClientAbrState_max_audio_quality_enumName(0)
        message["maxAudioQuality"] = max_audio_qualityDefaultValue
    end if
    if message.DoesExist("videoQualitySetting") = false then
        video_quality_settingDefaultValue = ClientAbrState_video_quality_setting_enumName(0)
        message["videoQualitySetting"] = video_quality_settingDefaultValue
    end if
    if message.DoesExist("audioRoute") = false then
        audio_routeDefaultValue = ClientAbrState_audio_route_enumName(0)
        message["audioRoute"] = audio_routeDefaultValue
    end if
    if message.DoesExist("playerTimeMs") = false then
        player_time_msDefaultValue = __pb_toSignedInt64String("0")
        message["playerTimeMs"] = player_time_msDefaultValue
    end if
    if message.DoesExist("timeSinceLastSeek") = false then
        time_since_last_seekDefaultValue = __pb_toSignedInt64String("0")
        message["timeSinceLastSeek"] = time_since_last_seekDefaultValue
    end if
    if message.DoesExist("dataSaverMode") = false then
        data_saver_modeDefaultValue = false
        message["dataSaverMode"] = data_saver_modeDefaultValue
    end if
    if message.DoesExist("networkMeteredState") = false then
        network_metered_stateDefaultValue = ClientAbrState_network_metered_state_enumName(0)
        message["networkMeteredState"] = network_metered_stateDefaultValue
    end if
    if message.DoesExist("visibility") = false then
        visibilityDefaultValue = 0
        message["visibility"] = visibilityDefaultValue
    end if
    if message.DoesExist("playbackRate") = false then
        playback_rateDefaultValue = 0
        message["playbackRate"] = playback_rateDefaultValue
    end if
    if message.DoesExist("elapsedWallTimeMs") = false then
        elapsed_wall_time_msDefaultValue = __pb_toSignedInt64String("0")
        message["elapsedWallTimeMs"] = elapsed_wall_time_msDefaultValue
    end if
    if message.DoesExist("timeSinceLastActionMs") = false then
        time_since_last_action_msDefaultValue = __pb_toSignedInt64String("0")
        message["timeSinceLastActionMs"] = time_since_last_action_msDefaultValue
    end if
    if message.DoesExist("enabledTrackTypesBitfield") = false then
        enabled_track_types_bitfieldDefaultValue = 0
        message["enabledTrackTypesBitfield"] = enabled_track_types_bitfieldDefaultValue
    end if
    if message.DoesExist("maxPacingRate") = false then
        max_pacing_rateDefaultValue = 0
        message["maxPacingRate"] = max_pacing_rateDefaultValue
    end if
    if message.DoesExist("playerState") = false then
        player_stateDefaultValue = __pb_toSignedInt64String("0")
        message["playerState"] = player_stateDefaultValue
    end if
    if message.DoesExist("drcEnabled") = false then
        drc_enabledDefaultValue = false
        message["drcEnabled"] = drc_enabledDefaultValue
    end if
    if message.DoesExist("field48") = false then
        field48DefaultValue = 0
        message["field48"] = field48DefaultValue
    end if
    if message.DoesExist("field50") = false then
        field50DefaultValue = 0
        message["field50"] = field50DefaultValue
    end if
    if message.DoesExist("field51") = false then
        field51DefaultValue = 0
        message["field51"] = field51DefaultValue
    end if
    if message.DoesExist("sabrReportRequestCancellationInfo") = false then
        sabr_report_request_cancellation_infoDefaultValue = 0
        message["sabrReportRequestCancellationInfo"] = sabr_report_request_cancellation_infoDefaultValue
    end if
    if message.DoesExist("disableStreamingXhr") = false then
        disable_streaming_xhrDefaultValue = false
        message["disableStreamingXhr"] = disable_streaming_xhrDefaultValue
    end if
    if message.DoesExist("field57") = false then
        field57DefaultValue = __pb_toSignedInt64String("0")
        message["field57"] = field57DefaultValue
    end if
    if message.DoesExist("preferVp9") = false then
        prefer_vp9DefaultValue = false
        message["preferVp9"] = prefer_vp9DefaultValue
    end if
    if message.DoesExist("av1QualityThreshold") = false then
        av1_quality_thresholdDefaultValue = 0
        message["av1QualityThreshold"] = av1_quality_thresholdDefaultValue
    end if
    if message.DoesExist("field60") = false then
        field60DefaultValue = 0
        message["field60"] = field60DefaultValue
    end if
    if message.DoesExist("isPrefetch") = false then
        is_prefetchDefaultValue = false
        message["isPrefetch"] = is_prefetchDefaultValue
    end if
    if message.DoesExist("sabrSupportQualityConstraints") = false then
        sabr_support_quality_constraintsDefaultValue = false
        message["sabrSupportQualityConstraints"] = sabr_support_quality_constraintsDefaultValue
    end if
    if message.DoesExist("sabrLicenseConstraint") = false then
        sabr_license_constraintDefaultValue = ""
        message["sabrLicenseConstraint"] = sabr_license_constraintDefaultValue
    end if
    if message.DoesExist("allowProximaLiveLatency") = false then
        allow_proxima_live_latencyDefaultValue = 0
        message["allowProximaLiveLatency"] = allow_proxima_live_latencyDefaultValue
    end if
    if message.DoesExist("sabrForceProxima") = false then
        sabr_force_proximaDefaultValue = 0
        message["sabrForceProxima"] = sabr_force_proximaDefaultValue
    end if
    if message.DoesExist("field67") = false then
        field67DefaultValue = 0
        message["field67"] = field67DefaultValue
    end if
    if message.DoesExist("sabrForceMaxNetworkInterruptionDurationMs") = false then
        sabr_force_max_network_interruption_duration_msDefaultValue = __pb_toSignedInt64String("0")
        message["sabrForceMaxNetworkInterruptionDurationMs"] = sabr_force_max_network_interruption_duration_msDefaultValue
    end if
    if message.DoesExist("audioTrackId") = false then
        audio_track_idDefaultValue = ""
        message["audioTrackId"] = audio_track_idDefaultValue
    end if
    if message.DoesExist("enableVoiceBoost") = false then
        enable_voice_boostDefaultValue = false
        message["enableVoiceBoost"] = enable_voice_boostDefaultValue
    end if
    return message
end function
