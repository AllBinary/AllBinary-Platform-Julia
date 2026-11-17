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

# extends RotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageBaseRotationAnimation <: JObject
    image::Any
    anchor::Int32
    ImageBaseRotationAnimation() = new()
end


function initFieldsImageBaseRotationAnimation(this::ImageBaseRotationAnimation)
    this.image = nothing
    this.anchor = Int32(0)
    
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initImageBaseRotationAnimation(this::ImageBaseRotationAnimation, image, angleInfo, totalAngle, animationBehavior)
        initRotationAnimation(this, angleInfo, AllBinary.createInstance(CircularIndexUtil, totalAngle ÷ AllBinary.getAngleIncrement(AllBinary.getAngleIncrementInfo(angleInfo))), animationBehavior)
        initFieldsImageBaseRotationAnimation(this)
        this.image = image
        nothing
end

function newImageBaseRotationAnimation(image, angleInfo, totalAngle, animationBehavior)
    this = ImageBaseRotationAnimation()
    initImageBaseRotationAnimation(this, image, angleInfo, totalAngle, animationBehavior)
    this
end


function getAnimationSize(this::ImageBaseRotationAnimation)
        return AllBinary.getSize(this)
end


function setSequence(this::ImageBaseRotationAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::ImageBaseRotationAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function paintXY(this::ImageBaseRotationAnimation, graphics, x, y)
        AllBinary.drawImage(graphics, this.image, x, y, this.anchor)
        nothing
end


function getImage(this::ImageBaseRotationAnimation)
        return this.image
end


function getWidth(this::ImageBaseRotationAnimation)
        return AllBinary.getWidth(this.image)
end


function getHeight(this::ImageBaseRotationAnimation)
        return AllBinary.getHeight(this.image)
end


function close(this::ImageBaseRotationAnimation)
        AllBinary.disposeImage(AllBinary.getInstance(DisposalUtil), this.image)
        nothing
end


function finalize(this::ImageBaseRotationAnimation)
        AllBinary.disposeImage(AllBinary.getInstance(DisposalUtil), this.image)
        nothing
end

