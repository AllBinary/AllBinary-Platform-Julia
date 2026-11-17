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
# package org.allbinary.game.input.motion.action

# extends CompleteMotionGestureInputEventListener: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SingleKeyPressGameKeyFromMotionGestureEventListener <: JObject
    logUtil::Any
    SingleKeyPressGameKeyFromMotionGestureEventListener() = new()
end


function initFieldsSingleKeyPressGameKeyFromMotionGestureEventListener(this::SingleKeyPressGameKeyFromMotionGestureEventListener)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initSingleKeyPressGameKeyFromMotionGestureEventListener(this::SingleKeyPressGameKeyFromMotionGestureEventListener)
    initCompleteMotionGestureInputEventListener(this)
    initFieldsSingleKeyPressGameKeyFromMotionGestureEventListener(this)
end

function newSingleKeyPressGameKeyFromMotionGestureEventListener()
    this = SingleKeyPressGameKeyFromMotionGestureEventListener()
    initSingleKeyPressGameKeyFromMotionGestureEventListener(this)
    this
end


function onEvent(this::SingleKeyPressGameKeyFromMotionGestureEventListener, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onCompleteMotionGestureInputEvent(this::SingleKeyPressGameKeyFromMotionGestureEventListener, completeMotionGestureInputEvent)
        try
            local gameKeyCompleteMotionGestureInputEvent = (completeMotionGestureInputEvent)
            local gameKeyEvent = AllBinary.getGameKeyEvent(gameKeyCompleteMotionGestureInputEvent)
            AllBinary.fireEvent(AllBinary.getInstance(PressGameKeyEventHandler), gameKeyEvent)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "onCompleteMotionGestureInputEvent", e)
        end
        nothing
end

