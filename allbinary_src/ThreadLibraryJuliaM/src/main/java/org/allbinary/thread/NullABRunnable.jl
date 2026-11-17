#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.thread

# extends ABRunnable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullABRunnable <: JObject
    NullABRunnable() = new()
end

const NullABRunnable_instanceValue = Ref{Any}(nothing)
const NullABRunnable_instanceSet = Ref(false)
function staticGet_instance(::Type{NullABRunnable})
    if !NullABRunnable_instanceSet[]
        NullABRunnable_instanceSet[] = true
        NullABRunnable_instanceValue[] = newNullABRunnable()
    end
    NullABRunnable_instanceValue[]
end
function staticSet_instance(::Type{NullABRunnable}, value)
    NullABRunnable_instanceSet[] = true
    NullABRunnable_instanceValue[] = value
end

function initFieldsNullABRunnable(this::NullABRunnable)
    nothing
end

function initNullABRunnable(this::NullABRunnable)
    initABRunnable(this)
    initFieldsNullABRunnable(this)
end

function newNullABRunnable()
    this = NullABRunnable()
    initNullABRunnable(this)
    this
end


function getInstance(::Type{NullABRunnable})
        return staticGet_instance(NullABRunnable)
end


function isRunning(this::NullABRunnable)
        return false
end

