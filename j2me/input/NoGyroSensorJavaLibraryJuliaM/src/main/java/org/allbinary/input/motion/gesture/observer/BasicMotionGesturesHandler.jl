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
mutable struct BasicMotionGesturesHandler <: JObject
    BasicMotionGesturesHandler() = new()
end

const BasicMotionGesturesHandler_SINGLETONValue = Ref{Any}(nothing)
const BasicMotionGesturesHandler_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{BasicMotionGesturesHandler})
    if !BasicMotionGesturesHandler_SINGLETONSet[]
        BasicMotionGesturesHandler_SINGLETONSet[] = true
        BasicMotionGesturesHandler_SINGLETONValue[] = newBasicMotionGesturesHandler()
    end
    BasicMotionGesturesHandler_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{BasicMotionGesturesHandler}, value)
    BasicMotionGesturesHandler_SINGLETONSet[] = true
    BasicMotionGesturesHandler_SINGLETONValue[] = value
end

function initFieldsBasicMotionGesturesHandler(this::BasicMotionGesturesHandler)
    nothing
end


function getInstance(::Type{BasicMotionGesturesHandler})
        return staticGet_SINGLETON(BasicMotionGesturesHandler)
end


function initBasicMotionGesturesHandler(this::BasicMotionGesturesHandler)
        initBasicEventHandler(this)
        initFieldsBasicMotionGesturesHandler(this)
        nothing
        nothing
end

function newBasicMotionGesturesHandler()
    this = BasicMotionGesturesHandler()
    initBasicMotionGesturesHandler(this)
    this
end


function process(this::BasicMotionGesturesHandler, eventObject, eventListenerInterface)
        local baseMotionGestureEventListener = (eventListenerInterface)
        AllBinary.onMotionGestureEvent(baseMotionGestureEventListener, (eventObject))
        nothing
end

