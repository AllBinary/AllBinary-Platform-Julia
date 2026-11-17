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
# package org.allbinary.animation.image.sprite

# extends SpriteIndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AdjustedSpriteIndexedAnimation <: JObject
    dx::Int32
    dy::Int32
    AdjustedSpriteIndexedAnimation() = new()
end


function initFieldsAdjustedSpriteIndexedAnimation(this::AdjustedSpriteIndexedAnimation)
    this.dx = Int32(0)
    this.dy = Int32(0)
    
    
    nothing
end


function initAdjustedSpriteIndexedAnimation(this::AdjustedSpriteIndexedAnimation, sprite, image, basicColorArray, dx, dy, animationBehavior)
        initSpriteIndexedAnimation(this, sprite, image, basicColorArray, animationBehavior)
        initFieldsAdjustedSpriteIndexedAnimation(this)
        this.dx = dx
        this.dy = dy
        nothing
end

function newAdjustedSpriteIndexedAnimation(sprite, image, basicColorArray, dx, dy, animationBehavior)
    this = AdjustedSpriteIndexedAnimation()
    initAdjustedSpriteIndexedAnimation(this, sprite, image, basicColorArray, dx, dy, animationBehavior)
    this
end


function paintFrame(this::AdjustedSpriteIndexedAnimation, graphics, frame, x, y)
        AllBinary.setFrame(this, frame)
        AllBinary.setPosition(this.sprite, x + this.dx, y + this.dy)
        AllBinary.paint(this, graphics)
        nothing
end


function paintXY(this::AdjustedSpriteIndexedAnimation, g, x, y)
        AllBinary.setPosition(this.sprite, x + this.dx, y + this.dy)
        AllBinary.paint(this, g)
        nothing
end


function paint(this::AdjustedSpriteIndexedAnimation, g)
        AllBinary.setPosition(this.sprite, this.dx, this.dy)
        AllBinary.paint(this, g)
        nothing
end

