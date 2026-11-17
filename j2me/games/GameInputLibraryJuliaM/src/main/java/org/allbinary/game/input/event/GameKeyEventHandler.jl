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
# package org.allbinary.game.input.event

mutable struct GameKeyEventHandler <: JObject
    logUtil::Any
    commonStrings::Any
    pressGameKeyEventHandler::Any
    upGameKeyEventHandler::Any
    downGameKeyEventHandler::Any
    GameKeyEventHandler() = new()
end

const GameKeyEventHandler_instanceValue = Ref{Any}(nothing)
const GameKeyEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{GameKeyEventHandler})
    if !GameKeyEventHandler_instanceSet[]
        GameKeyEventHandler_instanceSet[] = true
        GameKeyEventHandler_instanceValue[] = newGameKeyEventHandler()
    end
    GameKeyEventHandler_instanceValue[]
end
function staticSet_instance(::Type{GameKeyEventHandler}, value)
    GameKeyEventHandler_instanceSet[] = true
    GameKeyEventHandler_instanceValue[] = value
end

function initFieldsGameKeyEventHandler(this::GameKeyEventHandler)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.pressGameKeyEventHandler = nothing
    this.upGameKeyEventHandler = nothing
    this.downGameKeyEventHandler = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.pressGameKeyEventHandler = AllBinary.getInstance(PressGameKeyEventHandler)
    this.upGameKeyEventHandler = AllBinary.getInstance(UpGameKeyEventHandler)
    this.downGameKeyEventHandler = AllBinary.getInstance(DownGameKeyEventHandler)
    nothing
end

function initGameKeyEventHandler(this::GameKeyEventHandler)
    initFieldsGameKeyEventHandler(this)
end

function newGameKeyEventHandler()
    this = GameKeyEventHandler()
    initGameKeyEventHandler(this)
    this
end


function getInstance(::Type{GameKeyEventHandler})
        return staticGet_instance(GameKeyEventHandler)
end


function removeAllListeners(this::GameKeyEventHandler)
        AllBinary.removeAllListeners(this.pressGameKeyEventHandler)
        AllBinary.removeAllListeners(this.upGameKeyEventHandler)
        AllBinary.removeAllListeners(this.downGameKeyEventHandler)
        nothing
end


function addListenerForPlayer(this::GameKeyEventHandler, eventListenerInterface, playerInputId)
        AllBinary.putF(this.logUtil, AllBinary.toString(eventListenerInterface), this, this.commonStrings.ADD_LISTENER)
        AllBinary.addListenerSingleThreaded(this.pressGameKeyEventHandler, eventListenerInterface)
        AllBinary.addListenerSingleThreaded(AllBinary.getInstanceForPlayer(this.upGameKeyEventHandler, playerInputId), eventListenerInterface)
        AllBinary.addListenerSingleThreaded(AllBinary.getInstanceForPlayer(this.downGameKeyEventHandler, playerInputId), eventListenerInterface)
        nothing
end


function addListener(this::GameKeyEventHandler, eventListenerInterface)
        AllBinary.putF(this.logUtil, AllBinary.toString(eventListenerInterface), this, this.commonStrings.ADD_LISTENER)
        AllBinary.addListenerSingleThreaded(this.pressGameKeyEventHandler, eventListenerInterface)
        AllBinary.addListenerSingleThreaded(this.upGameKeyEventHandler, eventListenerInterface)
        AllBinary.addListenerSingleThreaded(this.downGameKeyEventHandler, eventListenerInterface)
        nothing
end


function removeListener(this::GameKeyEventHandler, eventListenerInterface)
        AllBinary.putF(this.logUtil, AllBinary.toString(eventListenerInterface), this, this.commonStrings.REMOVE_LISTENER)
        AllBinary.removeListenerSingleThreaded(this.pressGameKeyEventHandler, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this.upGameKeyEventHandler, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this.downGameKeyEventHandler, eventListenerInterface)
        nothing
end

