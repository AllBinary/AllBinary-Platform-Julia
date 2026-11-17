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
# package org.allbinary.business.error

mutable struct ErrorData <: JObject
    NAME::Any
    TEXT::Any
    ErrorData() = new()
end

const ErrorData_instanceValue = Ref{Any}(nothing)
const ErrorData_instanceSet = Ref(false)
function staticGet_instance(::Type{ErrorData})
    if !ErrorData_instanceSet[]
        ErrorData_instanceSet[] = true
        ErrorData_instanceValue[] = newErrorData()
    end
    ErrorData_instanceValue[]
end
function staticSet_instance(::Type{ErrorData}, value)
    ErrorData_instanceSet[] = true
    ErrorData_instanceValue[] = value
end

function initFieldsErrorData(this::ErrorData)
    this.NAME = nothing
    this.TEXT = nothing
    this.NAME = "ERROR_NAME"
    this.TEXT = "ERROR_TEXT"
    nothing
end


function getInstance(::Type{ErrorData})
        return staticGet_instance(ErrorData)
end


function initErrorData(this::ErrorData)
        initFieldsErrorData(this)
        nothing
        nothing
end

function newErrorData()
    this = ErrorData()
    initErrorData(this)
    this
end

