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
mutable struct LogFactory <: JObject
    LogFactory() = new()
end

const LogFactory_LOGValue = Ref{Any}(nothing)
const LogFactory_LOGSet = Ref(false)
function staticGet_LOG(::Type{LogFactory})
    if !LogFactory_LOGSet[]
        LogFactory_LOGSet[] = true
        LogFactory_LOGValue[] = newLog(AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(NullUtil).NULL_OBJECT, AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(NullUtil).NULL_OBJECT)
    end
    LogFactory_LOGValue[]
end
function staticSet_LOG(::Type{LogFactory}, value)
    LogFactory_LOGSet[] = true
    LogFactory_LOGValue[] = value
end

function initFieldsLogFactory(this::LogFactory)
    nothing
end

function initLogFactory(this::LogFactory)
    initFieldsLogFactory(this)
end

function newLogFactory()
    this = LogFactory()
    initLogFactory(this)
    this
end


function getInstanceD(::Type{LogFactory})
        local stringUtil = AllBinary.getInstance(StringUtil)
        local nullUtil = AllBinary.getInstance(NullUtil)
        return newLog(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT)
end


function getInstance(::Type{LogFactory}, specialMessage, anyType, functionName, exception)
        return newLog(specialMessage, anyType, functionName, exception)
end


function getInstanceF(::Type{LogFactory}, specialMessage, anyType, functionName)
        return staticGet_LOG(LogFactory)
end

