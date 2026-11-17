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
# package org.allbinary.graphics.displayable.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LastDisplayChangeEventHandler <: JObject
    LastDisplayChangeEventHandler() = new()
end

const LastDisplayChangeEventHandler_SINGLETONValue = Ref{Any}(nothing)
const LastDisplayChangeEventHandler_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{LastDisplayChangeEventHandler})
    if !LastDisplayChangeEventHandler_SINGLETONSet[]
        LastDisplayChangeEventHandler_SINGLETONSet[] = true
        LastDisplayChangeEventHandler_SINGLETONValue[] = newLastDisplayChangeEventHandler()
    end
    LastDisplayChangeEventHandler_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{LastDisplayChangeEventHandler}, value)
    LastDisplayChangeEventHandler_SINGLETONSet[] = true
    LastDisplayChangeEventHandler_SINGLETONValue[] = value
end

function initFieldsLastDisplayChangeEventHandler(this::LastDisplayChangeEventHandler)
    nothing
end


function getInstance(::Type{LastDisplayChangeEventHandler})
        return staticGet_SINGLETON(LastDisplayChangeEventHandler)
end


function initLastDisplayChangeEventHandler(this::LastDisplayChangeEventHandler)
        initBasicEventHandler(this)
        initFieldsLastDisplayChangeEventHandler(this)
        nothing
        nothing
end

function newLastDisplayChangeEventHandler()
    this = LastDisplayChangeEventHandler()
    initLastDisplayChangeEventHandler(this)
    this
end


function process(this::LastDisplayChangeEventHandler, eventObject, eventListenerInterface)
        local displayChangeEventListener = ((eventListenerInterface))
        AllBinary.onDisplayChangeEvent(displayChangeEventListener, (eventObject))
        nothing
end

