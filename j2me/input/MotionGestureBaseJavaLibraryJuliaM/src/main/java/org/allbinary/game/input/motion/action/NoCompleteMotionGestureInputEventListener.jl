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
# package org.allbinary.game.input.motion.action

# extends CompleteMotionGestureInputEventListener: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoCompleteMotionGestureInputEventListener <: JObject
    NoCompleteMotionGestureInputEventListener() = new()
end

const NoCompleteMotionGestureInputEventListener_instanceValue = Ref{Any}(nothing)
const NoCompleteMotionGestureInputEventListener_instanceSet = Ref(false)
function staticGet_instance(::Type{NoCompleteMotionGestureInputEventListener})
    if !NoCompleteMotionGestureInputEventListener_instanceSet[]
        NoCompleteMotionGestureInputEventListener_instanceSet[] = true
        NoCompleteMotionGestureInputEventListener_instanceValue[] = newNoCompleteMotionGestureInputEventListener()
    end
    NoCompleteMotionGestureInputEventListener_instanceValue[]
end
function staticSet_instance(::Type{NoCompleteMotionGestureInputEventListener}, value)
    NoCompleteMotionGestureInputEventListener_instanceSet[] = true
    NoCompleteMotionGestureInputEventListener_instanceValue[] = value
end

function initFieldsNoCompleteMotionGestureInputEventListener(this::NoCompleteMotionGestureInputEventListener)
    nothing
end


function initNoCompleteMotionGestureInputEventListener(this::NoCompleteMotionGestureInputEventListener)
        initCompleteMotionGestureInputEventListener(this)
        initFieldsNoCompleteMotionGestureInputEventListener(this)
        nothing
        nothing
end

function newNoCompleteMotionGestureInputEventListener()
    this = NoCompleteMotionGestureInputEventListener()
    initNoCompleteMotionGestureInputEventListener(this)
    this
end


function onEvent(this::NoCompleteMotionGestureInputEventListener, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onCompleteMotionGestureInputEvent(this::NoCompleteMotionGestureInputEventListener, completeMotionGestureInputEvent)
        nothing
        nothing
end


function getInstance(::Type{NoCompleteMotionGestureInputEventListener})
        return staticGet_instance(NoCompleteMotionGestureInputEventListener)
end

