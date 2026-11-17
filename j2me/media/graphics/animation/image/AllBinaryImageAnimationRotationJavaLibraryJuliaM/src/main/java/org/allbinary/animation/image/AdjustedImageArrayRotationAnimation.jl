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

#TWB - Adjustments should be done in the resource creation and not at the animation level
# extends ImageArrayRotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AdjustedImageArrayRotationAnimation <: JObject
    dx::Int32
    dy::Int32
    AdjustedImageArrayRotationAnimation() = new()
end


function initFieldsAdjustedImageArrayRotationAnimation(this::AdjustedImageArrayRotationAnimation)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    nothing
end


function createAdjustedImageArrayRotationAnimationInfo(::Type{AdjustedImageArrayRotationAnimation}, anyType, animationBehavior)
        local imageRotationAnimationInfo = (anyType)
        return newAdjustedImageArrayRotationAnimation(AllBinary.getImageArray(imageRotationAnimationInfo), AllBinary.getAngleInfoP(imageRotationAnimationInfo), AllBinary.getTotalAngle(imageRotationAnimationInfo), AllBinary.getDx(imageRotationAnimationInfo), AllBinary.getDy(imageRotationAnimationInfo), animationBehavior)
end


function createAnimation(::Type{AdjustedImageArrayRotationAnimation}, imageArray, angleInfo, totalAngle, animationBehavior)
        return newAdjustedImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, -(AllBinary.getWidth(imageArray[Int32(0) + 1]) >> Int32(2)), -(AllBinary.getHeight(imageArray[Int32(0) + 1]) >> Int32(2)), animationBehavior)
end


function initAdjustedImageArrayRotationAnimation(this::AdjustedImageArrayRotationAnimation, imageArray, angleInfo, totalAngle, dx, dy, animationBehavior)
        initImageArrayRotationAnimation(this, imageArray, angleInfo, totalAngle, animationBehavior)
        initFieldsAdjustedImageArrayRotationAnimation(this)
        AllBinary.init(this, dx, dy)
        nothing
end

function newAdjustedImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, dx, dy, animationBehavior)
    this = AdjustedImageArrayRotationAnimation()
    initAdjustedImageArrayRotationAnimation(this, imageArray, angleInfo, totalAngle, dx, dy, animationBehavior)
    this
end


function init(this::AdjustedImageArrayRotationAnimation, dx, dy)
        AllBinary.setDx(this, dx)
        AllBinary.setDy(this, dy)
        nothing
end


function paintXY(this::AdjustedImageArrayRotationAnimation, graphics, x, y)
        AllBinary.paintXY(this, graphics, x + this.dx, y + this.dy)
        nothing
end


function setDx(this::AdjustedImageArrayRotationAnimation, dx)
        this.dx = dx
        nothing
end


function getDx(this::AdjustedImageArrayRotationAnimation)
        return this.dx
end


function setDy(this::AdjustedImageArrayRotationAnimation, dy)
        this.dy = dy
        nothing
end


function getDy(this::AdjustedImageArrayRotationAnimation)
        return this.dy
end

