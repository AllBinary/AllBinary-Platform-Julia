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
# package org.allbinary.game.midlet

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameMidletEventHandler <: JObject
    GameMidletEventHandler() = new()
end

const GameMidletEventHandler_gameKeyEventHandlerValue = Ref{Any}(nothing)
const GameMidletEventHandler_gameKeyEventHandlerSet = Ref(false)
function staticGet_gameKeyEventHandler(::Type{GameMidletEventHandler})
    if !GameMidletEventHandler_gameKeyEventHandlerSet[]
        GameMidletEventHandler_gameKeyEventHandlerSet[] = true
        GameMidletEventHandler_gameKeyEventHandlerValue[] = newGameMidletEventHandler()
    end
    GameMidletEventHandler_gameKeyEventHandlerValue[]
end
function staticSet_gameKeyEventHandler(::Type{GameMidletEventHandler}, value)
    GameMidletEventHandler_gameKeyEventHandlerSet[] = true
    GameMidletEventHandler_gameKeyEventHandlerValue[] = value
end

function initFieldsGameMidletEventHandler(this::GameMidletEventHandler)
    nothing
end


function initGameMidletEventHandler(this::GameMidletEventHandler)
        initBasicEventHandler(this)
        initFieldsGameMidletEventHandler(this)
        nothing
        nothing
end

function newGameMidletEventHandler()
    this = GameMidletEventHandler()
    initGameMidletEventHandler(this)
    this
end


function getInstance(::Type{GameMidletEventHandler})
        return staticGet_gameKeyEventHandler(GameMidletEventHandler)
end


function process(this::GameMidletEventHandler, eventObject, eventListenerInterface)
        local gameMidletEventListener = (eventListenerInterface)
        AllBinary.onGameEnd(gameMidletEventListener, eventObject)
        nothing
end

