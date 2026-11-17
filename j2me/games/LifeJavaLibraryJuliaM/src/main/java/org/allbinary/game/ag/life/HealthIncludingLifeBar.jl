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
# package org.allbinary.game.ag.life

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HealthIncludingLifeBar <: JObject
    animationInterface::Any
    life::Any
    healthInterface::Any
    allbinaryLayer::Any
    HealthIncludingLifeBar() = new()
end


function initFieldsHealthIncludingLifeBar(this::HealthIncludingLifeBar)
    this.animationInterface = nothing
    this.life = nothing
    this.healthInterface = nothing
    this.allbinaryLayer = nothing
    
    
    
    
    nothing
end


function createHealthIncludingLifeBar(::Type{HealthIncludingLifeBar}, layerInterface, life, healthInterface, location, direction)
        return newHealthIncludingLifeBar(layerInterface, life, healthInterface, newHealthBarTwodAnimation(layerInterface, location), direction)
end


function initHealthIncludingLifeBar(this::HealthIncludingLifeBar, layerInterface, life, healthInterface, animationInterface, direction)
        initPaintable(this)
        initFieldsHealthIncludingLifeBar(this)
        this.allbinaryLayer = layerInterface
        this.animationInterface = animationInterface
        this.life = life
        this.healthInterface = healthInterface
        AllBinary.addListener(this.healthInterface, this)
        AllBinary.onHealthChange(this)
        nothing
end

function newHealthIncludingLifeBar(layerInterface, life, healthInterface, animationInterface, direction)
    this = HealthIncludingLifeBar()
    initHealthIncludingLifeBar(this, layerInterface, life, healthInterface, animationInterface, direction)
    this
end


function onHealthChange(this::HealthIncludingLifeBar)
        AllBinary.onHealthChange(this.animationInterface, ((AllBinary.getHealth(this.healthInterface) + (AllBinary.getMaxHealth(this.healthInterface) * AllBinary.get(this.life))) * AllBinary.getWidth(this.allbinaryLayer)) / (AllBinary.getMaxHealth(this.healthInterface) + (AllBinary.getMaxHealth(this.healthInterface) * AllBinary.getStartLives(this.life))))
        nothing
end


function paint(this::HealthIncludingLifeBar, graphics)
        AllBinary.paintXY(this.animationInterface, graphics, Int32(0), Int32(0))
        nothing
end


function paintThreed(this::HealthIncludingLifeBar, graphics)
        AllBinary.paintThreedXYZ(this.animationInterface, graphics, Int32(0), Int32(0), Int32(0))
        nothing
end

