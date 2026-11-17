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
# package org.allbinary.game.input.mapping

mutable struct GameInputMapping <: JObject
    name::Any
    gameKey::Any
    GameInputMapping() = new()
end


function initFieldsGameInputMapping(this::GameInputMapping)
    this.name = nothing
    this.gameKey = nothing
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.gameKey = staticGet_NULL_GAME_KEY(GameKey)
    nothing
end


function initGameInputMapping(this::GameInputMapping, name, gameKey)
        initFieldsGameInputMapping(this)
        AllBinary.setName(this, name)
        AllBinary.setGameKey(this, gameKey)
        nothing
end

function newGameInputMapping(name, gameKey)
    this = GameInputMapping()
    initGameInputMapping(this, name, gameKey)
    this
end


function setGameKey(this::GameInputMapping, gameKey)
        this.gameKey = gameKey
        nothing
end


function getGameKey(this::GameInputMapping)
        return this.gameKey
end


function setName(this::GameInputMapping, name)
        this.name = name
        nothing
end


function getName(this::GameInputMapping)
        return this.name
end

