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
# package org.allbinary.game.health

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HealthBar <: JObject
    animationInterface::Any
    healthInterface::Any
    allbinaryLayer::Any
    HealthBar() = new()
end


function initFieldsHealthBar(this::HealthBar)
    this.animationInterface = nothing
    this.healthInterface = nothing
    this.allbinaryLayer = nothing
    
    
    
    nothing
end


function initHealthBar(this::HealthBar, layerInterface, healthInterface, animationInterface, direction)
        initPaintable(this)
        initFieldsHealthBar(this)
        this.allbinaryLayer = layerInterface
        this.animationInterface = animationInterface
        this.healthInterface = healthInterface
        AllBinary.addListener(this.healthInterface, this)
        AllBinary.onHealthChange(this)
        nothing
end

function newHealthBar(layerInterface, healthInterface, animationInterface, direction)
    this = HealthBar()
    initHealthBar(this, layerInterface, healthInterface, animationInterface, direction)
    this
end


function onHealthChange(this::HealthBar)
        AllBinary.onHealthChange(this.animationInterface, AllBinary.getHealth(this.healthInterface) * AllBinary.getWidth(this.allbinaryLayer) / AllBinary.getMaxHealth(this.healthInterface))
        nothing
end


function paint(this::HealthBar, graphics)
        AllBinary.paintXY(this.animationInterface, graphics, Int32(0), Int32(0))
        nothing
end


function paintThreed(this::HealthBar, graphics)
        AllBinary.paintThreedXYZ(this.animationInterface, graphics, Int32(0), Int32(0), Int32(0))
        nothing
end

