#=
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.io

mutable struct StreamUtil <: JObject
    logUtil::Any
    StreamUtil() = new()
end

const StreamUtil_instanceValue = Ref{Any}(nothing)
const StreamUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{StreamUtil})
    if !StreamUtil_instanceSet[]
        StreamUtil_instanceSet[] = true
        StreamUtil_instanceValue[] = newStreamUtil()
    end
    StreamUtil_instanceValue[]
end
function staticSet_instance(::Type{StreamUtil}, value)
    StreamUtil_instanceSet[] = true
    StreamUtil_instanceValue[] = value
end

function initFieldsStreamUtil(this::StreamUtil)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function getInstance(::Type{StreamUtil})
        return staticGet_instance(StreamUtil)
end


function initStreamUtil(this::StreamUtil)
        initFieldsStreamUtil(this)
        nothing
        nothing
end

function newStreamUtil()
    this = StreamUtil()
    initStreamUtil(this)
    this
end


function get(this::StreamUtil, inputStream, outputStream, buffer)
        local len::Int32 = Int32(0)
        while true
            len = AllBinary.read(inputStream, buffer, Int32(0), Int32(Base.length(buffer)))
            if len != -Int32(1)
                nothing
            else
                break
            end
            AllBinary.write(outputStream, buffer, Int32(0), len)
        end
        return outputStream
end


function getByteArray(this::StreamUtil, inputStream, outputStream2, byteArray)
        local outputStream = outputStream2
        try
            AllBinary.get(this, inputStream, outputStream, byteArray)
            return AllBinary.toByteArray(outputStream)
        catch e
            throw(e)
        finally
            AllBinary.close(this, outputStream)
        end
end


function close(this::StreamUtil, closeable)
        try
            if closeable !== nothing
                AllBinary.close(closeable)
            end
            return true
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.CLOSE, e)
            return false
        end
end

