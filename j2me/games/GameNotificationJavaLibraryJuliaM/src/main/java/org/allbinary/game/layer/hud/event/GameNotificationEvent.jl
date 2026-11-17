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

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameNotificationEvent <: JObject
    string::Any
    seconds::Any
    basicColor::Any
    removeable::Any
    GameNotificationEvent() = new()
end


function initFieldsGameNotificationEvent(this::GameNotificationEvent)
    this.string = nothing
    this.seconds = nothing
    this.basicColor = nothing
    this.removeable = nothing
    this.string = AllBinary.getInstance(StringUtil).EMPTY_STRING
    
    this.basicColor = AllBinary.getInstance(BasicColorFactory).BLACK
    
    nothing
end


function initGameNotificationEvent(this::GameNotificationEvent, anyType, string, seconds, basicColor, permanent)
        initAllBinaryEventObject(this, anyType)
        initFieldsGameNotificationEvent(this)
        AllBinary.setString(this, string)
        this.seconds = seconds
        AllBinary.setBasicColorP(this, basicColor)
        this.removeable = permanent
        nothing
end

function newGameNotificationEvent(anyType, string, seconds, basicColor, permanent)
    this = GameNotificationEvent()
    initGameNotificationEvent(this, anyType, string, seconds, basicColor, permanent)
    this
end


function getString(this::GameNotificationEvent)
        return this.string
end


function getSeconds(this::GameNotificationEvent)
        return this.seconds
end


function getBasicColorP(this::GameNotificationEvent)
        return this.basicColor
end


function getPermanent(this::GameNotificationEvent)
        return this.removeable
end


function setString(this::GameNotificationEvent, string)
        this.string = string
        nothing
end


function setBasicColorP(this::GameNotificationEvent, basicColor)
        this.basicColor = basicColor
        nothing
end

