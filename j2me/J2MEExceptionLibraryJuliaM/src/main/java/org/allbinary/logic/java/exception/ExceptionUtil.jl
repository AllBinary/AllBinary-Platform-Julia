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
# package org.allbinary.logic.java.exception

#ActualPlatform
mutable struct ExceptionUtil <: JObject
    PRETEND_EXCEPTION::Any
    NONE::Any
    ExceptionUtil() = new()
end

const ExceptionUtil_instanceValue = Ref{Any}(nothing)
const ExceptionUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ExceptionUtil})
    if !ExceptionUtil_instanceSet[]
        ExceptionUtil_instanceSet[] = true
        ExceptionUtil_instanceValue[] = newExceptionUtil()
    end
    ExceptionUtil_instanceValue[]
end
function staticSet_instance(::Type{ExceptionUtil}, value)
    ExceptionUtil_instanceSet[] = true
    ExceptionUtil_instanceValue[] = value
end

function initFieldsExceptionUtil(this::ExceptionUtil)
    this.PRETEND_EXCEPTION = nothing
    this.NONE = nothing
    this.PRETEND_EXCEPTION = jNewException("Exception", "Not Really An Exception")
    this.NONE = "No Stack Trace"
    nothing
end


function getInstance(::Type{ExceptionUtil})
        return staticGet_instance(ExceptionUtil)
end


function initExceptionUtil(this::ExceptionUtil)
        initFieldsExceptionUtil(this)
        nothing
        nothing
end

function newExceptionUtil()
    this = ExceptionUtil()
    initExceptionUtil(this)
    this
end


function getStackTrace(this::ExceptionUtil, e)
        local bs = newByteArrayOutputStream()
        AllBinary.printStackTrace(e)
        local output = AllBinary.toString(bs)
        return output
end

