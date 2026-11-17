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
# package org.allbinary.game.input

mutable struct GameInputStrings <: JObject
    PROCESS_INPUT::Any
    KEY_PRESSED::Any
    KEY_RELEASED::Any
    KEY_REPEATED::Any
    ON_PRESS_GAME_KEY::Any
    ON_DOWN_GAME_KEY::Any
    ON_UP_GAME_KEY::Any
    NO_KEY::Any
    ADD_KEY_EVENT::Any
    REMOVE_KEY_EVENT::Any
    STRAFE_LEFT::Any
    STRAFE_RIGHT::Any
    PROCESS_MOTION_INPUT::Any
    UDPATE_CURRENT_TOUCH_INPUT_FACTORY::Any
    ENABLE_PLAYER_GAME_INPUTS::Any
    ENABLE_PLAYER_GAME_INPUT::Any
    GameInputStrings() = new()
end

const GameInputStrings_instanceValue = Ref{Any}(nothing)
const GameInputStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{GameInputStrings})
    if !GameInputStrings_instanceSet[]
        GameInputStrings_instanceSet[] = true
        GameInputStrings_instanceValue[] = newGameInputStrings()
    end
    GameInputStrings_instanceValue[]
end
function staticSet_instance(::Type{GameInputStrings}, value)
    GameInputStrings_instanceSet[] = true
    GameInputStrings_instanceValue[] = value
end

function initFieldsGameInputStrings(this::GameInputStrings)
    this.PROCESS_INPUT = nothing
    this.KEY_PRESSED = nothing
    this.KEY_RELEASED = nothing
    this.KEY_REPEATED = nothing
    this.ON_PRESS_GAME_KEY = nothing
    this.ON_DOWN_GAME_KEY = nothing
    this.ON_UP_GAME_KEY = nothing
    this.NO_KEY = nothing
    this.ADD_KEY_EVENT = nothing
    this.REMOVE_KEY_EVENT = nothing
    this.STRAFE_LEFT = nothing
    this.STRAFE_RIGHT = nothing
    this.PROCESS_MOTION_INPUT = nothing
    this.UDPATE_CURRENT_TOUCH_INPUT_FACTORY = nothing
    this.ENABLE_PLAYER_GAME_INPUTS = nothing
    this.ENABLE_PLAYER_GAME_INPUT = nothing
    this.PROCESS_INPUT = "processInput"
    this.KEY_PRESSED = "keyPressed"
    this.KEY_RELEASED = "keyReleased"
    this.KEY_REPEATED = "keyRepeated"
    this.ON_PRESS_GAME_KEY = "onPressGameKeyEvent"
    this.ON_DOWN_GAME_KEY = "onDownGameKeyEvent"
    this.ON_UP_GAME_KEY = "onUpGameKeyEvent"
    this.NO_KEY = "Key Code Not Mapped For Game: "
    this.ADD_KEY_EVENT = "addGameKeyEvent"
    this.REMOVE_KEY_EVENT = "removeGameKeyEvent"
    this.STRAFE_LEFT = "strafeLeft"
    this.STRAFE_RIGHT = "strafeRight"
    this.PROCESS_MOTION_INPUT = "processMotionInput"
    this.UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory"
    this.ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: "
    this.ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: "
    nothing
end

function initGameInputStrings(this::GameInputStrings)
    initFieldsGameInputStrings(this)
end

function newGameInputStrings()
    this = GameInputStrings()
    initGameInputStrings(this)
    this
end


function getInstance(::Type{GameInputStrings})
        return staticGet_instance(GameInputStrings)
end

