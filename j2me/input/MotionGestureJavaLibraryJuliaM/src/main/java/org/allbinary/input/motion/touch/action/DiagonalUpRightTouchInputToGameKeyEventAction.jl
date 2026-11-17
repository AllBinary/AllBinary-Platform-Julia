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
mutable struct DiagonalUpRightTouchInputToGameKeyEventAction <: JObject
    DiagonalUpRightTouchInputToGameKeyEventAction() = new()
end

const DiagonalUpRightTouchInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const DiagonalUpRightTouchInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{DiagonalUpRightTouchInputToGameKeyEventAction})
    if !DiagonalUpRightTouchInputToGameKeyEventAction_instanceSet[]
        DiagonalUpRightTouchInputToGameKeyEventAction_instanceSet[] = true
        DiagonalUpRightTouchInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    DiagonalUpRightTouchInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{DiagonalUpRightTouchInputToGameKeyEventAction}, value)
    DiagonalUpRightTouchInputToGameKeyEventAction_instanceSet[] = true
    DiagonalUpRightTouchInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsDiagonalUpRightTouchInputToGameKeyEventAction(this::DiagonalUpRightTouchInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{DiagonalUpRightTouchInputToGameKeyEventAction})
        if staticGet_instance(DiagonalUpRightTouchInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(DiagonalUpRightTouchInputToGameKeyEventAction, newDiagonalUpRightTouchInputToGameKeyEventAction())
        end
        return (staticGet_instance(DiagonalUpRightTouchInputToGameKeyEventAction))
end


function initDiagonalUpRightTouchInputToGameKeyEventAction(this::DiagonalUpRightTouchInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Diagonal Up Right Action", AllBinary.getInstance(TouchMotionGestureFactory).DIAGONAL_UP_RIGHT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newDiagonalUpRightTouchInputToGameKeyEventAction()
    this = DiagonalUpRightTouchInputToGameKeyEventAction()
    initDiagonalUpRightTouchInputToGameKeyEventAction(this)
    this
end

