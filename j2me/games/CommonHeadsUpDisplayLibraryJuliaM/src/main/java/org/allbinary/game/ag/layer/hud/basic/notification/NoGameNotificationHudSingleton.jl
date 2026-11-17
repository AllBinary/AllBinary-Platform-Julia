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

mutable struct NoGameNotificationHudSingleton <: JObject
    logUtil::Any
    gameNotificationHud::Any
    NoGameNotificationHudSingleton() = new()
end

const NoGameNotificationHudSingleton_instanceValue = Ref{Any}(nothing)
const NoGameNotificationHudSingleton_instanceSet = Ref(false)
function staticGet_instance(::Type{NoGameNotificationHudSingleton})
    if !NoGameNotificationHudSingleton_instanceSet[]
        NoGameNotificationHudSingleton_instanceSet[] = true
        NoGameNotificationHudSingleton_instanceValue[] = newNoGameNotificationHudSingleton()
    end
    NoGameNotificationHudSingleton_instanceValue[]
end
function staticSet_instance(::Type{NoGameNotificationHudSingleton}, value)
    NoGameNotificationHudSingleton_instanceSet[] = true
    NoGameNotificationHudSingleton_instanceValue[] = value
end

function initFieldsNoGameNotificationHudSingleton(this::NoGameNotificationHudSingleton)
    this.logUtil = nothing
    this.gameNotificationHud = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.gameNotificationHud = staticGet_NULL_GAME_NOTIFICATION(GameNotificationHud)
    nothing
end


function getInstance(::Type{NoGameNotificationHudSingleton})
        return staticGet_instance(NoGameNotificationHudSingleton)
end


function initNoGameNotificationHudSingleton(this::NoGameNotificationHudSingleton)
        initFieldsNoGameNotificationHudSingleton(this)
        try
            local basicHudFactory = AllBinary.getInstance(BasicHudFactory)
            this.gameNotificationHud = newNoGameGameNotificationHud()
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        end
        nothing
end

function newNoGameNotificationHudSingleton()
    this = NoGameNotificationHudSingleton()
    initNoGameNotificationHudSingleton(this)
    this
end


function getGameNotificationHud(this::NoGameNotificationHudSingleton)
        return this.gameNotificationHud
end

