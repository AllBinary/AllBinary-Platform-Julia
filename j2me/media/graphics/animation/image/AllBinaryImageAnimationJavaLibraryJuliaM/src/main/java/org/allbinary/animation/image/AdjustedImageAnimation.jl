#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.animation.image

# extends ImageAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AdjustedImageAnimation <: JObject
    dx::Int32
    dy::Int32
    AdjustedImageAnimation() = new()
end


function initFieldsAdjustedImageAnimation(this::AdjustedImageAnimation)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    nothing
end


function initAdjustedImageAnimation(this::AdjustedImageAnimation, image, dx, dy, animationBehavior)
        initImageAnimation(this, image, animationBehavior)
        initFieldsAdjustedImageAnimation(this)
        AllBinary.init(this, dx, dy)
        nothing
end

function newAdjustedImageAnimation(image, dx, dy, animationBehavior)
    this = AdjustedImageAnimation()
    initAdjustedImageAnimation(this, image, dx, dy, animationBehavior)
    this
end


function init(this::AdjustedImageAnimation, dx, dy)
        AllBinary.setDx(this, dx)
        AllBinary.setDy(this, dy)
        nothing
end


function paintXY(this::AdjustedImageAnimation, graphics, x, y)
        AllBinary.paintXY(this, graphics, x + this.dx, y + this.dy)
        nothing
end


function setDx(this::AdjustedImageAnimation, dx)
        this.dx = dx
        nothing
end


function getDx(this::AdjustedImageAnimation)
        return this.dx
end


function setDy(this::AdjustedImageAnimation, dy)
        this.dy = dy
        nothing
end


function getDy(this::AdjustedImageAnimation)
        return this.dy
end

