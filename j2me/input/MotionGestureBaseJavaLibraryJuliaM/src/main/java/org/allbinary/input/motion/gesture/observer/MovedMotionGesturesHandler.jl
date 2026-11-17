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
mutable struct MovedMotionGesturesHandler <: JObject
    MovedMotionGesturesHandler() = new()
end

const MovedMotionGesturesHandler_SINGLETONValue = Ref{Any}(nothing)
const MovedMotionGesturesHandler_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{MovedMotionGesturesHandler})
    if !MovedMotionGesturesHandler_SINGLETONSet[]
        MovedMotionGesturesHandler_SINGLETONSet[] = true
        MovedMotionGesturesHandler_SINGLETONValue[] = newMovedMotionGesturesHandler()
    end
    MovedMotionGesturesHandler_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{MovedMotionGesturesHandler}, value)
    MovedMotionGesturesHandler_SINGLETONSet[] = true
    MovedMotionGesturesHandler_SINGLETONValue[] = value
end

function initFieldsMovedMotionGesturesHandler(this::MovedMotionGesturesHandler)
    nothing
end


function getInstance(::Type{MovedMotionGesturesHandler})
        return staticGet_SINGLETON(MovedMotionGesturesHandler)
end


function initMovedMotionGesturesHandler(this::MovedMotionGesturesHandler)
        initBasicEventHandler(this)
        initFieldsMovedMotionGesturesHandler(this)
        nothing
        nothing
end

function newMovedMotionGesturesHandler()
    this = MovedMotionGesturesHandler()
    initMovedMotionGesturesHandler(this)
    this
end


function process(this::MovedMotionGesturesHandler, eventObject, eventListenerInterface)
        local baseMotionGestureEventListener = (eventListenerInterface)
        AllBinary.onMotionGestureEvent(baseMotionGestureEventListener, (eventObject))
        nothing
end

