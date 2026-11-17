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
# package org.allbinary.game.state

mutable struct GameStateFactory <: JObject
    index::Int32
    NO_GAME_STATE::Any
    PLAYING_GAME_STATE::Any
    SHOW_END_RESULT_GAME_STATE::Any
    SHOW_HIGH_SCORE_GAME_STATE::Any
    GameStateFactory() = new()
end

const GameStateFactory_instanceValue = Ref{Any}(nothing)
const GameStateFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameStateFactory})
    if !GameStateFactory_instanceSet[]
        GameStateFactory_instanceSet[] = true
        GameStateFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    GameStateFactory_instanceValue[]
end
function staticSet_instance(::Type{GameStateFactory}, value)
    GameStateFactory_instanceSet[] = true
    GameStateFactory_instanceValue[] = value
end

function initFieldsGameStateFactory(this::GameStateFactory)
    this.index = Int32(0)
    this.NO_GAME_STATE = nothing
    this.PLAYING_GAME_STATE = nothing
    this.SHOW_END_RESULT_GAME_STATE = nothing
    this.SHOW_HIGH_SCORE_GAME_STATE = nothing
    this.index = Int32(0)
    this.NO_GAME_STATE = AllBinary.createGameState(this, "NO_GAME_STATE")
    this.PLAYING_GAME_STATE = AllBinary.createGameState(this, "PLAYING_GAME_STATE")
    this.SHOW_END_RESULT_GAME_STATE = AllBinary.createGameState(this, "SHOW_END_RESULT_GAME_STATE")
    this.SHOW_HIGH_SCORE_GAME_STATE = AllBinary.createGameState(this, "SHOW_HIGH_SCORE_GAME_STATE")
    nothing
end


function getInstance(::Type{GameStateFactory})
        if staticGet_instance(GameStateFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(GameStateFactory, newGameStateFactory())
        end
        return (staticGet_instance(GameStateFactory))
end


function initGameStateFactory(this::GameStateFactory)
        initFieldsGameStateFactory(this)
        nothing
        nothing
end

function newGameStateFactory()
    this = GameStateFactory()
    initGameStateFactory(this)
    this
end


function createGameState(this::GameStateFactory, name)
        return newGameState(name, (let old = this.index; this.index += Int32(1); old end))
end

