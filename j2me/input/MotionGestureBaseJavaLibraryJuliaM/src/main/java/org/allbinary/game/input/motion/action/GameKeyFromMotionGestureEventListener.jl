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
mutable struct GameKeyFromMotionGestureEventListener <: JObject
    logUtil::Any
    previousGameKeyEvent::Any
    GameKeyFromMotionGestureEventListener() = new()
end


function initFieldsGameKeyFromMotionGestureEventListener(this::GameKeyFromMotionGestureEventListener)
    this.logUtil = nothing
    this.previousGameKeyEvent = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.previousGameKeyEvent = staticGet_NONE(GameKeyEvent)
    nothing
end

function initGameKeyFromMotionGestureEventListener(this::GameKeyFromMotionGestureEventListener)
    initCompleteMotionGestureInputEventListener(this)
    initFieldsGameKeyFromMotionGestureEventListener(this)
end

function newGameKeyFromMotionGestureEventListener()
    this = GameKeyFromMotionGestureEventListener()
    initGameKeyFromMotionGestureEventListener(this)
    this
end


function onEvent(this::GameKeyFromMotionGestureEventListener, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onCompleteMotionGestureInputEvent(this::GameKeyFromMotionGestureEventListener, completeMotionGestureInputEvent)
        try
            local gameKeyCompleteMotionGestureInputEvent = (completeMotionGestureInputEvent)
            local gameKeyEvent = AllBinary.getGameKeyEvent(gameKeyCompleteMotionGestureInputEvent)
            if gameKeyEvent !== this.previousGameKeyEvent
                if this.previousGameKeyEvent !== staticGet_NONE(GameKeyEvent)
                    AllBinary.fireEvent(AllBinary.getInstance(UpGameKeyEventHandler), this.previousGameKeyEvent)
                end
                this.previousGameKeyEvent = gameKeyEvent
                if gameKeyEvent !== nothing && gameKeyEvent !== staticGet_NONE(GameKeyEvent)
                    AllBinary.fireEvent(AllBinary.getInstance(DownGameKeyEventHandler), gameKeyEvent)
                end
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "onCompleteMotionGestureInputEvent", e)
        end
        nothing
end

