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
mutable struct LeftTouchInputToGameKeyEventAction <: JObject
    LeftTouchInputToGameKeyEventAction() = new()
end

const LeftTouchInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const LeftTouchInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{LeftTouchInputToGameKeyEventAction})
    if !LeftTouchInputToGameKeyEventAction_instanceSet[]
        LeftTouchInputToGameKeyEventAction_instanceSet[] = true
        LeftTouchInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    LeftTouchInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{LeftTouchInputToGameKeyEventAction}, value)
    LeftTouchInputToGameKeyEventAction_instanceSet[] = true
    LeftTouchInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsLeftTouchInputToGameKeyEventAction(this::LeftTouchInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{LeftTouchInputToGameKeyEventAction})
        if staticGet_instance(LeftTouchInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(LeftTouchInputToGameKeyEventAction, newLeftTouchInputToGameKeyEventAction())
        end
        return (staticGet_instance(LeftTouchInputToGameKeyEventAction))
end


function initLeftTouchInputToGameKeyEventAction(this::LeftTouchInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Left Action", AllBinary.getInstance(TouchMotionGestureFactory).LEFT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newLeftTouchInputToGameKeyEventAction()
    this = LeftTouchInputToGameKeyEventAction()
    initLeftTouchInputToGameKeyEventAction(this)
    this
end

