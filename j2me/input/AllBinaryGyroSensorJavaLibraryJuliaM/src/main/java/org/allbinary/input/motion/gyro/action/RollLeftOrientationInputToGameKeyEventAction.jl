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
# package org.allbinary.input.motion.gyro.action

# extends GameKeyCompleteMotionGestureInputEvent: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RollLeftOrientationInputToGameKeyEventAction <: JObject
    RollLeftOrientationInputToGameKeyEventAction() = new()
end

const RollLeftOrientationInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const RollLeftOrientationInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{RollLeftOrientationInputToGameKeyEventAction})
    if !RollLeftOrientationInputToGameKeyEventAction_instanceSet[]
        RollLeftOrientationInputToGameKeyEventAction_instanceSet[] = true
        RollLeftOrientationInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    RollLeftOrientationInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{RollLeftOrientationInputToGameKeyEventAction}, value)
    RollLeftOrientationInputToGameKeyEventAction_instanceSet[] = true
    RollLeftOrientationInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsRollLeftOrientationInputToGameKeyEventAction(this::RollLeftOrientationInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{RollLeftOrientationInputToGameKeyEventAction})
        if staticGet_instance(RollLeftOrientationInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(RollLeftOrientationInputToGameKeyEventAction, newRollLeftOrientationInputToGameKeyEventAction())
        end
        return (staticGet_instance(RollLeftOrientationInputToGameKeyEventAction))
end


function initRollLeftOrientationInputToGameKeyEventAction(this::RollLeftOrientationInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Roll Left Action", AllBinary.getInstance(OrientationMotionGestureFactory).ROLL_LEFT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newRollLeftOrientationInputToGameKeyEventAction()
    this = RollLeftOrientationInputToGameKeyEventAction()
    initRollLeftOrientationInputToGameKeyEventAction(this)
    this
end

