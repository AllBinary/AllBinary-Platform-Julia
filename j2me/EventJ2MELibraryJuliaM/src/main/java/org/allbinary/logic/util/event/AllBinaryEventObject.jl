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
# package org.allbinary.logic.util.event

mutable struct AllBinaryEventObject <: JObject
    source::Any
    AllBinaryEventObject() = new()
end

const AllBinaryEventObject_NULL_EVENTValue = Ref{Any}(nothing)
const AllBinaryEventObject_NULL_EVENTSet = Ref(false)
function staticGet_NULL_EVENT(::Type{AllBinaryEventObject})
    if !AllBinaryEventObject_NULL_EVENTSet[]
        AllBinaryEventObject_NULL_EVENTSet[] = true
        AllBinaryEventObject_NULL_EVENTValue[] = newAllBinaryEventObject(AllBinary.getInstance(NullUtil).NULL_OBJECT)
    end
    AllBinaryEventObject_NULL_EVENTValue[]
end
function staticSet_NULL_EVENT(::Type{AllBinaryEventObject}, value)
    AllBinaryEventObject_NULL_EVENTSet[] = true
    AllBinaryEventObject_NULL_EVENTValue[] = value
end

function initFieldsAllBinaryEventObject(this::AllBinaryEventObject)
    this.source = nothing
    
    nothing
end


function initAllBinaryEventObject(this::AllBinaryEventObject, anyType)
        initFieldsAllBinaryEventObject(this)
        this.source = anyType
        nothing
end

function newAllBinaryEventObject(anyType)
    this = AllBinaryEventObject()
    initAllBinaryEventObject(this, anyType)
    this
end


function getSource(this::AllBinaryEventObject)
        return this.source
end


function setSource(this::AllBinaryEventObject, source)
        this.source = source
        nothing
end

