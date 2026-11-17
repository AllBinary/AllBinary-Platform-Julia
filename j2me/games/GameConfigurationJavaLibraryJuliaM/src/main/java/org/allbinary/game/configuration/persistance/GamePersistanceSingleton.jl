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
mutable struct GamePersistanceSingleton <: JObject
    GamePersistanceSingleton() = new()
end

const GamePersistanceSingleton_GAME_PERSISTANCEValue = Ref{Any}(nothing)
const GamePersistanceSingleton_GAME_PERSISTANCESet = Ref(false)
function staticGet_GAME_PERSISTANCE(::Type{GamePersistanceSingleton})
    if !GamePersistanceSingleton_GAME_PERSISTANCESet[]
        GamePersistanceSingleton_GAME_PERSISTANCESet[] = true
        GamePersistanceSingleton_GAME_PERSISTANCEValue[] = newGamePersistanceSingleton()
    end
    GamePersistanceSingleton_GAME_PERSISTANCEValue[]
end
function staticSet_GAME_PERSISTANCE(::Type{GamePersistanceSingleton}, value)
    GamePersistanceSingleton_GAME_PERSISTANCESet[] = true
    GamePersistanceSingleton_GAME_PERSISTANCEValue[] = value
end

function initFieldsGamePersistanceSingleton(this::GamePersistanceSingleton)
    nothing
end


function getInstance(::Type{GamePersistanceSingleton})
        return staticGet_GAME_PERSISTANCE(GamePersistanceSingleton)
end


function initGamePersistanceSingleton(this::GamePersistanceSingleton)
        initKeyValuePersistance(this, AllBinary.getInstance(GamePersistanceStrings).SAVED_GAME_RECORD_ID)
        nothing
end

function newGamePersistanceSingleton()
    this = GamePersistanceSingleton()
    initGamePersistanceSingleton(this)
    this
end

