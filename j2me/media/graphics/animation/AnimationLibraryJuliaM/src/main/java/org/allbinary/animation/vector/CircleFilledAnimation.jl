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
mutable struct CircleFilledAnimation <: JObject
    width::Int32
    height::Int32
    CircleFilledAnimation() = new()
end


function initFieldsCircleFilledAnimation(this::CircleFilledAnimation)
    this.width = Int32(0)
    this.height = Int32(0)
    
    
    nothing
end


function initCircleFilledAnimation(this::CircleFilledAnimation, width, height, basicColor)
        initAnimation(this)
        initFieldsCircleFilledAnimation(this)
        this.width = width
        this.height = height
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newCircleFilledAnimation(width, height, basicColor)
    this = CircleFilledAnimation()
    initCircleFilledAnimation(this, width, height, basicColor)
    this
end


function nextFrame(this::CircleFilledAnimation)
        nothing
        nothing
end


function paintXY(this::CircleFilledAnimation, graphics, x, y)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        AllBinary.fillRect(graphics, x, y, this.width, this.height)
        nothing
end


function getBasicColorP(this::CircleFilledAnimation)
        return AllBinary.getBasicColorP(this)
end


function setBasicColorP(this::CircleFilledAnimation, basicColor)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

