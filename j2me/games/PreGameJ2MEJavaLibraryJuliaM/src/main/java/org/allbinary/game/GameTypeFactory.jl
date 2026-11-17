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

mutable struct GameTypeFactory <: JObject
    NULL_GAME_TYPE_ARRAY::Any
    NONE::Any
    SINGLE_PLAYER::Any
    MULTI_PLAYER::Any
    BOT::Any
    GameTypeFactory() = new()
end

const GameTypeFactory_instanceValue = Ref{Any}(nothing)
const GameTypeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameTypeFactory})
    if !GameTypeFactory_instanceSet[]
        GameTypeFactory_instanceSet[] = true
        GameTypeFactory_instanceValue[] = newGameTypeFactory()
    end
    GameTypeFactory_instanceValue[]
end
function staticSet_instance(::Type{GameTypeFactory}, value)
    GameTypeFactory_instanceSet[] = true
    GameTypeFactory_instanceValue[] = value
end

function initFieldsGameTypeFactory(this::GameTypeFactory)
    this.NULL_GAME_TYPE_ARRAY = nothing
    this.NONE = nothing
    this.SINGLE_PLAYER = nothing
    this.MULTI_PLAYER = nothing
    this.BOT = nothing
    this.NULL_GAME_TYPE_ARRAY = jNewArray(Any, Int32(0), nothing)
    this.NONE = newGameType(AllBinary.getInstance(StringUtil).NULL_STRING)
    this.SINGLE_PLAYER = newGameType("Single Player")
    this.MULTI_PLAYER = newGameType("Multi Player")
    this.BOT = newGameType("Artificial Player")
    nothing
end

function initGameTypeFactory(this::GameTypeFactory)
    initFieldsGameTypeFactory(this)
end

function newGameTypeFactory()
    this = GameTypeFactory()
    initGameTypeFactory(this)
    this
end


function getInstance(::Type{GameTypeFactory})
        return staticGet_instance(GameTypeFactory)
end

