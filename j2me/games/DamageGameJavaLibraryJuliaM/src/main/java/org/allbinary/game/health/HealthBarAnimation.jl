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

# extends Animation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HealthBarAnimation <: JObject
    basicColorFactory::Any
    x2::Int32
    thickness::Int32
    location::Int32
    allbinaryLayer::Any
    HealthBarAnimation() = new()
end


function initFieldsHealthBarAnimation(this::HealthBarAnimation)
    this.basicColorFactory = nothing
    this.x2 = Int32(0)
    this.thickness = Int32(0)
    this.location = Int32(0)
    this.allbinaryLayer = nothing
    this.basicColorFactory = AllBinary.getInstance(BasicColorFactory)
    this.x2 = Int32(0)
    this.thickness = Int32(0)
    
    
    nothing
end


function initHealthBarAnimation(this::HealthBarAnimation, layerInterface, location)
        initAnimation(this)
        initFieldsHealthBarAnimation(this)
        this.allbinaryLayer = layerInterface
        this.location = location
        local basicHudFactory = AllBinary.getInstance(BasicHudFactory)
        if this.location != basicHudFactory.TOPLEFT && this.location != basicHudFactory.BOTTOMLEFT
            throw(jNewException("Exception", "Location Not Valid"))
        end
        if AllBinary.getWidth(layerInterface) > Int32(40)
            this.thickness = Int32(3)
        elseif AllBinary.getWidth(layerInterface) > Int32(20)
            this.thickness = Int32(2)
        else
            this.thickness = Int32(1)
        end
        nothing
end

function newHealthBarAnimation(layerInterface, location)
    this = HealthBarAnimation()
    initHealthBarAnimation(this, layerInterface, location)
    this
end


function onHealthChange(this::HealthBarAnimation, newX2)
        this.x2 = newX2
        local quarter::Int32 = (AllBinary.getWidth(this.allbinaryLayer) >> Int32(2))
        if this.x2 > quarter * Int32(3)
            this.basicColor = this.basicColorFactory.GREEN
            this.colorP = AllBinary.intValue(this.basicColor)
        elseif this.x2 > quarter * Int32(2)
            this.basicColor = this.basicColorFactory.YELLOW
            this.colorP = AllBinary.intValue(this.basicColor)
        elseif this.x2 > quarter
            this.basicColor = this.basicColorFactory.ORANGE
            this.colorP = AllBinary.intValue(this.basicColor)
        else
            this.basicColor = this.basicColorFactory.RED
            this.colorP = AllBinary.intValue(this.basicColor)
        end
        nothing
end


function getY(this::HealthBarAnimation)
        local basicHudFactory = AllBinary.getInstance(BasicHudFactory)
        if this.location == basicHudFactory.TOPLEFT
            return AllBinary.getY(AllBinary.getViewPosition(this.allbinaryLayer)) - Int32(4)
        elseif this.location == basicHudFactory.BOTTOMLEFT
            return AllBinary.getY2(AllBinary.getViewPosition(this.allbinaryLayer)) + Int32(4)
        end
        return -Int32(1)
end

