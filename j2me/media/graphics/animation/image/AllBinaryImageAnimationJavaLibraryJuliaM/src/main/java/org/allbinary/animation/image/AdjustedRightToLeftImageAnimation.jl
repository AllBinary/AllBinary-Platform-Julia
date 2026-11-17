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

# extends RightToLeftImageAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AdjustedRightToLeftImageAnimation <: JObject
    dx::Int32
    dy::Int32
    AdjustedRightToLeftImageAnimation() = new()
end


function initFieldsAdjustedRightToLeftImageAnimation(this::AdjustedRightToLeftImageAnimation)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    nothing
end


function initAdjustedRightToLeftImageAnimation(this::AdjustedRightToLeftImageAnimation, image, dx, dy, animationBehavior)
        initRightToLeftImageAnimation(this, image, animationBehavior)
        initFieldsAdjustedRightToLeftImageAnimation(this)
        AllBinary.init(this, dx, dy)
        nothing
end

function newAdjustedRightToLeftImageAnimation(image, dx, dy, animationBehavior)
    this = AdjustedRightToLeftImageAnimation()
    initAdjustedRightToLeftImageAnimation(this, image, dx, dy, animationBehavior)
    this
end


function init(this::AdjustedRightToLeftImageAnimation, dx, dy)
        this.dx = dx
        this.dy = dy
        nothing
end


function paintXY(this::AdjustedRightToLeftImageAnimation, graphics, x, y)
        AllBinary.paintXY(this, graphics, x + this.dx, y + this.dy)
        nothing
end

