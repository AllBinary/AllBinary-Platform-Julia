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
# package org.allbinary.input.motion.touch.action

# extends GameKeyCompleteMotionGestureInputEvent: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RightTouchInputToGameKeyEventAction <: JObject
    RightTouchInputToGameKeyEventAction() = new()
end

const RightTouchInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const RightTouchInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{RightTouchInputToGameKeyEventAction})
    if !RightTouchInputToGameKeyEventAction_instanceSet[]
        RightTouchInputToGameKeyEventAction_instanceSet[] = true
        RightTouchInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    RightTouchInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{RightTouchInputToGameKeyEventAction}, value)
    RightTouchInputToGameKeyEventAction_instanceSet[] = true
    RightTouchInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsRightTouchInputToGameKeyEventAction(this::RightTouchInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{RightTouchInputToGameKeyEventAction})
        if staticGet_instance(RightTouchInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(RightTouchInputToGameKeyEventAction, newRightTouchInputToGameKeyEventAction())
        end
        return (staticGet_instance(RightTouchInputToGameKeyEventAction))
end


function initRightTouchInputToGameKeyEventAction(this::RightTouchInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Right Action", AllBinary.getInstance(TouchMotionGestureFactory).RIGHT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newRightTouchInputToGameKeyEventAction()
    this = RightTouchInputToGameKeyEventAction()
    initRightTouchInputToGameKeyEventAction(this)
    this
end

