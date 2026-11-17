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

# extends HackRotationSpriteIndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinarySpriteRotationAnimation <: JObject
    AllBinarySpriteRotationAnimation() = new()
end


function initFieldsAllBinarySpriteRotationAnimation(this::AllBinarySpriteRotationAnimation)
    nothing
end


function initAllBinarySpriteRotationAnimation(this::AllBinarySpriteRotationAnimation, sprite, image, animationBehavior)
        initHackRotationSpriteIndexedAnimation(this, sprite, image, AllBinary.getInstance(AngleInfo, (((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE / AllBinary.getRawFrameCount(sprite))) % Int16)), animationBehavior)
        AllBinary.adjustAngle(this.angleInfo, AllBinary.getFrame(this.sprite))
        nothing
end

function newAllBinarySpriteRotationAnimation(sprite, image, animationBehavior)
    this = AllBinarySpriteRotationAnimation()
    initAllBinarySpriteRotationAnimation(this, sprite, image, animationBehavior)
    this
end


function nextRotation(this::AllBinarySpriteRotationAnimation)
        AllBinary.nextFrame(this.sprite)
        AllBinary.adjustAngle(this.angleInfo, AllBinary.getFrame(this.sprite))
        nothing
end


function previousRotation(this::AllBinarySpriteRotationAnimation)
        AllBinary.prevFrame(this.sprite)
        AllBinary.adjustAngle(this.angleInfo, AllBinary.getFrame(this.sprite))
        nothing
end


function setFrameByDirection(this::AllBinarySpriteRotationAnimation, direction)
        local angle = AllBinary.getFrameAngle(this.directionUtil, direction)
        AllBinary.adjustFrameToAngle(this, angle)
        nothing
end


function setFrameToAngle(this::AllBinarySpriteRotationAnimation, angle)
        AllBinary.adjustFrameToAngle(this, angle)
        nothing
end


function setFrame(this::AllBinarySpriteRotationAnimation, index)
        AllBinary.setFrame(this.sprite, index)
        AllBinary.adjustAngle(this.angleInfo, AllBinary.getFrame(this))
        nothing
end


function adjustFrameToAngle(this::AllBinarySpriteRotationAnimation, angle)
        AllBinary.adjustFrame(this, AllBinary.getValue(angle))
        nothing
end


function adjustFrame(this::AllBinarySpriteRotationAnimation, angle)
        AllBinary.setFrame(this, AllBinary.getFrameForAngle(this.frameUtil, angle, ((AllBinary.getAngleIncrement(AllBinary.getAngleIncrementInfo(this.angleInfo))) % Int32)))
        nothing
end

