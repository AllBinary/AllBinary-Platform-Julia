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

# extends ImageArrayAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageArraySpecialAnimation <: JObject
    timeDelayHelper::Any
    loopCount::Int32
    loopCountTotal::Int32
    ImageArraySpecialAnimation() = new()
end


function initFieldsImageArraySpecialAnimation(this::ImageArraySpecialAnimation)
    this.timeDelayHelper = nothing
    this.loopCount = Int32(0)
    this.loopCountTotal = Int32(0)
    this.timeDelayHelper = newTimeDelayHelper(Int32(270))
    this.loopCount = Int32(0)
    this.loopCountTotal = Int32(1)
    nothing
end


function initImageArraySpecialAnimation(this::ImageArraySpecialAnimation, imageArray, animationBehavior)
        initImageArrayAnimation(this, imageArray, animationBehavior)
        initFieldsImageArraySpecialAnimation(this)
        AllBinary.reset(this)
        nothing
end

function newImageArraySpecialAnimation(imageArray, animationBehavior)
    this = ImageArraySpecialAnimation()
    initImageArraySpecialAnimation(this, imageArray, animationBehavior)
    this
end


function getLoopCount(this::ImageArraySpecialAnimation)
        return this.loopCount
end


function setLastFrame(this::ImageArraySpecialAnimation)
        AllBinary.setIndex(this.circularIndexUtil, AllBinary.getSize(this.circularIndexUtil) - Int32(1))
        nothing
end


function reset(this::ImageArraySpecialAnimation)
        AllBinary.setFrame(this, AllBinary.getSize(this) - Int32(1))
        this.loopCount = Int32(0)
        nothing
end


function nextFrame(this::ImageArraySpecialAnimation)
        if AllBinary.getFrame(this) > Int32(0)
            if AllBinary.isTime(this.timeDelayHelper, AllBinary.getInstance(GameTickTimeDelayHelperFactory).startTime)
                AllBinary.previousFrame(this)
                if AllBinary.getFrame(this) == Int32(0)
                    this.loopCount += Int32(1)
                end
            end
        end
        nothing
end


function isComplete(this::ImageArraySpecialAnimation)
        if this.loopCount < this.loopCountTotal || AllBinary.getFrame(this) != Int32(0)
            return false
        else
            return true
        end
end


function paintXY(this::ImageArraySpecialAnimation, graphics, x, y)
        x = AllBinary.getLastHalfWidth(AllBinary.getInstance(DisplayInfoSingleton)) - (AllBinary.getWidth(AllBinary.getImage(this, AllBinary.getIndex(this.circularIndexUtil))) >> Int32(1))
        y = Int32(5)
        AllBinary.paintXY(this, graphics, x, y)
        nothing
end

