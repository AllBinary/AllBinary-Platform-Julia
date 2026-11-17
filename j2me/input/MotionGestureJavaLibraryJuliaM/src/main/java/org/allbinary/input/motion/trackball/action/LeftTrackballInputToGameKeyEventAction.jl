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
# package org.allbinary.input.motion.trackball.action

# extends GameKeyCompleteMotionGestureInputEvent: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LeftTrackballInputToGameKeyEventAction <: JObject
    LeftTrackballInputToGameKeyEventAction() = new()
end

const LeftTrackballInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const LeftTrackballInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{LeftTrackballInputToGameKeyEventAction})
    if !LeftTrackballInputToGameKeyEventAction_instanceSet[]
        LeftTrackballInputToGameKeyEventAction_instanceSet[] = true
        LeftTrackballInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    LeftTrackballInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{LeftTrackballInputToGameKeyEventAction}, value)
    LeftTrackballInputToGameKeyEventAction_instanceSet[] = true
    LeftTrackballInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsLeftTrackballInputToGameKeyEventAction(this::LeftTrackballInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{LeftTrackballInputToGameKeyEventAction})
        if staticGet_instance(LeftTrackballInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(LeftTrackballInputToGameKeyEventAction, newLeftTrackballInputToGameKeyEventAction())
        end
        return (staticGet_instance(LeftTrackballInputToGameKeyEventAction))
end


function initLeftTrackballInputToGameKeyEventAction(this::LeftTrackballInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Left Action", AllBinary.getInstance(TrackballMotionGestureFactory).LEFT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newLeftTrackballInputToGameKeyEventAction()
    this = LeftTrackballInputToGameKeyEventAction()
    initLeftTrackballInputToGameKeyEventAction(this)
    this
end

