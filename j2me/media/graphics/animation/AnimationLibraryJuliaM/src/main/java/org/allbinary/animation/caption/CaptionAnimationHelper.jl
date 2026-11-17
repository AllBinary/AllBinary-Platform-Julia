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
# package org.allbinary.animation.caption

# extends CaptionAnimationHelperBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CaptionAnimationHelper <: JObject
    timeHelper::Any
    textAnimation::Any
    captionAnimation::Any
    animation::Any
    CaptionAnimationHelper() = new()
end


function initFieldsCaptionAnimationHelper(this::CaptionAnimationHelper)
    this.timeHelper = nothing
    this.textAnimation = nothing
    this.captionAnimation = nothing
    this.animation = nothing
    this.timeHelper = newTimeDelayHelper(Int32(620))
    this.textAnimation = newTextAnimation(AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(AnimationBehavior))
    
    this.animation = AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
    nothing
end


function initCaptionAnimationHelper(this::CaptionAnimationHelper, captionAnimation, captionDx, captionDy, dx, dy)
        initCaptionAnimationHelperBase(this)
        initFieldsCaptionAnimationHelper(this)
        this.captionAnimation = newCaptionAnimation(captionAnimation, this.textAnimation, captionDx, captionDy, dx, dy)
        nothing
end

function newCaptionAnimationHelper(captionAnimation, captionDx, captionDy, dx, dy)
    this = CaptionAnimationHelper()
    initCaptionAnimationHelper(this, captionAnimation, captionDx, captionDy, dx, dy)
    this
end


function isShowing(this::CaptionAnimationHelper)
        if this.animation === this.captionAnimation
            return true
        else
            return false
        end
end


function tick(this::CaptionAnimationHelper)
        if AllBinary.isTime(this.timeHelper, AllBinary.getInstance(GameTickTimeDelayHelperFactory).startTime)
            this.animation = AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
        end
        nothing
end


function update(this::CaptionAnimationHelper, message, basicColor)
        AllBinary.setBasicColorP(this.textAnimation, basicColor)
        AllBinary.setText(this.textAnimation, message)
        this.animation = this.captionAnimation
        AllBinary.setStartTimeTNT(this.timeHelper)
        nothing
end


function paintXY(this::CaptionAnimationHelper, graphics, x, y)
        AllBinary.paintXY(this.animation, graphics, x, y)
        nothing
end

