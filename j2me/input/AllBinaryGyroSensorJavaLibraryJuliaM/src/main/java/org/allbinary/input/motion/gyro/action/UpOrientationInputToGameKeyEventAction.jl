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
mutable struct UpOrientationInputToGameKeyEventAction <: JObject
    UpOrientationInputToGameKeyEventAction() = new()
end

const UpOrientationInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const UpOrientationInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{UpOrientationInputToGameKeyEventAction})
    if !UpOrientationInputToGameKeyEventAction_instanceSet[]
        UpOrientationInputToGameKeyEventAction_instanceSet[] = true
        UpOrientationInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    UpOrientationInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{UpOrientationInputToGameKeyEventAction}, value)
    UpOrientationInputToGameKeyEventAction_instanceSet[] = true
    UpOrientationInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsUpOrientationInputToGameKeyEventAction(this::UpOrientationInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{UpOrientationInputToGameKeyEventAction})
        if staticGet_instance(UpOrientationInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(UpOrientationInputToGameKeyEventAction, newUpOrientationInputToGameKeyEventAction())
        end
        return (staticGet_instance(UpOrientationInputToGameKeyEventAction))
end


function initUpOrientationInputToGameKeyEventAction(this::UpOrientationInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Up Action", AllBinary.getInstance(OrientationMotionGestureFactory).UP, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newUpOrientationInputToGameKeyEventAction()
    this = UpOrientationInputToGameKeyEventAction()
    initUpOrientationInputToGameKeyEventAction(this)
    this
end

