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
mutable struct RectangleAnimation <: JObject
    width::Int32
    height::Int32
    RectangleAnimation() = new()
end


function initFieldsRectangleAnimation(this::RectangleAnimation)
    this.width = Int32(0)
    this.height = Int32(0)
    
    
    nothing
end


function initRectangleAnimation(this::RectangleAnimation, width, height, basicColor)
        initAnimation(this)
        initFieldsRectangleAnimation(this)
        this.width = width
        this.height = height
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newRectangleAnimation(width, height, basicColor)
    this = RectangleAnimation()
    initRectangleAnimation(this, width, height, basicColor)
    this
end


function nextFrame(this::RectangleAnimation)
        nothing
        nothing
end


function paintXY(this::RectangleAnimation, graphics, x, y)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        AllBinary.drawRect(graphics, x, y, this.width, this.height)
        nothing
end


function setWidth(this::RectangleAnimation, width)
        this.width = width
        nothing
end


function setHeight(this::RectangleAnimation, height)
        this.height = height
        nothing
end


function getBasicColorP(this::RectangleAnimation)
        return AllBinary.getBasicColorP(this)
end


function setBasicColorP(this::RectangleAnimation, basicColor)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

