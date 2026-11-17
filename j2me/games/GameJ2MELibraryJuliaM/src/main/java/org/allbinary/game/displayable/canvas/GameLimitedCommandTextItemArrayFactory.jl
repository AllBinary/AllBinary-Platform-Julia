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
# package org.allbinary.game.displayable.canvas

mutable struct GameLimitedCommandTextItemArrayFactory <: JObject
    commandTextItemArrayFactory::Any
    GameLimitedCommandTextItemArrayFactory() = new()
end

const GameLimitedCommandTextItemArrayFactory_instanceValue = Ref{Any}(nothing)
const GameLimitedCommandTextItemArrayFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameLimitedCommandTextItemArrayFactory})
    if !GameLimitedCommandTextItemArrayFactory_instanceSet[]
        GameLimitedCommandTextItemArrayFactory_instanceSet[] = true
        GameLimitedCommandTextItemArrayFactory_instanceValue[] = newGameLimitedCommandTextItemArrayFactory()
    end
    GameLimitedCommandTextItemArrayFactory_instanceValue[]
end
function staticSet_instance(::Type{GameLimitedCommandTextItemArrayFactory}, value)
    GameLimitedCommandTextItemArrayFactory_instanceSet[] = true
    GameLimitedCommandTextItemArrayFactory_instanceValue[] = value
end

function initFieldsGameLimitedCommandTextItemArrayFactory(this::GameLimitedCommandTextItemArrayFactory)
    this.commandTextItemArrayFactory = nothing
    this.commandTextItemArrayFactory = newCommandTextItemArrayFactory(newLimitCommandsVisitor())
    nothing
end

function initGameLimitedCommandTextItemArrayFactory(this::GameLimitedCommandTextItemArrayFactory)
    initFieldsGameLimitedCommandTextItemArrayFactory(this)
end

function newGameLimitedCommandTextItemArrayFactory()
    this = GameLimitedCommandTextItemArrayFactory()
    initGameLimitedCommandTextItemArrayFactory(this)
    this
end


function getInstance(::Type{GameLimitedCommandTextItemArrayFactory})
        return staticGet_instance(GameLimitedCommandTextItemArrayFactory)
end


function getCommandTextItemArrayFactory(this::GameLimitedCommandTextItemArrayFactory)
        return this.commandTextItemArrayFactory
end

