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
# package org.allbinary.game.configuration.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameFeatureEventHandler <: JObject
    GameFeatureEventHandler() = new()
end

const GameFeatureEventHandler_gameKeyEventHandlerValue = Ref{Any}(nothing)
const GameFeatureEventHandler_gameKeyEventHandlerSet = Ref(false)
function staticGet_gameKeyEventHandler(::Type{GameFeatureEventHandler})
    if !GameFeatureEventHandler_gameKeyEventHandlerSet[]
        GameFeatureEventHandler_gameKeyEventHandlerSet[] = true
        GameFeatureEventHandler_gameKeyEventHandlerValue[] = newGameFeatureEventHandler()
    end
    GameFeatureEventHandler_gameKeyEventHandlerValue[]
end
function staticSet_gameKeyEventHandler(::Type{GameFeatureEventHandler}, value)
    GameFeatureEventHandler_gameKeyEventHandlerSet[] = true
    GameFeatureEventHandler_gameKeyEventHandlerValue[] = value
end

function initFieldsGameFeatureEventHandler(this::GameFeatureEventHandler)
    nothing
end


function initGameFeatureEventHandler(this::GameFeatureEventHandler)
        initBasicEventHandler(this)
        initFieldsGameFeatureEventHandler(this)
        nothing
        nothing
end

function newGameFeatureEventHandler()
    this = GameFeatureEventHandler()
    initGameFeatureEventHandler(this)
    this
end


function getInstance(::Type{GameFeatureEventHandler})
        return staticGet_gameKeyEventHandler(GameFeatureEventHandler)
end


function process(this::GameFeatureEventHandler, eventObject, eventListenerInterface)
        local gameFeatureListenerInterface = ((eventListenerInterface))
        AllBinary.onGameFeatureChange(gameFeatureListenerInterface, (eventObject))
        nothing
end

