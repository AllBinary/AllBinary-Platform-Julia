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
# package org.allbinary.game.layer.hud.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameNotificationEventHandler <: JObject
    enabled::Bool
    GameNotificationEventHandler() = new()
end

const GameNotificationEventHandler_instanceValue = Ref{Any}(nothing)
const GameNotificationEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{GameNotificationEventHandler})
    if !GameNotificationEventHandler_instanceSet[]
        GameNotificationEventHandler_instanceSet[] = true
        GameNotificationEventHandler_instanceValue[] = newGameNotificationEventHandler()
    end
    GameNotificationEventHandler_instanceValue[]
end
function staticSet_instance(::Type{GameNotificationEventHandler}, value)
    GameNotificationEventHandler_instanceSet[] = true
    GameNotificationEventHandler_instanceValue[] = value
end

function initFieldsGameNotificationEventHandler(this::GameNotificationEventHandler)
    this.enabled = false
    this.enabled = true
    nothing
end


function initGameNotificationEventHandler(this::GameNotificationEventHandler)
        initBasicEventHandler(this)
        initFieldsGameNotificationEventHandler(this)
        nothing
        nothing
end

function newGameNotificationEventHandler()
    this = GameNotificationEventHandler()
    initGameNotificationEventHandler(this)
    this
end


function removeAllListeners(this::GameNotificationEventHandler)
        local eventListenerInterface = staticGet_NULL_EVENT_LISTENER(NullEventListener)
        local list = this.eventListenerInterfaceList
        if AllBinary.size(list) > Int32(0)
            eventListenerInterface = (list.objectArray[Int32(0) + 1])
        end
        AllBinary.removeAllListeners(this)
        if eventListenerInterface !== staticGet_NULL_EVENT_LISTENER(NullEventListener)
            AllBinary.addListenerInterface(this, eventListenerInterface)
        end
        nothing
end


function getInstance(::Type{GameNotificationEventHandler})
        return staticGet_instance(GameNotificationEventHandler)
end


function process(this::GameNotificationEventHandler, eventObject, eventListenerInterface)
        if !this.enabled
            return
        end
        local gameNotificationListenerInterface = (eventListenerInterface)
        AllBinary.onGameNotificationEvent(gameNotificationListenerInterface, (eventObject))
        nothing
end

