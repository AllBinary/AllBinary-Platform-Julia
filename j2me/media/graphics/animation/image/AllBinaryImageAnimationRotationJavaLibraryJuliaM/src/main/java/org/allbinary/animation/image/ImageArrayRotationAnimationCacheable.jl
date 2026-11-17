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

# extends AdjustedImageArrayRotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageArrayRotationAnimationCacheable <: JObject
    ImageArrayRotationAnimationCacheable() = new()
end


function initFieldsImageArrayRotationAnimationCacheable(this::ImageArrayRotationAnimationCacheable)
    nothing
end


function initImageArrayRotationAnimationCacheable(this::ImageArrayRotationAnimationCacheable, anyType, animationBehavior)
        initAdjustedImageArrayRotationAnimation(this, AllBinary.getImageArray(((anyType))), AllBinary.getAngleInfoP(((anyType))), AllBinary.getTotalAngle(((anyType))), AllBinary.getDx(((anyType))), AllBinary.getDy(((anyType))), animationBehavior)
        nothing
end

function newImageArrayRotationAnimationCacheable(anyType, animationBehavior)
    this = ImageArrayRotationAnimationCacheable()
    initImageArrayRotationAnimationCacheable(this, anyType, animationBehavior)
    this
end


function getKey(this::ImageArrayRotationAnimationCacheable)
        return AllBinary.getInstance(NullUtil).NULL_OBJECT
end


function toString(this::ImageArrayRotationAnimationCacheable)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end

