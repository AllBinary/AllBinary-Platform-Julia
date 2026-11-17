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
mutable struct DiagonalUpLeftTouchInputToGameKeyEventAction <: JObject
    DiagonalUpLeftTouchInputToGameKeyEventAction() = new()
end

const DiagonalUpLeftTouchInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const DiagonalUpLeftTouchInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{DiagonalUpLeftTouchInputToGameKeyEventAction})
    if !DiagonalUpLeftTouchInputToGameKeyEventAction_instanceSet[]
        DiagonalUpLeftTouchInputToGameKeyEventAction_instanceSet[] = true
        DiagonalUpLeftTouchInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    DiagonalUpLeftTouchInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{DiagonalUpLeftTouchInputToGameKeyEventAction}, value)
    DiagonalUpLeftTouchInputToGameKeyEventAction_instanceSet[] = true
    DiagonalUpLeftTouchInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsDiagonalUpLeftTouchInputToGameKeyEventAction(this::DiagonalUpLeftTouchInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{DiagonalUpLeftTouchInputToGameKeyEventAction})
        if staticGet_instance(DiagonalUpLeftTouchInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(DiagonalUpLeftTouchInputToGameKeyEventAction, newDiagonalUpLeftTouchInputToGameKeyEventAction())
        end
        return (staticGet_instance(DiagonalUpLeftTouchInputToGameKeyEventAction))
end


function initDiagonalUpLeftTouchInputToGameKeyEventAction(this::DiagonalUpLeftTouchInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Diagonal Up Left Action", AllBinary.getInstance(TouchMotionGestureFactory).DIAGONAL_UP_LEFT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newDiagonalUpLeftTouchInputToGameKeyEventAction()
    this = DiagonalUpLeftTouchInputToGameKeyEventAction()
    initDiagonalUpLeftTouchInputToGameKeyEventAction(this)
    this
end

