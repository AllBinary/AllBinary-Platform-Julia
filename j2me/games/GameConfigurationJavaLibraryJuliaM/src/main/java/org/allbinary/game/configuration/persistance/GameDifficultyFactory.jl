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

mutable struct GameDifficultyFactory <: JObject
    level::Int32
    GameDifficultyFactory() = new()
end

const GameDifficultyFactory_instanceValue = Ref{Any}(nothing)
const GameDifficultyFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameDifficultyFactory})
    if !GameDifficultyFactory_instanceSet[]
        GameDifficultyFactory_instanceSet[] = true
        GameDifficultyFactory_instanceValue[] = newGameDifficultyFactory()
    end
    GameDifficultyFactory_instanceValue[]
end
function staticSet_instance(::Type{GameDifficultyFactory}, value)
    GameDifficultyFactory_instanceSet[] = true
    GameDifficultyFactory_instanceValue[] = value
end

function initFieldsGameDifficultyFactory(this::GameDifficultyFactory)
    this.level = Int32(0)
    this.level = Int32(0)
    nothing
end

function initGameDifficultyFactory(this::GameDifficultyFactory)
    initFieldsGameDifficultyFactory(this)
end

function newGameDifficultyFactory()
    this = GameDifficultyFactory()
    initGameDifficultyFactory(this)
    this
end


function getInstance(::Type{GameDifficultyFactory})
        return staticGet_instance(GameDifficultyFactory)
end


function setLevel(this::GameDifficultyFactory, level)
        this.level = level
        nothing
end


function getLevel(this::GameDifficultyFactory)
        return this.level
end

