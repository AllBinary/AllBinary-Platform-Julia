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
mutable struct DiagonalDownLeftTouchInputToGameKeyEventAction <: JObject
    DiagonalDownLeftTouchInputToGameKeyEventAction() = new()
end

const DiagonalDownLeftTouchInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const DiagonalDownLeftTouchInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{DiagonalDownLeftTouchInputToGameKeyEventAction})
    if !DiagonalDownLeftTouchInputToGameKeyEventAction_instanceSet[]
        DiagonalDownLeftTouchInputToGameKeyEventAction_instanceSet[] = true
        DiagonalDownLeftTouchInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    DiagonalDownLeftTouchInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{DiagonalDownLeftTouchInputToGameKeyEventAction}, value)
    DiagonalDownLeftTouchInputToGameKeyEventAction_instanceSet[] = true
    DiagonalDownLeftTouchInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsDiagonalDownLeftTouchInputToGameKeyEventAction(this::DiagonalDownLeftTouchInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{DiagonalDownLeftTouchInputToGameKeyEventAction})
        if staticGet_instance(DiagonalDownLeftTouchInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(DiagonalDownLeftTouchInputToGameKeyEventAction, newDiagonalDownLeftTouchInputToGameKeyEventAction())
        end
        return (staticGet_instance(DiagonalDownLeftTouchInputToGameKeyEventAction))
end


function initDiagonalDownLeftTouchInputToGameKeyEventAction(this::DiagonalDownLeftTouchInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Diagonal Down Left Action", AllBinary.getInstance(TouchMotionGestureFactory).DIAGONAL_DOWN_LEFT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newDiagonalDownLeftTouchInputToGameKeyEventAction()
    this = DiagonalDownLeftTouchInputToGameKeyEventAction()
    initDiagonalDownLeftTouchInputToGameKeyEventAction(this)
    this
end

