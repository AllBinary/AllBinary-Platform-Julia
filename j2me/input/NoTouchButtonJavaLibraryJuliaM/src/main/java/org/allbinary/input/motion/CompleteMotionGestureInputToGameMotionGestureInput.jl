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
# package org.allbinary.input.motion

mutable struct CompleteMotionGestureInputToGameMotionGestureInput <: JObject
    commonStrings::Any
    CompleteMotionGestureInputToGameMotionGestureInput() = new()
end

const CompleteMotionGestureInputToGameMotionGestureInput_instanceValue = Ref{Any}(nothing)
const CompleteMotionGestureInputToGameMotionGestureInput_instanceSet = Ref(false)
function staticGet_instance(::Type{CompleteMotionGestureInputToGameMotionGestureInput})
    if !CompleteMotionGestureInputToGameMotionGestureInput_instanceSet[]
        CompleteMotionGestureInputToGameMotionGestureInput_instanceSet[] = true
        CompleteMotionGestureInputToGameMotionGestureInput_instanceValue[] = newCompleteMotionGestureInputToGameMotionGestureInput()
    end
    CompleteMotionGestureInputToGameMotionGestureInput_instanceValue[]
end
function staticSet_instance(::Type{CompleteMotionGestureInputToGameMotionGestureInput}, value)
    CompleteMotionGestureInputToGameMotionGestureInput_instanceSet[] = true
    CompleteMotionGestureInputToGameMotionGestureInput_instanceValue[] = value
end

function initFieldsCompleteMotionGestureInputToGameMotionGestureInput(this::CompleteMotionGestureInputToGameMotionGestureInput)
    this.commonStrings = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end

function initCompleteMotionGestureInputToGameMotionGestureInput(this::CompleteMotionGestureInputToGameMotionGestureInput)
    initFieldsCompleteMotionGestureInputToGameMotionGestureInput(this)
end

function newCompleteMotionGestureInputToGameMotionGestureInput()
    this = CompleteMotionGestureInputToGameMotionGestureInput()
    initCompleteMotionGestureInputToGameMotionGestureInput(this)
    this
end


function getInstance(::Type{CompleteMotionGestureInputToGameMotionGestureInput})
        return staticGet_instance(CompleteMotionGestureInputToGameMotionGestureInput)
end


function init(this::CompleteMotionGestureInputToGameMotionGestureInput)
        AllBinary.put(PreLogUtil, "No Touch Button = No Compound Motion Gestures", this, this.commonStrings.INIT)
        nothing
end

