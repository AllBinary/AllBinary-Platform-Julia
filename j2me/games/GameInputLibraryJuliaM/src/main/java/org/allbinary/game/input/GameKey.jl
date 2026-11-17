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

# extends Input: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameKey <: JObject
    GameKey() = new()
end

const GameKey_NULL_GAME_KEYValue = Ref{Any}(nothing)
const GameKey_NULL_GAME_KEYSet = Ref(false)
function staticGet_NULL_GAME_KEY(::Type{GameKey})
    if !GameKey_NULL_GAME_KEYSet[]
        GameKey_NULL_GAME_KEYSet[] = true
        GameKey_NULL_GAME_KEYValue[] = newGameKey(-Int32(1), AllBinary.getInstance(StringUtil).NULL_STRING)
    end
    GameKey_NULL_GAME_KEYValue[]
end
function staticSet_NULL_GAME_KEY(::Type{GameKey}, value)
    GameKey_NULL_GAME_KEYSet[] = true
    GameKey_NULL_GAME_KEYValue[] = value
end

function initFieldsGameKey(this::GameKey)
    nothing
end


function initGameKey(this::GameKey, key, name)
        initInput(this, key, name)
        nothing
end

function newGameKey(key, name)
    this = GameKey()
    initGameKey(this, key, name)
    this
end


function toString(this::GameKey)
        return AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "GameKey "), AllBinary.toString(this)))
end

