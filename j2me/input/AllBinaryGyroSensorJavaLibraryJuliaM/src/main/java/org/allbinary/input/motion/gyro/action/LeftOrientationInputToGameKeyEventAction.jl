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
mutable struct LeftOrientationInputToGameKeyEventAction <: JObject
    LeftOrientationInputToGameKeyEventAction() = new()
end

const LeftOrientationInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const LeftOrientationInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{LeftOrientationInputToGameKeyEventAction})
    if !LeftOrientationInputToGameKeyEventAction_instanceSet[]
        LeftOrientationInputToGameKeyEventAction_instanceSet[] = true
        LeftOrientationInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    LeftOrientationInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{LeftOrientationInputToGameKeyEventAction}, value)
    LeftOrientationInputToGameKeyEventAction_instanceSet[] = true
    LeftOrientationInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsLeftOrientationInputToGameKeyEventAction(this::LeftOrientationInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{LeftOrientationInputToGameKeyEventAction})
        if staticGet_instance(LeftOrientationInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(LeftOrientationInputToGameKeyEventAction, newLeftOrientationInputToGameKeyEventAction())
        end
        return (staticGet_instance(LeftOrientationInputToGameKeyEventAction))
end


function initLeftOrientationInputToGameKeyEventAction(this::LeftOrientationInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Left Action", AllBinary.getInstance(OrientationMotionGestureFactory).LEFT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newLeftOrientationInputToGameKeyEventAction()
    this = LeftOrientationInputToGameKeyEventAction()
    initLeftOrientationInputToGameKeyEventAction(this)
    this
end

