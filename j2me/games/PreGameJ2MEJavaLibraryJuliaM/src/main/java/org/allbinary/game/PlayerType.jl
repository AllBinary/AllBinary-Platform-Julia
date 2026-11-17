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

mutable struct PlayerType <: JObject
    id::Int32
    name::Any
    PlayerType() = new()
end


function initFieldsPlayerType(this::PlayerType)
    this.id = Int32(0)
    this.name = nothing
    
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initPlayerType(this::PlayerType, name, value)
        initFieldsPlayerType(this)
        this.name = name
        this.id = value
        nothing
end

function newPlayerType(name, value)
    this = PlayerType()
    initPlayerType(this, name, value)
    this
end


function getId(this::PlayerType)
        return this.id
end


function getName(this::PlayerType)
        return this.name
end


function toString(this::PlayerType)
        return AllBinary.getName(this)
end

