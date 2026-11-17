#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.io.file

mutable struct SimpleFileUtil <: JObject
    logUtil::Any
    NULL_WRITER::Any
    NULL_READER::Any
    commonStrings::Any
    nullUtil::Any
    streamUtil::Any
    SimpleFileUtil() = new()
end

const SimpleFileUtil_instanceValue = Ref{Any}(nothing)
const SimpleFileUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{SimpleFileUtil})
    if !SimpleFileUtil_instanceSet[]
        SimpleFileUtil_instanceSet[] = true
        SimpleFileUtil_instanceValue[] = newSimpleFileUtil()
    end
    SimpleFileUtil_instanceValue[]
end
function staticSet_instance(::Type{SimpleFileUtil}, value)
    SimpleFileUtil_instanceSet[] = true
    SimpleFileUtil_instanceValue[] = value
end

function initFieldsSimpleFileUtil(this::SimpleFileUtil)
    this.logUtil = nothing
    this.NULL_WRITER = nothing
    this.NULL_READER = nothing
    this.commonStrings = nothing
    this.nullUtil = nothing
    this.streamUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.NULL_WRITER = AllBinary.nullWriter(SimpleFileUtil)
    this.NULL_READER = AllBinary.nullReader(SimpleFileUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.nullUtil = AllBinary.getInstance(NullUtil)
    this.streamUtil = AllBinary.getInstance(StreamUtil)
    nothing
end

function initSimpleFileUtil(this::SimpleFileUtil)
    initFieldsSimpleFileUtil(this)
end

function newSimpleFileUtil()
    this = SimpleFileUtil()
    initSimpleFileUtil(this)
    this
end


function getInstance(::Type{SimpleFileUtil})
        return staticGet_instance(SimpleFileUtil)
end


function nullOutputStream(::Type{SimpleFileUtil})
        return staticGet_NULL_OUTPUT_STREAM(NullOutputStream)
end


function nullWriter(::Type{SimpleFileUtil})
        return staticGet_NULL_WRITER(NullWriter)
end


function nullReader(::Type{SimpleFileUtil})
        return staticGet_NULL_READER(NullReader)
end


function loadFileAsList(this::SimpleFileUtil, inputStream, max, byteArray1)
        return AllBinary.loadFileAsListReturnLine(this, inputStream, max, byteArray1, Int32(0))
end


function loadFileAsListReturnLine(this::SimpleFileUtil, inputStream, max, byteArray1, includeReturnLine)
        local stringList = newBasicArrayListD()
        if inputStream === nothing
            return stringList
        end
        local byteArray = this.nullUtil.NULL_BYTE_ARRAY
        try
            local outputStream2 = newByteArrayOutputStream(max)
            byteArray = AllBinary.getByteArray(this.streamUtil, inputStream, outputStream2, byteArray1)
            AllBinary.close(this.streamUtil, inputStream)
        catch e
            AllBinary.close(this.streamUtil, inputStream)
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)
        end
        if byteArray === nothing
            return stringList
        end
        local size::Int32 = Int32(Base.length(byteArray))
        local index::Int32 = Int32(0)
        local startIndex::Int32 = Int32(0)
        local returnLine::Int32 = Int32(0)
        while index < size
            startIndex = index
            while index < size - Int32(1) && byteArray[index + 1] != ((UInt16('\n')) % Int8)
                index += Int32(1)
            end
            if includeReturnLine == Int32(0)
                if index > Int32(0) && byteArray[index - Int32(1) + 1] == ((UInt16('\r')) % Int8)
                    returnLine = Int32(1)
                else
                    returnLine = Int32(0)
                end
            end
            local s = jFromChars(byteArray, startIndex, (index + includeReturnLine - returnLine - startIndex))
            AllBinary.add(stringList, s)
            index += Int32(1)
        end
        return stringList
end


function createStringFromArrayOfStrings(this::SimpleFileUtil, stringArray)
        local stringMaker = newStringMaker()
        local size::Int32 = Int32(Base.length(stringArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.append(stringMaker, stringArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringMaker)
end

