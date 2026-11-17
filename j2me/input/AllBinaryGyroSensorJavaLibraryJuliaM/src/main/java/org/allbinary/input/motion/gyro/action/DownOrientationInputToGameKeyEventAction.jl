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
mutable struct DownOrientationInputToGameKeyEventAction <: JObject
    DownOrientationInputToGameKeyEventAction() = new()
end

const DownOrientationInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const DownOrientationInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{DownOrientationInputToGameKeyEventAction})
    if !DownOrientationInputToGameKeyEventAction_instanceSet[]
        DownOrientationInputToGameKeyEventAction_instanceSet[] = true
        DownOrientationInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    DownOrientationInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{DownOrientationInputToGameKeyEventAction}, value)
    DownOrientationInputToGameKeyEventAction_instanceSet[] = true
    DownOrientationInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsDownOrientationInputToGameKeyEventAction(this::DownOrientationInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{DownOrientationInputToGameKeyEventAction})
        if staticGet_instance(DownOrientationInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(DownOrientationInputToGameKeyEventAction, newDownOrientationInputToGameKeyEventAction())
        end
        return (staticGet_instance(DownOrientationInputToGameKeyEventAction))
end


function initDownOrientationInputToGameKeyEventAction(this::DownOrientationInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Down Action", AllBinary.getInstance(OrientationMotionGestureFactory).DOWN, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newDownOrientationInputToGameKeyEventAction()
    this = DownOrientationInputToGameKeyEventAction()
    initDownOrientationInputToGameKeyEventAction(this)
    this
end

