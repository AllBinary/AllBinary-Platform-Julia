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
mutable struct UpTrackballInputToGameKeyEventAction <: JObject
    UpTrackballInputToGameKeyEventAction() = new()
end

const UpTrackballInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const UpTrackballInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{UpTrackballInputToGameKeyEventAction})
    if !UpTrackballInputToGameKeyEventAction_instanceSet[]
        UpTrackballInputToGameKeyEventAction_instanceSet[] = true
        UpTrackballInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    UpTrackballInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{UpTrackballInputToGameKeyEventAction}, value)
    UpTrackballInputToGameKeyEventAction_instanceSet[] = true
    UpTrackballInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsUpTrackballInputToGameKeyEventAction(this::UpTrackballInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{UpTrackballInputToGameKeyEventAction})
        if staticGet_instance(UpTrackballInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(UpTrackballInputToGameKeyEventAction, newUpTrackballInputToGameKeyEventAction())
        end
        return (staticGet_instance(UpTrackballInputToGameKeyEventAction))
end


function initUpTrackballInputToGameKeyEventAction(this::UpTrackballInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Up Action", AllBinary.getInstance(TrackballMotionGestureFactory).UP, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newUpTrackballInputToGameKeyEventAction()
    this = UpTrackballInputToGameKeyEventAction()
    initUpTrackballInputToGameKeyEventAction(this)
    this
end

