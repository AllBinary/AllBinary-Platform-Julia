#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.configuration.persistance

mutable struct GamePersistanceStrings <: JObject
    SAVED_GAME_RECORD_ID::Any
    SAVED_GAME_CONFIGURATION_RECORD_ID::Any
    DEFAULT_INPUT_MAPPING_RECORD_ID::Any
    SAVED_INPUT_CONFIGURATION_RECORD_ID::Any
    GamePersistanceStrings() = new()
end

const GamePersistanceStrings_instanceValue = Ref{Any}(nothing)
const GamePersistanceStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{GamePersistanceStrings})
    if !GamePersistanceStrings_instanceSet[]
        GamePersistanceStrings_instanceSet[] = true
        GamePersistanceStrings_instanceValue[] = newGamePersistanceStrings()
    end
    GamePersistanceStrings_instanceValue[]
end
function staticSet_instance(::Type{GamePersistanceStrings}, value)
    GamePersistanceStrings_instanceSet[] = true
    GamePersistanceStrings_instanceValue[] = value
end

function initFieldsGamePersistanceStrings(this::GamePersistanceStrings)
    this.SAVED_GAME_RECORD_ID = nothing
    this.SAVED_GAME_CONFIGURATION_RECORD_ID = nothing
    this.DEFAULT_INPUT_MAPPING_RECORD_ID = nothing
    this.SAVED_INPUT_CONFIGURATION_RECORD_ID = nothing
    this.SAVED_GAME_RECORD_ID = "_SG"
    this.SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC"
    this.DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM"
    this.SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC"
    nothing
end

function initGamePersistanceStrings(this::GamePersistanceStrings)
    initFieldsGamePersistanceStrings(this)
end

function newGamePersistanceStrings()
    this = GamePersistanceStrings()
    initGamePersistanceStrings(this)
    this
end


function getInstance(::Type{GamePersistanceStrings})
        return staticGet_instance(GamePersistanceStrings)
end

