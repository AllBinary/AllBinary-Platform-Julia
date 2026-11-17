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

mutable struct GameKeyMappingFactory <: JObject
    intKeyToGameKey::Any
    GameKeyMappingFactory() = new()
end

const GameKeyMappingFactory_instanceValue = Ref{Any}(nothing)
const GameKeyMappingFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameKeyMappingFactory})
    if !GameKeyMappingFactory_instanceSet[]
        GameKeyMappingFactory_instanceSet[] = true
        GameKeyMappingFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    GameKeyMappingFactory_instanceValue[]
end
function staticSet_instance(::Type{GameKeyMappingFactory}, value)
    GameKeyMappingFactory_instanceSet[] = true
    GameKeyMappingFactory_instanceValue[] = value
end

function initFieldsGameKeyMappingFactory(this::GameKeyMappingFactory)
    this.intKeyToGameKey = nothing
    this.intKeyToGameKey = jNewArray(Any, AllBinary.getInstance(InputFactory).MAX, nothing)
    nothing
end


function getInstance(::Type{GameKeyMappingFactory})
        if staticGet_instance(GameKeyMappingFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(GameKeyMappingFactory, newGameKeyMappingFactory())
        end
        return (staticGet_instance(GameKeyMappingFactory))
end


function initGameKeyMappingFactory(this::GameKeyMappingFactory)
        initFieldsGameKeyMappingFactory(this)
        local gameKeyFactory = AllBinary.getInstance(GameKeyFactory)
        AllBinary.setGameKey(this, gameKeyFactory.NONE)
        AllBinary.setGameKey(this, gameKeyFactory.UP)
        AllBinary.setGameKey(this, gameKeyFactory.DOWN)
        AllBinary.setGameKey(this, gameKeyFactory.LEFT)
        AllBinary.setGameKey(this, gameKeyFactory.RIGHT)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_POUND)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_STAR)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM0)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM1)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM2)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM3)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM4)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM5)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM6)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM7)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM8)
        AllBinary.setGameKey(this, gameKeyFactory.KEY_NUM9)
        AllBinary.setGameKey(this, gameKeyFactory.GAME_A)
        AllBinary.setGameKey(this, gameKeyFactory.GAME_B)
        AllBinary.setGameKey(this, gameKeyFactory.GAME_C)
        AllBinary.setGameKey(this, gameKeyFactory.GAME_D)
        AllBinary.setGameKey(this, gameKeyFactory.FIRE)
        AllBinary.setGameKey(this, gameKeyFactory.LEVEL_DOWN)
        AllBinary.setGameKey(this, gameKeyFactory.LEVEL_UP)
        nothing
end

function newGameKeyMappingFactory()
    this = GameKeyMappingFactory()
    initGameKeyMappingFactory(this)
    this
end


function getGameKey(this::GameKeyMappingFactory, key)
        return this.intKeyToGameKey[key + 1]
end


function setGameKey(this::GameKeyMappingFactory, gameKey)
        this.intKeyToGameKey[AllBinary.getId(gameKey) + 1] = gameKey
        nothing
end

