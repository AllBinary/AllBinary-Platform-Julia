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

mutable struct GameInfoData <: JObject
    GAME_TYPE::Any
    GAME_MODE::Any
    PLAYER_TYPE::Any
    HIGHEST_LEVEL::Any
    CURRENT_LEVEL::Any
    SOFTWARE_INFORMATION::Any
    GameInfoData() = new()
end

const GameInfoData_instanceValue = Ref{Any}(nothing)
const GameInfoData_instanceSet = Ref(false)
function staticGet_instance(::Type{GameInfoData})
    if !GameInfoData_instanceSet[]
        GameInfoData_instanceSet[] = true
        GameInfoData_instanceValue[] = newGameInfoData()
    end
    GameInfoData_instanceValue[]
end
function staticSet_instance(::Type{GameInfoData}, value)
    GameInfoData_instanceSet[] = true
    GameInfoData_instanceValue[] = value
end

function initFieldsGameInfoData(this::GameInfoData)
    this.GAME_TYPE = nothing
    this.GAME_MODE = nothing
    this.PLAYER_TYPE = nothing
    this.HIGHEST_LEVEL = nothing
    this.CURRENT_LEVEL = nothing
    this.SOFTWARE_INFORMATION = nothing
    this.GAME_TYPE = "GAME_TYPE"
    this.GAME_MODE = "GAME_MODE"
    this.PLAYER_TYPE = "PLAYER_TYPE"
    this.HIGHEST_LEVEL = "HIGHEST_LEVEL"
    this.CURRENT_LEVEL = "CURRENT_LEVEL"
    this.SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION"
    nothing
end


function getInstance(::Type{GameInfoData})
        return staticGet_instance(GameInfoData)
end


function initGameInfoData(this::GameInfoData)
        initFieldsGameInfoData(this)
        nothing
        nothing
end

function newGameInfoData()
    this = GameInfoData()
    initGameInfoData(this)
    this
end

