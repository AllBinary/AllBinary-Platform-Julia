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

mutable struct GameInputProcessor <: JObject
    GameInputProcessor() = new()
end

const GameInputProcessor_instanceValue = Ref{Any}(nothing)
const GameInputProcessor_instanceSet = Ref(false)
function staticGet_instance(::Type{GameInputProcessor})
    if !GameInputProcessor_instanceSet[]
        GameInputProcessor_instanceSet[] = true
        GameInputProcessor_instanceValue[] = newGameInputProcessor()
    end
    GameInputProcessor_instanceValue[]
end
function staticSet_instance(::Type{GameInputProcessor}, value)
    GameInputProcessor_instanceSet[] = true
    GameInputProcessor_instanceValue[] = value
end

function initFieldsGameInputProcessor(this::GameInputProcessor)
    nothing
end


function getInstance(::Type{GameInputProcessor})
        return staticGet_instance(GameInputProcessor)
end


function initGameInputProcessor(this::GameInputProcessor)
        initFieldsGameInputProcessor(this)
        nothing
        nothing
end

function newGameInputProcessor()
    this = GameInputProcessor()
    initGameInputProcessor(this)
    this
end


function processEvent(this::GameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        nothing
        nothing
end


function processReleasedEvent(this::GameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        nothing
        nothing
end


function processAnalog(this::GameInputProcessor, allbinaryLayerManager, gameKeyEvent, analogValue)
        nothing
        nothing
end


function process(this::GameInputProcessor, allbinaryLayerManager, keyAsInteger)
        nothing
        nothing
end


function processReleased(this::GameInputProcessor, allbinaryLayerManager, keyAsInteger)
        nothing
        nothing
end

