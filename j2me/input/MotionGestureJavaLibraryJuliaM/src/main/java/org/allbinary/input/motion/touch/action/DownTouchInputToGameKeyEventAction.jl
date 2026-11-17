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
mutable struct DownTouchInputToGameKeyEventAction <: JObject
    DownTouchInputToGameKeyEventAction() = new()
end

const DownTouchInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const DownTouchInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{DownTouchInputToGameKeyEventAction})
    if !DownTouchInputToGameKeyEventAction_instanceSet[]
        DownTouchInputToGameKeyEventAction_instanceSet[] = true
        DownTouchInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    DownTouchInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{DownTouchInputToGameKeyEventAction}, value)
    DownTouchInputToGameKeyEventAction_instanceSet[] = true
    DownTouchInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsDownTouchInputToGameKeyEventAction(this::DownTouchInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{DownTouchInputToGameKeyEventAction})
        if staticGet_instance(DownTouchInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(DownTouchInputToGameKeyEventAction, newDownTouchInputToGameKeyEventAction())
        end
        return (staticGet_instance(DownTouchInputToGameKeyEventAction))
end


function initDownTouchInputToGameKeyEventAction(this::DownTouchInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Down Action", AllBinary.getInstance(TouchMotionGestureFactory).DOWN, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newDownTouchInputToGameKeyEventAction()
    this = DownTouchInputToGameKeyEventAction()
    initDownTouchInputToGameKeyEventAction(this)
    this
end

