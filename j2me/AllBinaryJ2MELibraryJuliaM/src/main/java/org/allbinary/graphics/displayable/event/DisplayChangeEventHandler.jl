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
# package org.allbinary.graphics.displayable.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DisplayChangeEventHandler <: JObject
    DisplayChangeEventHandler() = new()
end

const DisplayChangeEventHandler_SINGLETONValue = Ref{Any}(nothing)
const DisplayChangeEventHandler_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{DisplayChangeEventHandler})
    if !DisplayChangeEventHandler_SINGLETONSet[]
        DisplayChangeEventHandler_SINGLETONSet[] = true
        DisplayChangeEventHandler_SINGLETONValue[] = newDisplayChangeEventHandler()
    end
    DisplayChangeEventHandler_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{DisplayChangeEventHandler}, value)
    DisplayChangeEventHandler_SINGLETONSet[] = true
    DisplayChangeEventHandler_SINGLETONValue[] = value
end

function initFieldsDisplayChangeEventHandler(this::DisplayChangeEventHandler)
    nothing
end


function getInstance(::Type{DisplayChangeEventHandler})
        return staticGet_SINGLETON(DisplayChangeEventHandler)
end


function initDisplayChangeEventHandler(this::DisplayChangeEventHandler)
        initBasicEventHandler(this)
        initFieldsDisplayChangeEventHandler(this)
        nothing
        nothing
end

function newDisplayChangeEventHandler()
    this = DisplayChangeEventHandler()
    initDisplayChangeEventHandler(this)
    this
end


function process(this::DisplayChangeEventHandler, eventObject, eventListenerInterface)
        local displayChangeEventListener = ((eventListenerInterface))
        AllBinary.onDisplayChangeEvent(displayChangeEventListener, (eventObject))
        nothing
end

