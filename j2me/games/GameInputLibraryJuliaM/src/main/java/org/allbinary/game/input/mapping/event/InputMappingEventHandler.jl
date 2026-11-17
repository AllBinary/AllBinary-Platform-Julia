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
# package org.allbinary.game.input.mapping.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct InputMappingEventHandler <: JObject
    InputMappingEventHandler() = new()
end

const InputMappingEventHandler_gameKeyEventHandlerValue = Ref{Any}(nothing)
const InputMappingEventHandler_gameKeyEventHandlerSet = Ref(false)
function staticGet_gameKeyEventHandler(::Type{InputMappingEventHandler})
    if !InputMappingEventHandler_gameKeyEventHandlerSet[]
        InputMappingEventHandler_gameKeyEventHandlerSet[] = true
        InputMappingEventHandler_gameKeyEventHandlerValue[] = newInputMappingEventHandler()
    end
    InputMappingEventHandler_gameKeyEventHandlerValue[]
end
function staticSet_gameKeyEventHandler(::Type{InputMappingEventHandler}, value)
    InputMappingEventHandler_gameKeyEventHandlerSet[] = true
    InputMappingEventHandler_gameKeyEventHandlerValue[] = value
end

function initFieldsInputMappingEventHandler(this::InputMappingEventHandler)
    nothing
end


function initInputMappingEventHandler(this::InputMappingEventHandler)
        initBasicEventHandler(this)
        initFieldsInputMappingEventHandler(this)
        nothing
        nothing
end

function newInputMappingEventHandler()
    this = InputMappingEventHandler()
    initInputMappingEventHandler(this)
    this
end


function getInstance(::Type{InputMappingEventHandler})
        return staticGet_gameKeyEventHandler(InputMappingEventHandler)
end


function process(this::InputMappingEventHandler, eventObject, eventListenerInterface)
        local inputMappingEventListenerInterface = (eventListenerInterface)
        AllBinary.onInputMappingEvent(inputMappingEventListenerInterface, (eventObject))
        nothing
end

