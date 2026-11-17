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

# extends ImageArrayBaseRotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageArrayRotationAnimation <: JObject
    expectedTotalFrames::Int32
    ImageArrayRotationAnimation() = new()
end


function initFieldsImageArrayRotationAnimation(this::ImageArrayRotationAnimation)
    this.expectedTotalFrames = Int32(0)
    this.expectedTotalFrames = Int32(0)
    nothing
end


function createAnimation(::Type{ImageArrayRotationAnimation}, anyType, animationBehavior)
        local imageRotationAnimationInfo = (anyType)
        return newImageArrayRotationAnimation(AllBinary.getImageArray(imageRotationAnimationInfo), AllBinary.getAngleInfoP(imageRotationAnimationInfo), AllBinary.getTotalAngle(imageRotationAnimationInfo), animationBehavior)
end


function initImageArrayRotationAnimation(this::ImageArrayRotationAnimation, imageArray, angleInfo, totalAngle, animationBehavior)
        initImageArrayBaseRotationAnimation(this, imageArray, angleInfo, animationBehavior)
        initFieldsImageArrayRotationAnimation(this)
        AllBinary.initImageArray(this, imageArray, angleInfo, totalAngle)
        nothing
end

function newImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, animationBehavior)
    this = ImageArrayRotationAnimation()
    initImageArrayRotationAnimation(this, imageArray, angleInfo, totalAngle, animationBehavior)
    this
end


function initImageArray(this::ImageArrayRotationAnimation, imageArray, angleInfo, totalAngle)
        this.expectedTotalFrames = totalAngle ÷ AllBinary.getAngleIncrement(AllBinary.getAngleIncrementInfo(this.angleInfo))
        AllBinary.adjustAngle(this.angleInfo, Int32(0))
        if this.expectedTotalFrames != AllBinary.getSize(this)
            throw(jNewException("Exception", "Wrong Number of Frames"))
        end
        nothing
end


function setImageArray(this::ImageArrayRotationAnimation, imageArray)
        AllBinary.setImageArray(this, imageArray)
        AllBinary.adjustAngle(this.angleInfo, Int32(0))
        nothing
end

