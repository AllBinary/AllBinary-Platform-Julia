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

# extends CompleteMotionGestureInputEvent: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameKeyCompleteMotionGestureInputEvent <: JObject
    gameKeyEventFactory::Any
    SOURCE_ID::Int32
    gameKey::Any
    gameKeyEvent::Any
    inputToGameKeyMapping::Any
    GameKeyCompleteMotionGestureInputEvent() = new()
end


function initFieldsGameKeyCompleteMotionGestureInputEvent(this::GameKeyCompleteMotionGestureInputEvent)
    this.gameKeyEventFactory = nothing
    this.SOURCE_ID = Int32(0)
    this.gameKey = nothing
    this.gameKeyEvent = nothing
    this.inputToGameKeyMapping = nothing
    this.gameKeyEventFactory = AllBinary.getInstance(GameKeyEventFactory)
    this.SOURCE_ID = this.gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID
    this.gameKey = staticGet_NULL_GAME_KEY(GameKey)
    this.gameKeyEvent = staticGet_NONE(GameKeyEvent)
    
    nothing
end


function initGameKeyCompleteMotionGestureInputEvent(this::GameKeyCompleteMotionGestureInputEvent, name, motionGestureInput, inputToGameKeyMapping)
        initCompleteMotionGestureInputEvent(this, name, motionGestureInput)
        initFieldsGameKeyCompleteMotionGestureInputEvent(this)
        this.inputToGameKeyMapping = inputToGameKeyMapping
        AllBinary.add(AllBinary.getInstance(GameKeyCompleteMotionGestureInputEventFactory), this)
        AllBinary.update(this)
        nothing
end

function newGameKeyCompleteMotionGestureInputEvent(name, motionGestureInput, inputToGameKeyMapping)
    this = GameKeyCompleteMotionGestureInputEvent()
    initGameKeyCompleteMotionGestureInputEvent(this, name, motionGestureInput, inputToGameKeyMapping)
    this
end


function getSourceId(this::GameKeyCompleteMotionGestureInputEvent)
        return this.SOURCE_ID
end


function update(this::GameKeyCompleteMotionGestureInputEvent)
        try
            AllBinary.setGameKey(this, AllBinary.getInstance(this.inputToGameKeyMapping, AllBinary.getId(AllBinary.getMotionGestureInput(this))))
            AllBinary.setGameKeyEvent(this, AllBinary.getInstanceForInput(this.gameKeyEventFactory, this, AllBinary.getGameKey(this)))
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)
        end
        nothing
end


function setGameKeyEvent(this::GameKeyCompleteMotionGestureInputEvent, gameKeyEvent)
        this.gameKeyEvent = gameKeyEvent
        nothing
end


function getGameKeyEvent(this::GameKeyCompleteMotionGestureInputEvent)
        return this.gameKeyEvent
end


function setGameKey(this::GameKeyCompleteMotionGestureInputEvent, gameKey)
        this.gameKey = gameKey
        nothing
end


function getGameKey(this::GameKeyCompleteMotionGestureInputEvent)
        return this.gameKey
end

