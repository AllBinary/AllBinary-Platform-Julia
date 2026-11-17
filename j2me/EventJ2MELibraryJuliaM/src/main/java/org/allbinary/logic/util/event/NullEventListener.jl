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
# package org.allbinary.logic.util.event

mutable struct NullEventListener <: JObject
    NullEventListener() = new()
end

const NullEventListener_NULL_EVENT_LISTENERValue = Ref{Any}(nothing)
const NullEventListener_NULL_EVENT_LISTENERSet = Ref(false)
function staticGet_NULL_EVENT_LISTENER(::Type{NullEventListener})
    if !NullEventListener_NULL_EVENT_LISTENERSet[]
        NullEventListener_NULL_EVENT_LISTENERSet[] = true
        NullEventListener_NULL_EVENT_LISTENERValue[] = newNullEventListener()
    end
    NullEventListener_NULL_EVENT_LISTENERValue[]
end
function staticSet_NULL_EVENT_LISTENER(::Type{NullEventListener}, value)
    NullEventListener_NULL_EVENT_LISTENERSet[] = true
    NullEventListener_NULL_EVENT_LISTENERValue[] = value
end

function initFieldsNullEventListener(this::NullEventListener)
    nothing
end

function initNullEventListener(this::NullEventListener)
    initFieldsNullEventListener(this)
end

function newNullEventListener()
    this = NullEventListener()
    initNullEventListener(this)
    this
end


function onEvent(this::NullEventListener, eventObject)
        nothing
        nothing
end

