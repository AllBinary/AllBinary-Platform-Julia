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
mutable struct RightTrackballInputToGameKeyEventAction <: JObject
    RightTrackballInputToGameKeyEventAction() = new()
end

const RightTrackballInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const RightTrackballInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{RightTrackballInputToGameKeyEventAction})
    if !RightTrackballInputToGameKeyEventAction_instanceSet[]
        RightTrackballInputToGameKeyEventAction_instanceSet[] = true
        RightTrackballInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    RightTrackballInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{RightTrackballInputToGameKeyEventAction}, value)
    RightTrackballInputToGameKeyEventAction_instanceSet[] = true
    RightTrackballInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsRightTrackballInputToGameKeyEventAction(this::RightTrackballInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{RightTrackballInputToGameKeyEventAction})
        if staticGet_instance(RightTrackballInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(RightTrackballInputToGameKeyEventAction, newRightTrackballInputToGameKeyEventAction())
        end
        return (staticGet_instance(RightTrackballInputToGameKeyEventAction))
end


function initRightTrackballInputToGameKeyEventAction(this::RightTrackballInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Right Action", AllBinary.getInstance(TrackballMotionGestureFactory).RIGHT, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newRightTrackballInputToGameKeyEventAction()
    this = RightTrackballInputToGameKeyEventAction()
    initRightTrackballInputToGameKeyEventAction(this)
    this
end

