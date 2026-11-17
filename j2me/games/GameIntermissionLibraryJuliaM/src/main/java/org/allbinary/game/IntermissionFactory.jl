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

mutable struct IntermissionFactory <: JObject
    START_LEVEL_INTERMISSION_GAME_STATE::Any
    WAIT_LEVEL_INTERMISSION_GAME_STATE::Any
    SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE::Any
    SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE::Any
    IntermissionFactory() = new()
end

const IntermissionFactory_instanceValue = Ref{Any}(nothing)
const IntermissionFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{IntermissionFactory})
    if !IntermissionFactory_instanceSet[]
        IntermissionFactory_instanceSet[] = true
        IntermissionFactory_instanceValue[] = newIntermissionFactory()
    end
    IntermissionFactory_instanceValue[]
end
function staticSet_instance(::Type{IntermissionFactory}, value)
    IntermissionFactory_instanceSet[] = true
    IntermissionFactory_instanceValue[] = value
end

function initFieldsIntermissionFactory(this::IntermissionFactory)
    this.START_LEVEL_INTERMISSION_GAME_STATE = nothing
    this.WAIT_LEVEL_INTERMISSION_GAME_STATE = nothing
    this.SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = nothing
    this.SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = nothing
    this.START_LEVEL_INTERMISSION_GAME_STATE = AllBinary.createGameState(AllBinary.getInstance(GameStateFactory), "START_LEVEL_INTERMISSION_GAME_STATE")
    this.WAIT_LEVEL_INTERMISSION_GAME_STATE = AllBinary.createGameState(AllBinary.getInstance(GameStateFactory), "WAIT_LEVEL_INTERMISSION_GAME_STATE")
    this.SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = AllBinary.createGameState(AllBinary.getInstance(GameStateFactory), "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")
    this.SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = AllBinary.createGameState(AllBinary.getInstance(GameStateFactory), "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")
    nothing
end

function initIntermissionFactory(this::IntermissionFactory)
    initFieldsIntermissionFactory(this)
end

function newIntermissionFactory()
    this = IntermissionFactory()
    initIntermissionFactory(this)
    this
end


function getInstance(::Type{IntermissionFactory})
        return staticGet_instance(IntermissionFactory)
end

