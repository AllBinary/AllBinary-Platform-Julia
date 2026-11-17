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

mutable struct GameType <: JObject
    name::Any
    GameType() = new()
end


function initFieldsGameType(this::GameType)
    this.name = nothing
    
    nothing
end


function initGameType(this::GameType, name)
        initFieldsGameType(this)
        this.name = name
        nothing
end

function newGameType(name)
    this = GameType()
    initGameType(this, name)
    this
end


function toString(this::GameType)
        return this.name
end

