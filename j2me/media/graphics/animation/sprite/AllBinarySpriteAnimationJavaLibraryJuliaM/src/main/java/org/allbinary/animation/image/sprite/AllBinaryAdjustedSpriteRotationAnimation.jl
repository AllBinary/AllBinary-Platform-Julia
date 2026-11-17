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

# extends AllBinarySpriteRotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryAdjustedSpriteRotationAnimation <: JObject
    dx::Int32
    dy::Int32
    AllBinaryAdjustedSpriteRotationAnimation() = new()
end


function initFieldsAllBinaryAdjustedSpriteRotationAnimation(this::AllBinaryAdjustedSpriteRotationAnimation)
    this.dx = Int32(0)
    this.dy = Int32(0)
    
    
    nothing
end


function initAllBinaryAdjustedSpriteRotationAnimation(this::AllBinaryAdjustedSpriteRotationAnimation, sprite, image, dx, dy, animationBehavior)
        initAllBinarySpriteRotationAnimation(this, sprite, image, animationBehavior)
        initFieldsAllBinaryAdjustedSpriteRotationAnimation(this)
        this.dx = dx
        this.dy = dy
        nothing
end

function newAllBinaryAdjustedSpriteRotationAnimation(sprite, image, dx, dy, animationBehavior)
    this = AllBinaryAdjustedSpriteRotationAnimation()
    initAllBinaryAdjustedSpriteRotationAnimation(this, sprite, image, dx, dy, animationBehavior)
    this
end


function paintXY(this::AllBinaryAdjustedSpriteRotationAnimation, g, x, y)
        AllBinary.setPosition(this.sprite, x + this.dx, y + this.dy)
        AllBinary.paint(this, g)
        nothing
end

