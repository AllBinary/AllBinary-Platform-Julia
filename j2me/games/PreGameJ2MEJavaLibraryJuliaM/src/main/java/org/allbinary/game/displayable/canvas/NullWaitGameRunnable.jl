#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

# extends GameRunnable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullWaitGameRunnable <: JObject
    NullWaitGameRunnable() = new()
end

const NullWaitGameRunnable_instanceValue = Ref{Any}(nothing)
const NullWaitGameRunnable_instanceSet = Ref(false)
function staticGet_instance(::Type{NullWaitGameRunnable})
    if !NullWaitGameRunnable_instanceSet[]
        NullWaitGameRunnable_instanceSet[] = true
        NullWaitGameRunnable_instanceValue[] = newNullWaitGameRunnable()
    end
    NullWaitGameRunnable_instanceValue[]
end
function staticSet_instance(::Type{NullWaitGameRunnable}, value)
    NullWaitGameRunnable_instanceSet[] = true
    NullWaitGameRunnable_instanceValue[] = value
end

function initFieldsNullWaitGameRunnable(this::NullWaitGameRunnable)
    nothing
end

function initNullWaitGameRunnable(this::NullWaitGameRunnable)
    initGameRunnable(this)
    initFieldsNullWaitGameRunnable(this)
end

function newNullWaitGameRunnable()
    this = NullWaitGameRunnable()
    initNullWaitGameRunnable(this)
    this
end


function getInstance(::Type{NullWaitGameRunnable})
        return staticGet_instance(NullWaitGameRunnable)
end

