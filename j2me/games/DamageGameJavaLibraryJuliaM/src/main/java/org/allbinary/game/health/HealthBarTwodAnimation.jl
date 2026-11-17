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

# extends HealthBarAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HealthBarTwodAnimation <: JObject
    HealthBarTwodAnimation() = new()
end


function initFieldsHealthBarTwodAnimation(this::HealthBarTwodAnimation)
    nothing
end


function initHealthBarTwodAnimation(this::HealthBarTwodAnimation, layerInterface, location)
        initHealthBarAnimation(this, layerInterface, location)
        nothing
end

function newHealthBarTwodAnimation(layerInterface, location)
    this = HealthBarTwodAnimation()
    initHealthBarTwodAnimation(this, layerInterface, location)
    this
end


function paintXY(this::HealthBarTwodAnimation, graphics, x, y)
        local ax::Int32 = AllBinary.getX(AllBinary.getViewPosition(this.allbinaryLayer))
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, this.basicColor, this.colorP)
        AllBinary.fillRect(graphics, ax, AllBinary.getY(this) - Int32(1), this.x2, this.thickness)
        nothing
end

