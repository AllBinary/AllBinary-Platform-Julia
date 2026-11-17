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
# package org.allbinary.animation

# extends VectorAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AdjustedVectorAnimation <: JObject
    dx::Int32
    dy::Int32
    AdjustedVectorAnimation() = new()
end


function initFieldsAdjustedVectorAnimation(this::AdjustedVectorAnimation)
    this.dx = Int32(0)
    this.dy = Int32(0)
    
    
    nothing
end


function initAdjustedVectorAnimation(this::AdjustedVectorAnimation, currentPoints, basicColor, dx, dy, animationBehavior)
        initVectorAnimation(this, currentPoints, basicColor, animationBehavior)
        initFieldsAdjustedVectorAnimation(this)
        this.dx = dx
        this.dy = dy
        nothing
end

function newAdjustedVectorAnimation(currentPoints, basicColor, dx, dy, animationBehavior)
    this = AdjustedVectorAnimation()
    initAdjustedVectorAnimation(this, currentPoints, basicColor, dx, dy, animationBehavior)
    this
end


function paintXY(this::AdjustedVectorAnimation, graphics, x, y)
        AllBinary.paintXY(this, graphics, x + this.dx, y + this.dy)
        nothing
end

