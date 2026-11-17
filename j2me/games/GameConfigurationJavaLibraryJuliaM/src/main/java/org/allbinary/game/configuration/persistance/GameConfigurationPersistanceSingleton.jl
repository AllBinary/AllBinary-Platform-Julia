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
# package org.allbinary.game.configuration.persistance

# extends KeyValuePersistance: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameConfigurationPersistanceSingleton <: JObject
    GameConfigurationPersistanceSingleton() = new()
end

const GameConfigurationPersistanceSingleton_GAME_PERSISTANCEValue = Ref{Any}(nothing)
const GameConfigurationPersistanceSingleton_GAME_PERSISTANCESet = Ref(false)
function staticGet_GAME_PERSISTANCE(::Type{GameConfigurationPersistanceSingleton})
    if !GameConfigurationPersistanceSingleton_GAME_PERSISTANCESet[]
        GameConfigurationPersistanceSingleton_GAME_PERSISTANCESet[] = true
        GameConfigurationPersistanceSingleton_GAME_PERSISTANCEValue[] = newGameConfigurationPersistanceSingleton()
    end
    GameConfigurationPersistanceSingleton_GAME_PERSISTANCEValue[]
end
function staticSet_GAME_PERSISTANCE(::Type{GameConfigurationPersistanceSingleton}, value)
    GameConfigurationPersistanceSingleton_GAME_PERSISTANCESet[] = true
    GameConfigurationPersistanceSingleton_GAME_PERSISTANCEValue[] = value
end

function initFieldsGameConfigurationPersistanceSingleton(this::GameConfigurationPersistanceSingleton)
    nothing
end


function getInstance(::Type{GameConfigurationPersistanceSingleton})
        return staticGet_GAME_PERSISTANCE(GameConfigurationPersistanceSingleton)
end


function initGameConfigurationPersistanceSingleton(this::GameConfigurationPersistanceSingleton)
        initKeyValuePersistance(this, AllBinary.getInstance(GamePersistanceStrings).SAVED_GAME_CONFIGURATION_RECORD_ID)
        nothing
end

function newGameConfigurationPersistanceSingleton()
    this = GameConfigurationPersistanceSingleton()
    initGameConfigurationPersistanceSingleton(this)
    this
end

