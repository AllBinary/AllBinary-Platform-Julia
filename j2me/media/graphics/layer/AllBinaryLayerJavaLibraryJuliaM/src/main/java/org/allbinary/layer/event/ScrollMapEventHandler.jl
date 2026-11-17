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
# package org.allbinary.layer.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ScrollMapEventHandler <: JObject
    ScrollMapEventHandler() = new()
end

const ScrollMapEventHandler_SINGLETONValue = Ref{Any}(nothing)
const ScrollMapEventHandler_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{ScrollMapEventHandler})
    if !ScrollMapEventHandler_SINGLETONSet[]
        ScrollMapEventHandler_SINGLETONSet[] = true
        ScrollMapEventHandler_SINGLETONValue[] = newScrollMapEventHandler()
    end
    ScrollMapEventHandler_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{ScrollMapEventHandler}, value)
    ScrollMapEventHandler_SINGLETONSet[] = true
    ScrollMapEventHandler_SINGLETONValue[] = value
end

function initFieldsScrollMapEventHandler(this::ScrollMapEventHandler)
    nothing
end


function initScrollMapEventHandler(this::ScrollMapEventHandler)
        initBasicEventHandler(this)
        initFieldsScrollMapEventHandler(this)
        nothing
        nothing
end

function newScrollMapEventHandler()
    this = ScrollMapEventHandler()
    initScrollMapEventHandler(this)
    this
end


function getInstance(::Type{ScrollMapEventHandler})
        return staticGet_SINGLETON(ScrollMapEventHandler)
end


function process(this::ScrollMapEventHandler, eventObject, eventListenerInterface)
        local scrollMapEventListenerInterface = ((eventListenerInterface))
        AllBinary.onMoveEvent(scrollMapEventListenerInterface, (eventObject))
        nothing
end

