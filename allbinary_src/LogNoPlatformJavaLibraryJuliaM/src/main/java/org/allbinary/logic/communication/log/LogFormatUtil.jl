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
# package org.allbinary.logic.communication.log

#NoPlatform
mutable struct LogFormatUtil <: JObject
    LogFormatUtil() = new()
end

const LogFormatUtil_instanceValue = Ref{Any}(nothing)
const LogFormatUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LogFormatUtil})
    if !LogFormatUtil_instanceSet[]
        LogFormatUtil_instanceSet[] = true
        LogFormatUtil_instanceValue[] = newLogFormatUtil()
    end
    LogFormatUtil_instanceValue[]
end
function staticSet_instance(::Type{LogFormatUtil}, value)
    LogFormatUtil_instanceSet[] = true
    LogFormatUtil_instanceValue[] = value
end

function initFieldsLogFormatUtil(this::LogFormatUtil)
    nothing
end


function getInstance(::Type{LogFormatUtil})
        return staticGet_instance(LogFormatUtil)
end


function initLogFormatUtil(this::LogFormatUtil)
        initFieldsLogFormatUtil(this)
        nothing
        nothing
end

function newLogFormatUtil()
    this = LogFormatUtil()
    initLogFormatUtil(this)
    this
end


function get(this::LogFormatUtil, className, functionName, specialMessage, exception)
        throw(jNewException("RuntimeException", ""))
end


function getS(this::LogFormatUtil, className, functionName, specialMessage)
        throw(jNewException("RuntimeException", ""))
end


function getO(this::LogFormatUtil, exception)
        throw(jNewException("RuntimeException", ""))
end

