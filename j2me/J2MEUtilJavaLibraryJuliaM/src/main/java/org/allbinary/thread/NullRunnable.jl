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
# package org.allbinary.thread

# extends ARunnable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullRunnable <: JObject
    NullRunnable() = new()
end

const NullRunnable_instanceValue = Ref{Any}(nothing)
const NullRunnable_instanceSet = Ref(false)
function staticGet_instance(::Type{NullRunnable})
    if !NullRunnable_instanceSet[]
        NullRunnable_instanceSet[] = true
        NullRunnable_instanceValue[] = newNullRunnable()
    end
    NullRunnable_instanceValue[]
end
function staticSet_instance(::Type{NullRunnable}, value)
    NullRunnable_instanceSet[] = true
    NullRunnable_instanceValue[] = value
end

function initFieldsNullRunnable(this::NullRunnable)
    nothing
end


function getInstance(::Type{NullRunnable})
        return staticGet_instance(NullRunnable)
end


function initNullRunnable(this::NullRunnable)
        initARunnable(this)
        initFieldsNullRunnable(this)
        nothing
        nothing
end

function newNullRunnable()
    this = NullRunnable()
    initNullRunnable(this)
    this
end

