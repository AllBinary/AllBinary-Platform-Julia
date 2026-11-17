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

# extends GameNotificationHud: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoGameGameNotificationHud <: JObject
    NoGameGameNotificationHud() = new()
end


function initFieldsNoGameGameNotificationHud(this::NoGameGameNotificationHud)
    nothing
end


function initNoGameGameNotificationHud(this::NoGameGameNotificationHud)
        initGameNotificationHud(this, AllBinary.getInstance(BasicHudFactory).TOPCENTER, AllBinary.getInstance(BasicHudFactory).HORIZONTAL, Int32(2), AllBinary.getInstance(BasicColorFactory).RED)
        this.updateMaxWidth = Int32(40)
        this.updateMaxHeight = Int32(14)
        nothing
end

function newNoGameGameNotificationHud()
    this = NoGameGameNotificationHud()
    initNoGameGameNotificationHud(this)
    this
end

