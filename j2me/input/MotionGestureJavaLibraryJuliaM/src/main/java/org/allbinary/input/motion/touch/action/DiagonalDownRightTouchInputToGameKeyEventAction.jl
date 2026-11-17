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
mutable struct DiagonalDownRightTouchInputToGameKeyEventAction <: JObject
    DiagonalDownRightTouchInputToGameKeyEventAction() = new()
end

const DiagonalDownRightTouchInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const DiagonalDownRightTouchInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{DiagonalDownRightTouchInputToGameKeyEventAction})
    if !DiagonalDownRightTouchInputToGameKeyEventAction_instanceSet[]
        DiagonalDownRightTouchInputToGameKeyEventAction_instanceSet[] = true
        DiagonalDownRightTouchInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    DiagonalDownRightTouchInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{DiagonalDownRightTouchInputToGameKeyEventAction}, value)
    DiagonalDownRightTouchInputToGameKeyEventAction_instanceSet[] = true
    DiagonalDownRightTouchInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsDiagonalDownRightTouchInputToGameKeyEventAction(this::DiagonalDownRightTouchInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{DiagonalDownRightTouchInputToGameKeyEventAction})
        if staticGet_instance(DiagonalDownRightTouchInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(DiagonalDownRightTouchInputToGameKeyEventAction, newDiagonalDownRightTouchInputToGameKeyEventAction())
        end
        return (staticGet_instance(DiagonalDownRightTouchInputToGameKeyEventAction))
end


function initDiagonalDownRightTouchInputToGameKeyEventAction(this::DiagonalDownRightTouchInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Diagonal Down Right Action", AllBinary.getInstance(TouchMotionGestureFactory).DIAGONAL_DOWN_RIGHT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newDiagonalDownRightTouchInputToGameKeyEventAction()
    this = DiagonalDownRightTouchInputToGameKeyEventAction()
    initDiagonalDownRightTouchInputToGameKeyEventAction(this)
    this
end

