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

#ActualPlatform
mutable struct LogUtil <: JObject
    LogUtil() = new()
end

const LogUtil_instanceValue = Ref{Any}(nothing)
const LogUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LogUtil})
    if !LogUtil_instanceSet[]
        LogUtil_instanceSet[] = true
        LogUtil_instanceValue[] = newLogUtil()
    end
    LogUtil_instanceValue[]
end
function staticSet_instance(::Type{LogUtil}, value)
    LogUtil_instanceSet[] = true
    LogUtil_instanceValue[] = value
end

function initFieldsLogUtil(this::LogUtil)
    nothing
end


function getInstance(::Type{LogUtil})
        return staticGet_instance(LogUtil)
end


function initLogUtil(this::LogUtil)
        initFieldsLogUtil(this)
        nothing
        nothing
end

function newLogUtil()
    this = LogUtil()
    initLogUtil(this)
    this
end


function putP(this::LogUtil, log)
        nothing
        nothing
end


function putF(this::LogUtil, specialMessage, anyType, functionName)
        nothing
        nothing
end


function putFS(this::LogUtil, specialMessage, className, functionName)
        nothing
        nothing
end


function put(this::LogUtil, specialMessage, anyType, functionName, exception)
        nothing
        nothing
end

