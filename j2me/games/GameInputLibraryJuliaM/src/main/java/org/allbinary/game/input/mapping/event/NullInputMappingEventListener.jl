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
# package org.allbinary.game.input.mapping.event

mutable struct NullInputMappingEventListener <: JObject
    NullInputMappingEventListener() = new()
end

const NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERValue = Ref{Any}(nothing)
const NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERSet = Ref(false)
function staticGet_NULL_INPUT_MAPPING_EVENT_LISTENER(::Type{NullInputMappingEventListener})
    if !NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERSet[]
        NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERSet[] = true
        NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERValue[] = newNullInputMappingEventListener()
    end
    NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERValue[]
end
function staticSet_NULL_INPUT_MAPPING_EVENT_LISTENER(::Type{NullInputMappingEventListener}, value)
    NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERSet[] = true
    NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENERValue[] = value
end

function initFieldsNullInputMappingEventListener(this::NullInputMappingEventListener)
    nothing
end

function initNullInputMappingEventListener(this::NullInputMappingEventListener)
    initFieldsNullInputMappingEventListener(this)
end

function newNullInputMappingEventListener()
    this = NullInputMappingEventListener()
    initNullInputMappingEventListener(this)
    this
end


function onInputMappingEvent(this::NullInputMappingEventListener, inputMappingEvent)
        nothing
        nothing
end


function onEvent(this::NullInputMappingEventListener, eventObject)
        nothing
        nothing
end

