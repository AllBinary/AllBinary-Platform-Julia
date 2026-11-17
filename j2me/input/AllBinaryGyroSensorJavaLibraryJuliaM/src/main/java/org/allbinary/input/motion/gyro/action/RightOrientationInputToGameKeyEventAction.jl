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
mutable struct RightOrientationInputToGameKeyEventAction <: JObject
    RightOrientationInputToGameKeyEventAction() = new()
end

const RightOrientationInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const RightOrientationInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{RightOrientationInputToGameKeyEventAction})
    if !RightOrientationInputToGameKeyEventAction_instanceSet[]
        RightOrientationInputToGameKeyEventAction_instanceSet[] = true
        RightOrientationInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    RightOrientationInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{RightOrientationInputToGameKeyEventAction}, value)
    RightOrientationInputToGameKeyEventAction_instanceSet[] = true
    RightOrientationInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsRightOrientationInputToGameKeyEventAction(this::RightOrientationInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{RightOrientationInputToGameKeyEventAction})
        if staticGet_instance(RightOrientationInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(RightOrientationInputToGameKeyEventAction, newRightOrientationInputToGameKeyEventAction())
        end
        return (staticGet_instance(RightOrientationInputToGameKeyEventAction))
end


function initRightOrientationInputToGameKeyEventAction(this::RightOrientationInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Right Action", AllBinary.getInstance(OrientationMotionGestureFactory).RIGHT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newRightOrientationInputToGameKeyEventAction()
    this = RightOrientationInputToGameKeyEventAction()
    initRightOrientationInputToGameKeyEventAction(this)
    this
end

