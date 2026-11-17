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

# extends Animation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RectangleAdjustedAnimation <: JObject
    width::Int32
    height::Int32
    offsetX::Int32
    offsetY::Int32
    RectangleAdjustedAnimation() = new()
end


function initFieldsRectangleAdjustedAnimation(this::RectangleAdjustedAnimation)
    this.width = Int32(0)
    this.height = Int32(0)
    this.offsetX = Int32(0)
    this.offsetY = Int32(0)
    
    
    
    
    nothing
end


function initRectangleAdjustedAnimation(this::RectangleAdjustedAnimation, width, height, offsetX, offsetY, basicColor)
        initAnimation(this)
        initFieldsRectangleAdjustedAnimation(this)
        this.width = width
        this.height = height
        this.offsetX = offsetX
        this.offsetY = offsetY
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newRectangleAdjustedAnimation(width, height, offsetX, offsetY, basicColor)
    this = RectangleAdjustedAnimation()
    initRectangleAdjustedAnimation(this, width, height, offsetX, offsetY, basicColor)
    this
end


function nextFrame(this::RectangleAdjustedAnimation)
        nothing
        nothing
end


function paintXY(this::RectangleAdjustedAnimation, graphics, x, y)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        AllBinary.drawRect(graphics, x + this.offsetX, y + this.offsetY, this.width, this.height)
        nothing
end


function setWidth(this::RectangleAdjustedAnimation, width)
        this.width = width
        nothing
end


function setHeight(this::RectangleAdjustedAnimation, height)
        this.height = height
        nothing
end


function setOffsetX(this::RectangleAdjustedAnimation, offsetX)
        this.offsetX = offsetX
        nothing
end


function setOffsetY(this::RectangleAdjustedAnimation, offsetY)
        this.offsetY = offsetY
        nothing
end


function getBasicColorP(this::RectangleAdjustedAnimation)
        return AllBinary.getBasicColorP(this)
end


function setBasicColorP(this::RectangleAdjustedAnimation, basicColor)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

