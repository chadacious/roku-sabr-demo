' Auto-generated encoder/decoder for video_streaming.PlaybackStartPolicy

function PlaybackStartPolicyEncode(message as Object) as String
    fieldMap = {}
    fieldMap["start_min_readahead_policy"] = "startMinReadaheadPolicy"
    fieldMap["resume_min_readahead_policy"] = "resumeMinReadaheadPolicy"
    message = __pb_normalizeMessageKeys(message, fieldMap)

    bytes = __pb_createByteArray()
    field_start_min_readahead_policy = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("start_min_readahead_policy") then
                field_start_min_readahead_policy = message.Lookup("start_min_readahead_policy")
            else if message.DoesExist("startMinReadaheadPolicy") then
                field_start_min_readahead_policy = message.Lookup("startMinReadaheadPolicy")
            end if
        else
            field_start_min_readahead_policy = message["start_min_readahead_policy"]
            if field_start_min_readahead_policy = invalid then
                field_start_min_readahead_policy = message["startMinReadaheadPolicy"]
            end if
        end if
    end if

    if field_start_min_readahead_policy <> invalid then
        start_min_readahead_policyEncoded = ReadaheadPolicyEncode(field_start_min_readahead_policy)
        start_min_readahead_policyChildBytes = __pb_fromBase64(start_min_readahead_policyEncoded)
        __pb_writeVarint(bytes, 10)
        __pb_writeVarint(bytes, start_min_readahead_policyChildBytes.Count())
        __pb_appendByteArray(bytes, start_min_readahead_policyChildBytes)
    end if

    field_resume_min_readahead_policy = invalid
    if message <> invalid then
        if GetInterface(message, "ifAssociativeArray") <> invalid then
            if message.DoesExist("resume_min_readahead_policy") then
                field_resume_min_readahead_policy = message.Lookup("resume_min_readahead_policy")
            else if message.DoesExist("resumeMinReadaheadPolicy") then
                field_resume_min_readahead_policy = message.Lookup("resumeMinReadaheadPolicy")
            end if
        else
            field_resume_min_readahead_policy = message["resume_min_readahead_policy"]
            if field_resume_min_readahead_policy = invalid then
                field_resume_min_readahead_policy = message["resumeMinReadaheadPolicy"]
            end if
        end if
    end if

    if field_resume_min_readahead_policy <> invalid then
        resume_min_readahead_policyEncoded = ReadaheadPolicyEncode(field_resume_min_readahead_policy)
        resume_min_readahead_policyChildBytes = __pb_fromBase64(resume_min_readahead_policyEncoded)
        __pb_writeVarint(bytes, 18)
        __pb_writeVarint(bytes, resume_min_readahead_policyChildBytes.Count())
        __pb_appendByteArray(bytes, resume_min_readahead_policyChildBytes)
    end if

    __pb_appendUnknownFields(bytes, message)
    return __pb_toBase64(bytes)
end function

function PlaybackStartPolicyDecode(encoded as String) as Object
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
                start_min_readahead_policyLength = lengthResult.value
                start_min_readahead_policyChildBytes = __pb_readBytes(bytes, cursor, start_min_readahead_policyLength)
                cursor = cursor + start_min_readahead_policyLength
                start_min_readahead_policyChild = __pb_byteArrayToBase64(start_min_readahead_policyChildBytes)
                start_min_readahead_policyDecoded = ReadaheadPolicyDecode(start_min_readahead_policyChild)
                message["startMinReadaheadPolicy"] = start_min_readahead_policyDecoded
            else
                nextIndex = __pb_handleUnknownField(message, bytes, tagStart)
                if nextIndex <= tagStart then exit while
                cursor = nextIndex
            end if
        else if fieldNumber = 2 then
            if wireType = 2 then
                lengthResult = __pb_readVarint(bytes, cursor)
                cursor = lengthResult.nextIndex
                resume_min_readahead_policyLength = lengthResult.value
                resume_min_readahead_policyChildBytes = __pb_readBytes(bytes, cursor, resume_min_readahead_policyLength)
                cursor = cursor + resume_min_readahead_policyLength
                resume_min_readahead_policyChild = __pb_byteArrayToBase64(resume_min_readahead_policyChildBytes)
                resume_min_readahead_policyDecoded = ReadaheadPolicyDecode(resume_min_readahead_policyChild)
                message["resumeMinReadaheadPolicy"] = resume_min_readahead_policyDecoded
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
