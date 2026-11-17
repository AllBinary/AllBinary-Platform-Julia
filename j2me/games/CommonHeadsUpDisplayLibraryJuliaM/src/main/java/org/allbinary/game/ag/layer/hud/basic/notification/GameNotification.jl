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

mutable struct GameNotification <: JObject
    stringList::Any
    timeList::Any
    colorList::Any
    GameNotification() = new()
end

const GameNotification_NULL_GAME_NOTIFICATION_EVENTValue = Ref{Any}(nothing)
const GameNotification_NULL_GAME_NOTIFICATION_EVENTSet = Ref(false)
function staticGet_NULL_GAME_NOTIFICATION_EVENT(::Type{GameNotification})
    if !GameNotification_NULL_GAME_NOTIFICATION_EVENTSet[]
        GameNotification_NULL_GAME_NOTIFICATION_EVENTSet[] = true
        GameNotification_NULL_GAME_NOTIFICATION_EVENTValue[] = newGameNotificationEvent(AllBinary.getInstance(NullUtil).NULL_OBJECT, AllBinary.getInstance(StringUtil).EMPTY_STRING, Int32(0), AllBinary.getInstance(BasicColorFactory).RED, AllBinary.getInstance(BooleanFactory).FALSE)
    end
    GameNotification_NULL_GAME_NOTIFICATION_EVENTValue[]
end
function staticSet_NULL_GAME_NOTIFICATION_EVENT(::Type{GameNotification}, value)
    GameNotification_NULL_GAME_NOTIFICATION_EVENTSet[] = true
    GameNotification_NULL_GAME_NOTIFICATION_EVENTValue[] = value
end

function initFieldsGameNotification(this::GameNotification)
    this.stringList = nothing
    this.timeList = nothing
    this.colorList = nothing
    this.stringList = newBasicArrayListD()
    this.timeList = newBasicArrayListD()
    this.colorList = newBasicArrayListD()
    nothing
end

function initGameNotification(this::GameNotification)
    initFieldsGameNotification(this)
end

function newGameNotification()
    this = GameNotification()
    initGameNotification(this)
    this
end


function add(this::GameNotification, string, seconds, basicColor)
        if !AllBinary.contains(this.stringList, string)
            AllBinary.add(this.stringList, string)
            AllBinary.add(this.timeList, seconds)
            AllBinary.add(this.colorList, basicColor)
        end
        nothing
end


function clear(this::GameNotification)
        AllBinary.clear(this.stringList)
        AllBinary.clear(this.timeList)
        AllBinary.clear(this.colorList)
        nothing
end


function getSize(this::GameNotification)
        return AllBinary.size(this.stringList)
end

