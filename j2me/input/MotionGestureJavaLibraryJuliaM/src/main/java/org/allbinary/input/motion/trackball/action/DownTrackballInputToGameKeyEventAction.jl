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
mutable struct DownTrackballInputToGameKeyEventAction <: JObject
    DownTrackballInputToGameKeyEventAction() = new()
end

const DownTrackballInputToGameKeyEventAction_instanceValue = Ref{Any}(nothing)
const DownTrackballInputToGameKeyEventAction_instanceSet = Ref(false)
function staticGet_instance(::Type{DownTrackballInputToGameKeyEventAction})
    if !DownTrackballInputToGameKeyEventAction_instanceSet[]
        DownTrackballInputToGameKeyEventAction_instanceSet[] = true
        DownTrackballInputToGameKeyEventAction_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    DownTrackballInputToGameKeyEventAction_instanceValue[]
end
function staticSet_instance(::Type{DownTrackballInputToGameKeyEventAction}, value)
    DownTrackballInputToGameKeyEventAction_instanceSet[] = true
    DownTrackballInputToGameKeyEventAction_instanceValue[] = value
end

function initFieldsDownTrackballInputToGameKeyEventAction(this::DownTrackballInputToGameKeyEventAction)
    nothing
end


function getInstance(::Type{DownTrackballInputToGameKeyEventAction})
        if staticGet_instance(DownTrackballInputToGameKeyEventAction) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(DownTrackballInputToGameKeyEventAction, newDownTrackballInputToGameKeyEventAction())
        end
        return (staticGet_instance(DownTrackballInputToGameKeyEventAction))
end


function initDownTrackballInputToGameKeyEventAction(this::DownTrackballInputToGameKeyEventAction)
        initGameKeyCompleteMotionGestureInputEvent(this, "Down Action", AllBinary.getInstance(TrackballMotionGestureFactory).DOWN, AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
        nothing
end

function newDownTrackballInputToGameKeyEventAction()
    this = DownTrackballInputToGameKeyEventAction()
    initDownTrackballInputToGameKeyEventAction(this)
    this
end

