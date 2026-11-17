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
# package org.allbinary.game.ag.layer.hud.basic.notification

# extends BasicHud: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameNotificationHud <: JObject
    METHOD_NAME::Any
    lastGameNotificationEvent::Any
    GameNotificationHud() = new()
end

const GameNotificationHud_NULL_GAME_NOTIFICATIONValue = Ref{Any}(nothing)
const GameNotificationHud_NULL_GAME_NOTIFICATIONSet = Ref(false)
function staticGet_NULL_GAME_NOTIFICATION(::Type{GameNotificationHud})
    if !GameNotificationHud_NULL_GAME_NOTIFICATIONSet[]
        GameNotificationHud_NULL_GAME_NOTIFICATIONSet[] = true
        GameNotificationHud_NULL_GAME_NOTIFICATIONValue[] = newGameNotificationHud(AllBinary.getInstance(BasicHudFactory).TOPCENTER, AllBinary.getInstance(BasicHudFactory).HORIZONTAL, Int32(0), AllBinary.getInstance(BasicColorFactory).RED)
    end
    GameNotificationHud_NULL_GAME_NOTIFICATIONValue[]
end
function staticSet_NULL_GAME_NOTIFICATION(::Type{GameNotificationHud}, value)
    GameNotificationHud_NULL_GAME_NOTIFICATIONSet[] = true
    GameNotificationHud_NULL_GAME_NOTIFICATIONValue[] = value
end

function initFieldsGameNotificationHud(this::GameNotificationHud)
    this.METHOD_NAME = nothing
    this.lastGameNotificationEvent = nothing
    this.METHOD_NAME = "onGameNotificationEvent"
    this.lastGameNotificationEvent = staticGet_NULL_GAME_NOTIFICATION_EVENT(GameNotification)
    nothing
end


function initGameNotificationHud(this::GameNotificationHud, location, direction, bufferZone, basicColor)
        initBasicHud(this, location, direction, bufferZone, basicColor)
        initFieldsGameNotificationHud(this)
        nothing
end

function newGameNotificationHud(location, direction, bufferZone, basicColor)
    this = GameNotificationHud()
    initGameNotificationHud(this, location, direction, bufferZone, basicColor)
    this
end


function onEvent(this::GameNotificationHud, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onGameNotificationEvent(this::GameNotificationHud, gameNotificationEvent)
        if this.lastGameNotificationEvent !== gameNotificationEvent
            this.lastGameNotificationEvent = gameNotificationEvent
            AllBinary.putF(this.logUtil, AllBinary.getString(gameNotificationEvent), this, this.METHOD_NAME)
        end
        AllBinary.add(this, AllBinary.getString(gameNotificationEvent), AllBinary.getSeconds(gameNotificationEvent), AllBinary.getBasicColorP(gameNotificationEvent), AllBinary.getPermanent(gameNotificationEvent))
        nothing
end


function add(this::GameNotificationHud, string, seconds, basicColor, permanent)
        nothing
        nothing
end


function processTick(this::GameNotificationHud)
        nothing
        nothing
end


function paint(this::GameNotificationHud, graphics)
        nothing
        nothing
end


function clear(this::GameNotificationHud)
        nothing
        nothing
end

