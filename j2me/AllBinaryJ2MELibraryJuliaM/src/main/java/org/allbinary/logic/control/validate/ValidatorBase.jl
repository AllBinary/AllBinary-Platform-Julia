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
# package org.allbinary.logic.control.validate

mutable struct ValidatorBase <: JObject
    ValidatorBase() = new()
end

const ValidatorBase_instanceValue = Ref{Any}(nothing)
const ValidatorBase_instanceSet = Ref(false)
function staticGet_instance(::Type{ValidatorBase})
    if !ValidatorBase_instanceSet[]
        ValidatorBase_instanceSet[] = true
        ValidatorBase_instanceValue[] = newValidatorBase()
    end
    ValidatorBase_instanceValue[]
end
function staticSet_instance(::Type{ValidatorBase}, value)
    ValidatorBase_instanceSet[] = true
    ValidatorBase_instanceValue[] = value
end

function initFieldsValidatorBase(this::ValidatorBase)
    nothing
end


function getInstance(::Type{ValidatorBase})
        return staticGet_instance(ValidatorBase)
end


function initValidatorBase(this::ValidatorBase)
        initFieldsValidatorBase(this)
        nothing
        nothing
end

function newValidatorBase()
    this = ValidatorBase()
    initValidatorBase(this)
    this
end


function isValid(this::ValidatorBase)
        return AllBinary.getInstance(BooleanFactory).TRUE
end


function validationInfo(this::ValidatorBase)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function toHashtable(this::ValidatorBase)
        return AllBinary.getInstance(StdUtil).NULL_TABLE
end


function toList(this::ValidatorBase)
        return AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
end

