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
mutable struct RollRightOrientationInputToGameKeyEventAction <: JObject
    RollRightOrientationInputToGameKeyEventAction() = new()
end

const RollRightOrientationInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const RollRightOrientationInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{RollRightOrientationInputToGameKeyEventAction})
    if !RollRightOrientationInputToGameKeyEventAction_instanceSet[]
        RollRightOrientationInputToGameKeyEventAction_instanceSet[] = true
        RollRightOrientationInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    RollRightOrientationInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{RollRightOrientationInputToGameKeyEventAction}, value)
    RollRightOrientationInputToGameKeyEventAction_instanceSet[] = true
    RollRightOrientationInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsRollRightOrientationInputToGameKeyEventAction(this::RollRightOrientationInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{RollRightOrientationInputToGameKeyEventAction})
        if staticGet_instance(RollRightOrientationInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(RollRightOrientationInputToGameKeyEventAction, newRollRightOrientationInputToGameKeyEventAction())
        end
        return (staticGet_instance(RollRightOrientationInputToGameKeyEventAction))
end


function initRollRightOrientationInputToGameKeyEventAction(this::RollRightOrientationInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Roll Right Action", AllBinary.getInstance(OrientationMotionGestureFactory).ROLL_RIGHT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newRollRightOrientationInputToGameKeyEventAction()
    this = RollRightOrientationInputToGameKeyEventAction()
    initRollRightOrientationInputToGameKeyEventAction(this)
    this
end

