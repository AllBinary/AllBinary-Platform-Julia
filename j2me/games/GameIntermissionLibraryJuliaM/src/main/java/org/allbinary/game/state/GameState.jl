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
# package org.allbinary.game.state

mutable struct GameState <: JObject
    name::Any
    GameState() = new()
end


function initFieldsGameState(this::GameState)
    this.name = nothing
    
    nothing
end


function initGameState(this::GameState, name, state)
        initFieldsGameState(this)
        this.name = name
        nothing
end

function newGameState(name, state)
    this = GameState()
    initGameState(this, name, state)
    this
end


function toString(this::GameState)
        return this.name
end

