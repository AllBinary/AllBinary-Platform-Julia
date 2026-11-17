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
# package org.allbinary.animation.vector

# extends RectangleFilledAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RectangleFilledAdjustedAnimation <: JObject
    offsetX::Int32
    offsetY::Int32
    RectangleFilledAdjustedAnimation() = new()
end


function initFieldsRectangleFilledAdjustedAnimation(this::RectangleFilledAdjustedAnimation)
    this.offsetX = Int32(0)
    this.offsetY = Int32(0)
    
    
    nothing
end


function initRectangleFilledAdjustedAnimation(this::RectangleFilledAdjustedAnimation, width, height, offsetX, offsetY, basicColor)
        initRectangleFilledAnimation(this, width, height, basicColor)
        initFieldsRectangleFilledAdjustedAnimation(this)
        this.offsetX = offsetX
        this.offsetY = offsetY
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newRectangleFilledAdjustedAnimation(width, height, offsetX, offsetY, basicColor)
    this = RectangleFilledAdjustedAnimation()
    initRectangleFilledAdjustedAnimation(this, width, height, offsetX, offsetY, basicColor)
    this
end


function nextFrame(this::RectangleFilledAdjustedAnimation)
        nothing
        nothing
end


function paintXY(this::RectangleFilledAdjustedAnimation, graphics, x, y)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        AllBinary.paintXY(this, graphics, x + this.offsetX, y + this.offsetY)
        nothing
end


function setOffsetX(this::RectangleFilledAdjustedAnimation, offsetX)
        this.offsetX = offsetX
        nothing
end


function setOffsetY(this::RectangleFilledAdjustedAnimation, offsetY)
        this.offsetY = offsetY
        nothing
end


function getBasicColorP(this::RectangleFilledAdjustedAnimation)
        return AllBinary.getBasicColorP(this)
end


function setBasicColorP(this::RectangleFilledAdjustedAnimation, basicColor)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

