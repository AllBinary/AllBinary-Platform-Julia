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

# extends RotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HackRotationSpriteIndexedAnimation <: JObject
    sprite::Any
    image::Any
    HackRotationSpriteIndexedAnimation() = new()
end


function initFieldsHackRotationSpriteIndexedAnimation(this::HackRotationSpriteIndexedAnimation)
    this.sprite = nothing
    this.image = nothing
    
    
    nothing
end


function initHackRotationSpriteIndexedAnimation(this::HackRotationSpriteIndexedAnimation, sprite, image, angleInfo, animationBehavior)
        initRotationAnimation(this, angleInfo, AllBinary.createInstance(CircularIndexUtil, Int32(360) ÷ AllBinary.getAngleIncrement(AllBinary.getAngleIncrementInfo(angleInfo))), animationBehavior)
        initFieldsHackRotationSpriteIndexedAnimation(this)
        this.sprite = sprite
        this.image = image
        nothing
end

function newHackRotationSpriteIndexedAnimation(sprite, image, angleInfo, animationBehavior)
    this = HackRotationSpriteIndexedAnimation()
    initHackRotationSpriteIndexedAnimation(this, sprite, image, angleInfo, animationBehavior)
    this
end


function getAnimationSize(this::HackRotationSpriteIndexedAnimation)
        return AllBinary.getSize(this)
end


function paintFrame(this::HackRotationSpriteIndexedAnimation, g, frame, x, y)
        AllBinary.setFrame(this, frame)
        AllBinary.paintXY(this, g, x, y)
        nothing
end


function paintXY(this::HackRotationSpriteIndexedAnimation, g, x, y)
        AllBinary.setPosition(this.sprite, x, y)
        AllBinary.paint(this, g)
        nothing
end


function paint(this::HackRotationSpriteIndexedAnimation, g)
        AllBinary.paint(this.sprite, g)
        nothing
end


function nextRotation(this::HackRotationSpriteIndexedAnimation)
        AllBinary.nextFrame(this.sprite)
        nothing
end


function previousRotation(this::HackRotationSpriteIndexedAnimation)
        AllBinary.prevFrame(this.sprite)
        nothing
end


function getSize(this::HackRotationSpriteIndexedAnimation)
        return AllBinary.getRawFrameCount(this.sprite)
end


function setFrame(this::HackRotationSpriteIndexedAnimation, frame)
        AllBinary.setFrame(this.sprite, frame)
        nothing
end


function getFrame(this::HackRotationSpriteIndexedAnimation)
        return AllBinary.getFrame(this.sprite)
end


function setSequence(this::HackRotationSpriteIndexedAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::HackRotationSpriteIndexedAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end

