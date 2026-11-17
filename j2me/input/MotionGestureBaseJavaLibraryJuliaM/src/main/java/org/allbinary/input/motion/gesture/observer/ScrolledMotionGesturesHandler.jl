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
# package org.allbinary.input.motion.gesture.observer

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ScrolledMotionGesturesHandler <: JObject
    ScrolledMotionGesturesHandler() = new()
end

const ScrolledMotionGesturesHandler_SINGLETONValue = Ref{Any}(nothing)
const ScrolledMotionGesturesHandler_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{ScrolledMotionGesturesHandler})
    if !ScrolledMotionGesturesHandler_SINGLETONSet[]
        ScrolledMotionGesturesHandler_SINGLETONSet[] = true
        ScrolledMotionGesturesHandler_SINGLETONValue[] = newScrolledMotionGesturesHandler()
    end
    ScrolledMotionGesturesHandler_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{ScrolledMotionGesturesHandler}, value)
    ScrolledMotionGesturesHandler_SINGLETONSet[] = true
    ScrolledMotionGesturesHandler_SINGLETONValue[] = value
end

function initFieldsScrolledMotionGesturesHandler(this::ScrolledMotionGesturesHandler)
    nothing
end


function getInstance(::Type{ScrolledMotionGesturesHandler})
        return staticGet_SINGLETON(ScrolledMotionGesturesHandler)
end


function initScrolledMotionGesturesHandler(this::ScrolledMotionGesturesHandler)
        initBasicEventHandler(this)
        initFieldsScrolledMotionGesturesHandler(this)
        nothing
        nothing
end

function newScrolledMotionGesturesHandler()
    this = ScrolledMotionGesturesHandler()
    initScrolledMotionGesturesHandler(this)
    this
end


function process(this::ScrolledMotionGesturesHandler, eventObject, eventListenerInterface)
        local baseMotionGestureEventListener = (eventListenerInterface)
        AllBinary.onScrolledMotionGestureEvent(baseMotionGestureEventListener, (eventObject))
        nothing
end

