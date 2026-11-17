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
mutable struct ColorLessVectorAnimation <: JObject
    ColorLessVectorAnimation() = new()
end


function initFieldsColorLessVectorAnimation(this::ColorLessVectorAnimation)
    nothing
end


function initColorLessVectorAnimation(this::ColorLessVectorAnimation, currentPoints, animationBehavior)
        initVectorAnimation(this, currentPoints, AllBinary.getInstance(BasicColorFactory).WHITE, animationBehavior)
        nothing
end

function newColorLessVectorAnimation(currentPoints, animationBehavior)
    this = ColorLessVectorAnimation()
    initColorLessVectorAnimation(this, currentPoints, animationBehavior)
    this
end


function paintXY(this::ColorLessVectorAnimation, graphics, x, y)
        AllBinary.paintVectors(this, graphics, x, y)
        nothing
end

