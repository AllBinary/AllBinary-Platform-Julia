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
mutable struct GameInitializedEventHandler <: JObject
    GameInitializedEventHandler() = new()
end

const GameInitializedEventHandler_gameKeyEventHandlerValue = Ref{Any}(nothing)
const GameInitializedEventHandler_gameKeyEventHandlerSet = Ref(false)
function staticGet_gameKeyEventHandler(::Type{GameInitializedEventHandler})
    if !GameInitializedEventHandler_gameKeyEventHandlerSet[]
        GameInitializedEventHandler_gameKeyEventHandlerSet[] = true
        GameInitializedEventHandler_gameKeyEventHandlerValue[] = newGameInitializedEventHandler()
    end
    GameInitializedEventHandler_gameKeyEventHandlerValue[]
end
function staticSet_gameKeyEventHandler(::Type{GameInitializedEventHandler}, value)
    GameInitializedEventHandler_gameKeyEventHandlerSet[] = true
    GameInitializedEventHandler_gameKeyEventHandlerValue[] = value
end

function initFieldsGameInitializedEventHandler(this::GameInitializedEventHandler)
    nothing
end


function initGameInitializedEventHandler(this::GameInitializedEventHandler)
        initBasicEventHandler(this)
        initFieldsGameInitializedEventHandler(this)
        nothing
        nothing
end

function newGameInitializedEventHandler()
    this = GameInitializedEventHandler()
    initGameInitializedEventHandler(this)
    this
end


function getInstance(::Type{GameInitializedEventHandler})
        return staticGet_gameKeyEventHandler(GameInitializedEventHandler)
end


function process(this::GameInitializedEventHandler, eventObject, eventListenerInterface)
        local gameInitializedListenerInterface = ((eventListenerInterface))
        AllBinary.onGameInitialized(gameInitializedListenerInterface, (eventObject))
        nothing
end

