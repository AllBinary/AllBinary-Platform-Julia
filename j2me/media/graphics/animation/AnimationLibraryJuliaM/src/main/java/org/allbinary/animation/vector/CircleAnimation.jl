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
mutable struct CircleAnimation <: JObject
    TOTAL_ANGLE::Int32
    width::Int32
    height::Int32
    CircleAnimation() = new()
end


function initFieldsCircleAnimation(this::CircleAnimation)
    this.TOTAL_ANGLE = Int32(0)
    this.width = Int32(0)
    this.height = Int32(0)
    this.TOTAL_ANGLE = ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32)
    
    
    nothing
end


function initCircleAnimation(this::CircleAnimation, width, height, basicColor)
        initAnimation(this)
        initFieldsCircleAnimation(this)
        this.width = width
        this.height = height
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newCircleAnimation(width, height, basicColor)
    this = CircleAnimation()
    initCircleAnimation(this, width, height, basicColor)
    this
end


function nextFrame(this::CircleAnimation)
        nothing
        nothing
end


function paintXY(this::CircleAnimation, graphics, x, y)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        AllBinary.drawArc(graphics, x, y, this.width, this.height, Int32(0), this.TOTAL_ANGLE)
        nothing
end


function getBasicColorP(this::CircleAnimation)
        return AllBinary.getBasicColorP(this)
end


function setBasicColorP(this::CircleAnimation, basicColor)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

