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
mutable struct UpTouchInputToGameKeyEventAction <: JObject
    UpTouchInputToGameKeyEventAction() = new()
end

const UpTouchInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const UpTouchInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{UpTouchInputToGameKeyEventAction})
    if !UpTouchInputToGameKeyEventAction_instanceSet[]
        UpTouchInputToGameKeyEventAction_instanceSet[] = true
        UpTouchInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    UpTouchInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{UpTouchInputToGameKeyEventAction}, value)
    UpTouchInputToGameKeyEventAction_instanceSet[] = true
    UpTouchInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsUpTouchInputToGameKeyEventAction(this::UpTouchInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{UpTouchInputToGameKeyEventAction})
        if staticGet_instance(UpTouchInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(UpTouchInputToGameKeyEventAction, newUpTouchInputToGameKeyEventAction())
        end
        return (staticGet_instance(UpTouchInputToGameKeyEventAction))
end


function initUpTouchInputToGameKeyEventAction(this::UpTouchInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Up Action", AllBinary.getInstance(TouchMotionGestureFactory).UP, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newUpTouchInputToGameKeyEventAction()
    this = UpTouchInputToGameKeyEventAction()
    initUpTouchInputToGameKeyEventAction(this)
    this
end

