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
mutable struct RectangleFilledAnimation <: JObject
    widthP::Int32
    heightP::Int32
    RectangleFilledAnimation() = new()
end


function initFieldsRectangleFilledAnimation(this::RectangleFilledAnimation)
    this.widthP = Int32(0)
    this.heightP = Int32(0)
    
    
    nothing
end


function initRectangleFilledAnimation(this::RectangleFilledAnimation, width, height, basicColor)
        initAnimation(this)
        initFieldsRectangleFilledAnimation(this)
        this.widthP = width
        this.heightP = height
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newRectangleFilledAnimation(width, height, basicColor)
    this = RectangleFilledAnimation()
    initRectangleFilledAnimation(this, width, height, basicColor)
    this
end


function nextFrame(this::RectangleFilledAnimation)
        nothing
        nothing
end


function paintXY(this::RectangleFilledAnimation, graphics, x, y)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        AllBinary.fillRect(graphics, x, y, this.widthP, this.heightP)
        nothing
end


function setWidth(this::RectangleFilledAnimation, width)
        this.widthP = width
        nothing
end


function setHeight(this::RectangleFilledAnimation, height)
        this.heightP = height
        nothing
end


function getBasicColorP(this::RectangleFilledAnimation)
        return AllBinary.getBasicColorP(this)
end


function setBasicColorP(this::RectangleFilledAnimation, basicColor)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

