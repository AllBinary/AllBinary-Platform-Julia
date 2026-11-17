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

mutable struct GameMode <: JObject
    name::Any
    GameMode() = new()
end

const GameMode_NONEValue = Ref{Any}(nothing)
const GameMode_NONESet = Ref(false)
function staticGet_NONE(::Type{GameMode})
    if !GameMode_NONESet[]
        GameMode_NONESet[] = true
        GameMode_NONEValue[] = newGameMode(AllBinary.getInstance(StringUtil).NULL_STRING)
    end
    GameMode_NONEValue[]
end
function staticSet_NONE(::Type{GameMode}, value)
    GameMode_NONESet[] = true
    GameMode_NONEValue[] = value
end
const GameMode_SERVERValue = Ref{Any}(nothing)
const GameMode_SERVERSet = Ref(false)
function staticGet_SERVER(::Type{GameMode})
    if !GameMode_SERVERSet[]
        GameMode_SERVERSet[] = true
        GameMode_SERVERValue[] = newGameMode("Server")
    end
    GameMode_SERVERValue[]
end
function staticSet_SERVER(::Type{GameMode}, value)
    GameMode_SERVERSet[] = true
    GameMode_SERVERValue[] = value
end
const GameMode_CLIENTValue = Ref{Any}(nothing)
const GameMode_CLIENTSet = Ref(false)
function staticGet_CLIENT(::Type{GameMode})
    if !GameMode_CLIENTSet[]
        GameMode_CLIENTSet[] = true
        GameMode_CLIENTValue[] = newGameMode("Client")
    end
    GameMode_CLIENTValue[]
end
function staticSet_CLIENT(::Type{GameMode}, value)
    GameMode_CLIENTSet[] = true
    GameMode_CLIENTValue[] = value
end

function initFieldsGameMode(this::GameMode)
    this.name = nothing
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initGameMode(this::GameMode, name)
        initFieldsGameMode(this)
        AllBinary.setName(this, name)
        nothing
end

function newGameMode(name)
    this = GameMode()
    initGameMode(this, name)
    this
end


function setName(this::GameMode, name)
        this.name = name
        nothing
end


function getName(this::GameMode)
        return this.name
end


function toString(this::GameMode)
        return AllBinary.getName(this)
end

