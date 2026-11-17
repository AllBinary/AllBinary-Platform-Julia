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
# package org.allbinary.animation.text

# extends CustomTextAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AdjustCustomTextAnimation <: JObject
    dx::Int32
    dy::Int32
    AdjustCustomTextAnimation() = new()
end


function initFieldsAdjustCustomTextAnimation(this::AdjustCustomTextAnimation)
    this.dx = Int32(0)
    this.dy = Int32(0)
    
    
    nothing
end


function initAdjustCustomTextAnimation(this::AdjustCustomTextAnimation, text, fontSize, dx, dy, animationBehavior)
        initCustomTextAnimation(this, text, fontSize, animationBehavior)
        initFieldsAdjustCustomTextAnimation(this)
        this.dx = dx
        this.dy = dy
        nothing
end

function newAdjustCustomTextAnimation(text, fontSize, dx, dy, animationBehavior)
    this = AdjustCustomTextAnimation()
    initAdjustCustomTextAnimation(this, text, fontSize, dx, dy, animationBehavior)
    this
end


function getDx(this::AdjustCustomTextAnimation)
        return this.dx
end


function setDx(this::AdjustCustomTextAnimation, dx)
        this.dx = dx
        nothing
end


function getDy(this::AdjustCustomTextAnimation)
        return this.dy
end


function setDy(this::AdjustCustomTextAnimation, dy)
        this.dy = dy
        nothing
end


function paintXY(this::AdjustCustomTextAnimation, graphics, x, y)
        AllBinary.paintXY(this, graphics, x + this.dx, y + this.dy)
        nothing
end

