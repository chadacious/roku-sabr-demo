' Auto-generated encoder/decoder for video_streaming.StreamerContext.GLDeviceInfo

function GLDeviceInfoEncode(message as Object) as String
    fieldMap = {}
    fieldMap["gl_renderer"] = "glRenderer"
    fieldMap["gl_es_version_major"] = "glEsVersionMajor"
    fieldMap["gl_es_version_minor"] = "glEsVersionMinor"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_gl_renderer = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("gl_renderer") then
                field_gl_renderer = message.Lookup("gl_renderer")
            else if message.DoesExist("glRenderer") then
                field_gl_renderer = message.Lookup("glRenderer")
            end if
        else
            field_gl_renderer = message["gl_renderer"]
            if field_gl_renderer = invalid then
                field_gl_renderer = message["glRenderer"]
            end if
        end if
    end if

    if field_gl_renderer <> invalid then
        strValue = field_gl_renderer
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

    field_gl_es_version_major = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("gl_es_version_major") then
                field_gl_es_version_major = message.Lookup("gl_es_version_major")
            else if message.DoesExist("glEsVersionMajor") then
                field_gl_es_version_major = message.Lookup("glEsVersionMajor")
            end if
        else
            field_gl_es_version_major = message["gl_es_version_major"]
            if field_gl_es_version_major = invalid then
                field_gl_es_version_major = message["glEsVersionMajor"]
            end if
        end if
    end if

    if field_gl_es_version_major <> invalid then
        normalized = __pb_normalizeSigned32(field_gl_es_version_major)
        __pb_writeVarint(bytes, 16)
        __pb_writeVarint(bytes, normalized)
    end if

    field_gl_es_version_minor = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("gl_es_version_minor") then
                field_gl_es_version_minor = message.Lookup("gl_es_version_minor")
            else if message.DoesExist("glEsVersionMinor") then
                field_gl_es_version_minor = message.Lookup("glEsVersionMinor")
            end if
        else
            field_gl_es_version_minor = message["gl_es_version_minor"]
            if field_gl_es_version_minor = invalid then
                field_gl_es_version_minor = message["glEsVersionMinor"]
            end if
        end if
    end if

    if field_gl_es_version_minor <> invalid then
        normalized = __pb_normalizeSigned32(field_gl_es_version_minor)
        __pb_writeVarint(bytes, 24)
        __pb_writeVarint(bytes, normalized)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function GLDeviceInfoDecode(encoded as String) as Object
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
                gl_rendererValue = __pb_readString(bytes, cursor, strLength)
                cursor = cursor + strLength
                message["glRenderer"] = gl_rendererValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                gl_es_version_majorValue = __pb_toSigned32FromString(valueResult.value)
                message["glEsVersionMajor"] = gl_es_version_majorValue
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 3 then
            if wireType = 0 then
                valueResult = __pb_readVarint64(bytes, cursor)
                cursor = valueResult.nextIndex
                gl_es_version_minorValue = __pb_toSigned32FromString(valueResult.value)
                message["glEsVersionMinor"] = gl_es_version_minorValue
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
