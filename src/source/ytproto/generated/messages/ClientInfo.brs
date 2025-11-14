' Auto-generated encoder/decoder for video_streaming.StreamerContext.ClientInfo

function ClientInfoEncode(message as Object) as String
    fieldMap = {}
    fieldMap["device_make"] = "deviceMake"
    fieldMap["device_model"] = "deviceModel"
    fieldMap["client_name"] = "clientName"
    fieldMap["client_version"] = "clientVersion"
    fieldMap["os_name"] = "osName"
    fieldMap["os_version"] = "osVersion"
    fieldMap["accept_language"] = "acceptLanguage"
    fieldMap["accept_region"] = "acceptRegion"
    fieldMap["screen_width_points"] = "screenWidthPoints"
    fieldMap["screen_height_points"] = "screenHeightPoints"
    fieldMap["screen_width_inches"] = "screenWidthInches"
    fieldMap["screen_height_inches"] = "screenHeightInches"
    fieldMap["screen_pixel_density"] = "screenPixelDensity"
    fieldMap["client_form_factor"] = "clientFormFactor"
    fieldMap["gmscore_version_code"] = "gmscoreVersionCode"
    fieldMap["window_width_points"] = "windowWidthPoints"
    fieldMap["window_height_points"] = "windowHeightPoints"
    fieldMap["android_sdk_version"] = "androidSdkVersion"
    fieldMap["screen_density_float"] = "screenDensityFloat"
    fieldMap["utc_offset_minutes"] = "utcOffsetMinutes"
    fieldMap["time_zone"] = "timeZone"
    fieldMap["gl_device_info"] = "glDeviceInfo"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_device_make = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("device_make") then
                field_device_make = message.Lookup("device_make")
            else if message.DoesExist("deviceMake") then
                field_device_make = message.Lookup("deviceMake")
            end if
        else
            field_device_make = message["device_make"]
            if field_device_make = invalid then
                field_device_make = message["deviceMake"]
            end if
        end if
    end if

    if field_device_make <> invalid then
        strValue = field_device_make
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 98)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_device_model = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("device_model") then
                field_device_model = message.Lookup("device_model")
            else if message.DoesExist("deviceModel") then
                field_device_model = message.Lookup("deviceModel")
            end if
        else
            field_device_model = message["device_model"]
            if field_device_model = invalid then
                field_device_model = message["deviceModel"]
            end if
        end if
    end if

    if field_device_model <> invalid then
        strValue = field_device_model
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 106)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_client_name = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_name") then
                field_client_name = message.Lookup("client_name")
            else if message.DoesExist("clientName") then
                field_client_name = message.Lookup("clientName")
            end if
        else
            field_client_name = message["client_name"]
            if field_client_name = invalid then
                field_client_name = message["clientName"]
            end if
        end if
    end if

    if field_client_name <> invalid then
        normalized = __pb_normalizeSigned32(field_client_name)
        __pb_writeVarint(bytes, 128)
        __pb_writeVarint(bytes, normalized)
    end if

    field_client_version = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_version") then
                field_client_version = message.Lookup("client_version")
            else if message.DoesExist("clientVersion") then
                field_client_version = message.Lookup("clientVersion")
            end if
        else
            field_client_version = message["client_version"]
            if field_client_version = invalid then
                field_client_version = message["clientVersion"]
            end if
        end if
    end if

    if field_client_version <> invalid then
        strValue = field_client_version
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 138)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_os_name = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("os_name") then
                field_os_name = message.Lookup("os_name")
            else if message.DoesExist("osName") then
                field_os_name = message.Lookup("osName")
            end if
        else
            field_os_name = message["os_name"]
            if field_os_name = invalid then
                field_os_name = message["osName"]
            end if
        end if
    end if

    if field_os_name <> invalid then
        strValue = field_os_name
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 146)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_os_version = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("os_version") then
                field_os_version = message.Lookup("os_version")
            else if message.DoesExist("osVersion") then
                field_os_version = message.Lookup("osVersion")
            end if
        else
            field_os_version = message["os_version"]
            if field_os_version = invalid then
                field_os_version = message["osVersion"]
            end if
        end if
    end if

    if field_os_version <> invalid then
        strValue = field_os_version
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 154)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_accept_language = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("accept_language") then
                field_accept_language = message.Lookup("accept_language")
            else if message.DoesExist("acceptLanguage") then
                field_accept_language = message.Lookup("acceptLanguage")
            end if
        else
            field_accept_language = message["accept_language"]
            if field_accept_language = invalid then
                field_accept_language = message["acceptLanguage"]
            end if
        end if
    end if

    if field_accept_language <> invalid then
        strValue = field_accept_language
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 170)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_accept_region = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("accept_region") then
                field_accept_region = message.Lookup("accept_region")
            else if message.DoesExist("acceptRegion") then
                field_accept_region = message.Lookup("acceptRegion")
            end if
        else
            field_accept_region = message["accept_region"]
            if field_accept_region = invalid then
                field_accept_region = message["acceptRegion"]
            end if
        end if
    end if

    if field_accept_region <> invalid then
        strValue = field_accept_region
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 178)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_screen_width_points = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("screen_width_points") then
                field_screen_width_points = message.Lookup("screen_width_points")
            else if message.DoesExist("screenWidthPoints") then
                field_screen_width_points = message.Lookup("screenWidthPoints")
            end if
        else
            field_screen_width_points = message["screen_width_points"]
            if field_screen_width_points = invalid then
                field_screen_width_points = message["screenWidthPoints"]
            end if
        end if
    end if

    if field_screen_width_points <> invalid then
        normalized = __pb_normalizeSigned32(field_screen_width_points)
        __pb_writeVarint(bytes, 296)
        __pb_writeVarint(bytes, normalized)
    end if

    field_screen_height_points = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("screen_height_points") then
                field_screen_height_points = message.Lookup("screen_height_points")
            else if message.DoesExist("screenHeightPoints") then
                field_screen_height_points = message.Lookup("screenHeightPoints")
            end if
        else
            field_screen_height_points = message["screen_height_points"]
            if field_screen_height_points = invalid then
                field_screen_height_points = message["screenHeightPoints"]
            end if
        end if
    end if

    if field_screen_height_points <> invalid then
        normalized = __pb_normalizeSigned32(field_screen_height_points)
        __pb_writeVarint(bytes, 304)
        __pb_writeVarint(bytes, normalized)
    end if

    field_screen_width_inches = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("screen_width_inches") then
                field_screen_width_inches = message.Lookup("screen_width_inches")
            else if message.DoesExist("screenWidthInches") then
                field_screen_width_inches = message.Lookup("screenWidthInches")
            end if
        else
            field_screen_width_inches = message["screen_width_inches"]
            if field_screen_width_inches = invalid then
                field_screen_width_inches = message["screenWidthInches"]
            end if
        end if
    end if

    if field_screen_width_inches <> invalid then
        normalized = __pb_toLong(field_screen_width_inches)
        __pb_writeVarint(bytes, 317)
        __pb_writeFloat32(bytes, normalized)
    end if

    field_screen_height_inches = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("screen_height_inches") then
                field_screen_height_inches = message.Lookup("screen_height_inches")
            else if message.DoesExist("screenHeightInches") then
                field_screen_height_inches = message.Lookup("screenHeightInches")
            end if
        else
            field_screen_height_inches = message["screen_height_inches"]
            if field_screen_height_inches = invalid then
                field_screen_height_inches = message["screenHeightInches"]
            end if
        end if
    end if

    if field_screen_height_inches <> invalid then
        normalized = __pb_toLong(field_screen_height_inches)
        __pb_writeVarint(bytes, 325)
        __pb_writeFloat32(bytes, normalized)
    end if

    field_screen_pixel_density = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("screen_pixel_density") then
                field_screen_pixel_density = message.Lookup("screen_pixel_density")
            else if message.DoesExist("screenPixelDensity") then
                field_screen_pixel_density = message.Lookup("screenPixelDensity")
            end if
        else
            field_screen_pixel_density = message["screen_pixel_density"]
            if field_screen_pixel_density = invalid then
                field_screen_pixel_density = message["screenPixelDensity"]
            end if
        end if
    end if

    if field_screen_pixel_density <> invalid then
        normalized = __pb_normalizeSigned32(field_screen_pixel_density)
        __pb_writeVarint(bytes, 328)
        __pb_writeVarint(bytes, normalized)
    end if

    field_client_form_factor = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("client_form_factor") then
                field_client_form_factor = message.Lookup("client_form_factor")
            else if message.DoesExist("clientFormFactor") then
                field_client_form_factor = message.Lookup("clientFormFactor")
            end if
        else
            field_client_form_factor = message["client_form_factor"]
            if field_client_form_factor = invalid then
                field_client_form_factor = message["clientFormFactor"]
            end if
        end if
    end if

    if field_client_form_factor <> invalid then
        numericValue = ClientInfo_client_form_factor_normalizeEnum(field_client_form_factor)
        __pb_writeVarint(bytes, 368)
        __pb_writeVarint(bytes, numericValue)
    end if

    field_gmscore_version_code = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("gmscore_version_code") then
                field_gmscore_version_code = message.Lookup("gmscore_version_code")
            else if message.DoesExist("gmscoreVersionCode") then
                field_gmscore_version_code = message.Lookup("gmscoreVersionCode")
            end if
        else
            field_gmscore_version_code = message["gmscore_version_code"]
            if field_gmscore_version_code = invalid then
                field_gmscore_version_code = message["gmscoreVersionCode"]
            end if
        end if
    end if

    if field_gmscore_version_code <> invalid then
        normalized = __pb_normalizeSigned32(field_gmscore_version_code)
        __pb_writeVarint(bytes, 400)
        __pb_writeVarint(bytes, normalized)
    end if

    field_window_width_points = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("window_width_points") then
                field_window_width_points = message.Lookup("window_width_points")
            else if message.DoesExist("windowWidthPoints") then
                field_window_width_points = message.Lookup("windowWidthPoints")
            end if
        else
            field_window_width_points = message["window_width_points"]
            if field_window_width_points = invalid then
                field_window_width_points = message["windowWidthPoints"]
            end if
        end if
    end if

    if field_window_width_points <> invalid then
        normalized = __pb_normalizeSigned32(field_window_width_points)
        __pb_writeVarint(bytes, 440)
        __pb_writeVarint(bytes, normalized)
    end if

    field_window_height_points = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("window_height_points") then
                field_window_height_points = message.Lookup("window_height_points")
            else if message.DoesExist("windowHeightPoints") then
                field_window_height_points = message.Lookup("windowHeightPoints")
            end if
        else
            field_window_height_points = message["window_height_points"]
            if field_window_height_points = invalid then
                field_window_height_points = message["windowHeightPoints"]
            end if
        end if
    end if

    if field_window_height_points <> invalid then
        normalized = __pb_normalizeSigned32(field_window_height_points)
        __pb_writeVarint(bytes, 448)
        __pb_writeVarint(bytes, normalized)
    end if

    field_android_sdk_version = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("android_sdk_version") then
                field_android_sdk_version = message.Lookup("android_sdk_version")
            else if message.DoesExist("androidSdkVersion") then
                field_android_sdk_version = message.Lookup("androidSdkVersion")
            end if
        else
            field_android_sdk_version = message["android_sdk_version"]
            if field_android_sdk_version = invalid then
                field_android_sdk_version = message["androidSdkVersion"]
            end if
        end if
    end if

    if field_android_sdk_version <> invalid then
        normalized = __pb_normalizeSigned32(field_android_sdk_version)
        __pb_writeVarint(bytes, 512)
        __pb_writeVarint(bytes, normalized)
    end if

    field_screen_density_float = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("screen_density_float") then
                field_screen_density_float = message.Lookup("screen_density_float")
            else if message.DoesExist("screenDensityFloat") then
                field_screen_density_float = message.Lookup("screenDensityFloat")
            end if
        else
            field_screen_density_float = message["screen_density_float"]
            if field_screen_density_float = invalid then
                field_screen_density_float = message["screenDensityFloat"]
            end if
        end if
    end if

    if field_screen_density_float <> invalid then
        normalized = __pb_toLong(field_screen_density_float)
        __pb_writeVarint(bytes, 525)
        __pb_writeFloat32(bytes, normalized)
    end if

    field_utc_offset_minutes = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("utc_offset_minutes") then
                field_utc_offset_minutes = message.Lookup("utc_offset_minutes")
            else if message.DoesExist("utcOffsetMinutes") then
                field_utc_offset_minutes = message.Lookup("utcOffsetMinutes")
            end if
        else
            field_utc_offset_minutes = message["utc_offset_minutes"]
            if field_utc_offset_minutes = invalid then
                field_utc_offset_minutes = message["utcOffsetMinutes"]
            end if
        end if
    end if

    if field_utc_offset_minutes <> invalid then
        __pb_writeVarint(bytes, 536)
        __pb_writeVarint64(bytes, field_utc_offset_minutes)
    end if

    field_time_zone = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("time_zone") then
                field_time_zone = message.Lookup("time_zone")
            else if message.DoesExist("timeZone") then
                field_time_zone = message.Lookup("timeZone")
            end if
        else
            field_time_zone = message["time_zone"]
            if field_time_zone = invalid then
                field_time_zone = message["timeZone"]
            end if
        end if
    end if

    if field_time_zone <> invalid then
        strValue = field_time_zone
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 642)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_chipset = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("chipset") then
                field_chipset = message.Lookup("chipset")
            end if
        else
            field_chipset = message["chipset"]
        end if
    end if

    if field_chipset <> invalid then
        strValue = field_chipset
        valueType = Type(strValue)
        if valueType <> "String" and valueType <> "roString" then
            strValue = strValue + ""
        end if
        strBytes = __pb_createByteArray()
        strBytes.FromAsciiString(strValue)
        __pb_writeVarint(bytes, 738)
        __pb_writeVarint(bytes, strBytes.Count())
        __pb_appendByteArray(bytes, strBytes)
    end if

    field_gl_device_info = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("gl_device_info") then
                field_gl_device_info = message.Lookup("gl_device_info")
            else if message.DoesExist("glDeviceInfo") then
                field_gl_device_info = message.Lookup("glDeviceInfo")
            end if
        else
            field_gl_device_info = message["gl_device_info"]
            if field_gl_device_info = invalid then
                field_gl_device_info = message["glDeviceInfo"]
            end if
        end if
    end if

    if field_gl_device_info <> invalid then
        gl_device_infoEncoded = GLDeviceInfoEncode(field_gl_device_info)
        gl_device_infoChildBytes = __pb_fromBase64(gl_device_infoEncoded)
        __pb_writeVarint(bytes, 818)
        __pb_writeVarint(bytes, gl_device_infoChildBytes.Count())
        __pb_appendByteArray(bytes, gl_device_infoChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function ClientInfo_client_form_factor_normalizeEnum(value as Dynamic) as Integer
    values = ClientInfo_client_form_factor_getEnumValues()
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

function ClientInfo_client_form_factor_enumName(value as Integer) as Dynamic
    names = ClientInfo_client_form_factor_getEnumNames()
    key = StrI(value, 10)
    if names.DoesExist(key) then
        return names[key]
    end if
    return value
end function

function ClientInfo_client_form_factor_getEnumValues() as Object
    globalAA = GetGlobalAA()
    key = "ClientInfo_client_form_factor_EnumValues"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["FORM_FACTOR_VAL1"] = 1
    table["FORM_FACTOR_VAL2"] = 2
    table["UNKNOWN_FORM_FACTOR"] = 0
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientInfo_client_form_factor_getEnumNames() as Object
    globalAA = GetGlobalAA()
    key = "ClientInfo_client_form_factor_EnumNames"
    if globalAA <> invalid and globalAA.DoesExist(key) then
        return globalAA[key]
    end if
    table = {}
    table["0"] = "UNKNOWN_FORM_FACTOR"
    table["1"] = "FORM_FACTOR_VAL1"
    table["2"] = "FORM_FACTOR_VAL2"
    if globalAA <> invalid then globalAA[key] = table
    return table
end function

function ClientInfoDecode(encoded as String) as Object
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
        if fieldNumber = 12 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                device_makeValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["deviceMake"] = device_makeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 13 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                device_modelValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["deviceModel"] = device_modelValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 16 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                client_nameValue = __pb_toSigned32FromString(valueResult.value)
                message["clientName"] = client_nameValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 17 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                client_versionValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["clientVersion"] = client_versionValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 18 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                os_nameValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["osName"] = os_nameValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 19 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                os_versionValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["osVersion"] = os_versionValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 21 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                accept_languageValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["acceptLanguage"] = accept_languageValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 22 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                accept_regionValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["acceptRegion"] = accept_regionValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 37 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                screen_width_pointsValue = __pb_toSigned32FromString(valueResult.value)
                message["screenWidthPoints"] = screen_width_pointsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 38 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                screen_height_pointsValue = __pb_toSigned32FromString(valueResult.value)
                message["screenHeightPoints"] = screen_height_pointsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 39 then
            if wireType = 5 then
                floatResult = __pb_readFloat32(bytes, cursor)
                cursor = floatResult.nextIndex
                screen_width_inchesValue = floatResult.value
                message["screenWidthInches"] = screen_width_inchesValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 40 then
            if wireType = 5 then
                floatResult = __pb_readFloat32(bytes, cursor)
                cursor = floatResult.nextIndex
                screen_height_inchesValue = floatResult.value
                message["screenHeightInches"] = screen_height_inchesValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 41 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                screen_pixel_densityValue = __pb_toSigned32FromString(valueResult.value)
                message["screenPixelDensity"] = screen_pixel_densityValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 46 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                numericValue = __pb_toSigned32FromString(valueResult.value)
                client_form_factorEnumValue = ClientInfo_client_form_factor_enumName(numericValue)
                message["clientFormFactor"] = client_form_factorEnumValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 50 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                gmscore_version_codeValue = __pb_toSigned32FromString(valueResult.value)
                message["gmscoreVersionCode"] = gmscore_version_codeValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 55 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                window_width_pointsValue = __pb_toSigned32FromString(valueResult.value)
                message["windowWidthPoints"] = window_width_pointsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 56 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                window_height_pointsValue = __pb_toSigned32FromString(valueResult.value)
                message["windowHeightPoints"] = window_height_pointsValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 64 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                android_sdk_versionValue = __pb_toSigned32FromString(valueResult.value)
                message["androidSdkVersion"] = android_sdk_versionValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 65 then
            if wireType = 5 then
                floatResult = __pb_readFloat32(bytes, cursor)
                cursor = floatResult.nextIndex
                screen_density_floatValue = floatResult.value
                message["screenDensityFloat"] = screen_density_floatValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 67 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                utc_offset_minutesValue = __pb_toSignedInt64String(valueResult.value)
                message["utcOffsetMinutes"] = utc_offset_minutesValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 80 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                time_zoneValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["timeZone"] = time_zoneValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 92 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                strLength = lengthResult.value
                chipsetValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["chipset"] = chipsetValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 102 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                gl_device_infoLength = lengthResult.value
                gl_device_infoChildBytes = __pb_readBytes(bytes, cursor, gl_device_infoLength)
                cursor = cursor + gl_device_infoLength
                gl_device_infoChild = __pb_byteArrayToBase64(gl_device_infoChildBytes)
                gl_device_infoDecoded = GLDeviceInfoDecode(gl_device_infoChild)
                message["glDeviceInfo"] = gl_device_infoDecoded
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
