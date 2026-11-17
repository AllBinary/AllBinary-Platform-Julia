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
    logUtil::Any
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
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
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
        local commonStrings = AllBinary.getInstance(CommonStrings)
        try
            AllBinary.put(PreLogUtil, "Compound Motion Gestures", this, commonStrings.INIT)
            local motionGestureConfiguration = AllBinary.getInstance(MotionGestureConfigurationFactory)
            local touchMotionGestureFactory = AllBinary.getInstance(TouchMotionGestureFactory)
            local list = newBasicArrayListD()
            AllBinary.add(list, touchMotionGestureFactory.DIAGONAL_DOWN_LEFT)
            AllBinary.addMotionGestureAction(motionGestureConfiguration, list, AllBinary.getInstance(DiagonalDownLeftTouchInputToGameKeyEventAction))
            list = newBasicArrayListD()
            AllBinary.add(list, touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT)
            AllBinary.addMotionGestureAction(motionGestureConfiguration, list, AllBinary.getInstance(DiagonalDownRightTouchInputToGameKeyEventAction))
            list = newBasicArrayListD()
            AllBinary.add(list, touchMotionGestureFactory.DIAGONAL_UP_LEFT)
            AllBinary.addMotionGestureAction(motionGestureConfiguration, list, AllBinary.getInstance(DiagonalUpLeftTouchInputToGameKeyEventAction))
            list = newBasicArrayListD()
            AllBinary.add(list, touchMotionGestureFactory.DIAGONAL_UP_RIGHT)
            AllBinary.addMotionGestureAction(motionGestureConfiguration, list, AllBinary.getInstance(DiagonalUpRightTouchInputToGameKeyEventAction))
            list = newBasicArrayListD()
            AllBinary.add(list, touchMotionGestureFactory.LEFT)
            AllBinary.addMotionGestureAction(motionGestureConfiguration, list, AllBinary.getInstance(LeftTouchInputToGameKeyEventAction))
            list = newBasicArrayListD()
            AllBinary.add(list, touchMotionGestureFactory.RIGHT)
            AllBinary.addMotionGestureAction(motionGestureConfiguration, list, AllBinary.getInstance(RightTouchInputToGameKeyEventAction))
            list = newBasicArrayListD()
            AllBinary.add(list, touchMotionGestureFactory.DOWN)
            AllBinary.addMotionGestureAction(motionGestureConfiguration, list, AllBinary.getInstance(DownTouchInputToGameKeyEventAction))
            list = newBasicArrayListD()
            AllBinary.add(list, touchMotionGestureFactory.UP)
            AllBinary.addMotionGestureAction(motionGestureConfiguration, list, AllBinary.getInstance(UpTouchInputToGameKeyEventAction))
            list = newBasicArrayListD()
            AllBinary.add(list, touchMotionGestureFactory.RELEASED)
            AllBinary.addMotionGestureAction(motionGestureConfiguration, list, AllBinary.getInstance(ReleaseTouchInputToGameKeyEventAction))
        catch e
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.INIT, e)
        end
        nothing
end

