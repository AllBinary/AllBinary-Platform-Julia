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
# package org.allbinary.animation.image

# extends ImageArrayAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AdjustedImageArrayAnimation <: JObject
    dx::Int32
    dy::Int32
    AdjustedImageArrayAnimation() = new()
end


function initFieldsAdjustedImageArrayAnimation(this::AdjustedImageArrayAnimation)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    nothing
end


function initAdjustedImageArrayAnimation(this::AdjustedImageArrayAnimation, imageArray, dx, dy, animationBehavior)
        initImageArrayAnimation(this, imageArray, animationBehavior)
        initFieldsAdjustedImageArrayAnimation(this)
        AllBinary.init(this, dx, dy)
        nothing
end

function newAdjustedImageArrayAnimation(imageArray, dx, dy, animationBehavior)
    this = AdjustedImageArrayAnimation()
    initAdjustedImageArrayAnimation(this, imageArray, dx, dy, animationBehavior)
    this
end


function init(this::AdjustedImageArrayAnimation, dx, dy)
        AllBinary.setDx(this, dx)
        AllBinary.setDy(this, dy)
        nothing
end


function paintXY(this::AdjustedImageArrayAnimation, graphics, x, y)
        AllBinary.paintXY(this, graphics, x + this.dx, y + this.dy)
        nothing
end


function setDx(this::AdjustedImageArrayAnimation, dx)
        this.dx = dx
        nothing
end


function getDx(this::AdjustedImageArrayAnimation)
        return this.dx
end


function setDy(this::AdjustedImageArrayAnimation, dy)
        this.dy = dy
        nothing
end


function getDy(this::AdjustedImageArrayAnimation)
        return this.dy
end

