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
const ExceptionUtil_PRETEND_EXCEPTIONValue = Ref{Any}(nothing)
const ExceptionUtil_PRETEND_EXCEPTIONSet = Ref(false)
function staticGet_PRETEND_EXCEPTION(::Type{ExceptionUtil})
    if !ExceptionUtil_PRETEND_EXCEPTIONSet[]
        ExceptionUtil_PRETEND_EXCEPTIONSet[] = true
        ExceptionUtil_PRETEND_EXCEPTIONValue[] = jNewException("Exception", "Not Really An Exception")
    end
    ExceptionUtil_PRETEND_EXCEPTIONValue[]
end
function staticSet_PRETEND_EXCEPTION(::Type{ExceptionUtil}, value)
    ExceptionUtil_PRETEND_EXCEPTIONSet[] = true
    ExceptionUtil_PRETEND_EXCEPTIONValue[] = value
end

function initFieldsExceptionUtil(this::ExceptionUtil)
    this.NONE = nothing
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
        AllBinary.printStackTrace(e)
        return this.NONE
end

