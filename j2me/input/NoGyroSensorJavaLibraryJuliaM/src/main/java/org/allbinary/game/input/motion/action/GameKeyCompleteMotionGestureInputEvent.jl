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
    gameKey::Any
    gameKeyEvent::Any
    GameKeyCompleteMotionGestureInputEvent() = new()
end


function initFieldsGameKeyCompleteMotionGestureInputEvent(this::GameKeyCompleteMotionGestureInputEvent)
    this.gameKey = nothing
    this.gameKeyEvent = nothing
    this.gameKey = staticGet_NULL_GAME_KEY(GameKey)
    this.gameKeyEvent = staticGet_NONE(GameKeyEvent)
    nothing
end


function initGameKeyCompleteMotionGestureInputEvent(this::GameKeyCompleteMotionGestureInputEvent, name, motionGestureInput, inputToGameKeyMapping)
        initCompleteMotionGestureInputEvent(this, name, motionGestureInput)
        initFieldsGameKeyCompleteMotionGestureInputEvent(this)
        nothing
end

function newGameKeyCompleteMotionGestureInputEvent(name, motionGestureInput, inputToGameKeyMapping)
    this = GameKeyCompleteMotionGestureInputEvent()
    initGameKeyCompleteMotionGestureInputEvent(this, name, motionGestureInput, inputToGameKeyMapping)
    this
end


function getSourceId(this::GameKeyCompleteMotionGestureInputEvent)
        return Int32(0)
end


function update(this::GameKeyCompleteMotionGestureInputEvent)
        nothing
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

