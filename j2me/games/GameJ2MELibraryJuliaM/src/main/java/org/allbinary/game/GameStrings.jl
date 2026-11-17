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
# package org.allbinary.game

mutable struct GameStrings <: JObject
    PROCESS_TICK::Any
    ON_GAME_INITIALIZED::Any
    UPDATESURFACE::Any
    ON_SET_DISPLAYABLE::Any
    UNPAUSE::Any
    TOGGLE_MENU::Any
    SET_GAME_OVER::Any
    GAME_STATE::Any
    SET_GAME_STATE::Any
    STOP_GAME_CANVAS_RUNNABLE_INTERFACE::Any
    GameStrings() = new()
end

const GameStrings_instanceValue = Ref{Any}(nothing)
const GameStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{GameStrings})
    if !GameStrings_instanceSet[]
        GameStrings_instanceSet[] = true
        GameStrings_instanceValue[] = newGameStrings()
    end
    GameStrings_instanceValue[]
end
function staticSet_instance(::Type{GameStrings}, value)
    GameStrings_instanceSet[] = true
    GameStrings_instanceValue[] = value
end

function initFieldsGameStrings(this::GameStrings)
    this.PROCESS_TICK = nothing
    this.ON_GAME_INITIALIZED = nothing
    this.UPDATESURFACE = nothing
    this.ON_SET_DISPLAYABLE = nothing
    this.UNPAUSE = nothing
    this.TOGGLE_MENU = nothing
    this.SET_GAME_OVER = nothing
    this.GAME_STATE = nothing
    this.SET_GAME_STATE = nothing
    this.STOP_GAME_CANVAS_RUNNABLE_INTERFACE = nothing
    this.PROCESS_TICK = "processTick"
    this.ON_GAME_INITIALIZED = "onGameInitialized"
    this.UPDATESURFACE = "updateSurface"
    this.ON_SET_DISPLAYABLE = "onSetDisplayable"
    this.UNPAUSE = "unPause"
    this.TOGGLE_MENU = "toggleMenu"
    this.SET_GAME_OVER = "setGameOver"
    this.GAME_STATE = "Game State: "
    this.SET_GAME_STATE = "setGameState"
    this.STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface"
    nothing
end

function initGameStrings(this::GameStrings)
    initFieldsGameStrings(this)
end

function newGameStrings()
    this = GameStrings()
    initGameStrings(this)
    this
end


function getInstance(::Type{GameStrings})
        return staticGet_instance(GameStrings)
end

