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
# package org.allbinary.game.ag.layer.pickup.health

# extends AllBinaryLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HealLayer <: JObject
    HealLayer() = new()
end


function initFieldsHealLayer(this::HealLayer)
    nothing
end


function initHealLayer(this::HealLayer)
        initAllBinaryLayer(this, AllBinary.getInstance(StringUtil).EMPTY_STRING, newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, Int32(0), Int32(0)), AllBinary.getInstanceD(ViewPosition))
        nothing
end

function newHealLayer()
    this = HealLayer()
    initHealLayer(this)
    this
end


function paint(this::HealLayer, graphics)
        nothing
        nothing
end


function visit(this::HealLayer, healthInterface)
        if AllBinary.isAlive(healthInterface)
            AllBinary.healMax(healthInterface)
        else
            AllBinary.putF(this.logUtil, "Heal attempt on dead: Does not currently occur", this, "visit")
        end
        nothing
end

