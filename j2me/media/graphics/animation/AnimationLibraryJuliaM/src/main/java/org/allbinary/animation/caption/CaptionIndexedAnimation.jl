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

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CaptionIndexedAnimation <: JObject
    animationInterface::Any
    movieIndexedAnimationInterface::Any
    captionDx::Int32
    captionDy::Int32
    dx::Int32
    dy::Int32
    time::Int32
    END_EVENT::Any
    timeDelayHelper::Any
    player::Any
    CaptionIndexedAnimation() = new()
end


function initFieldsCaptionIndexedAnimation(this::CaptionIndexedAnimation)
    this.animationInterface = nothing
    this.movieIndexedAnimationInterface = nothing
    this.captionDx = Int32(0)
    this.captionDy = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.time = Int32(0)
    this.END_EVENT = nothing
    this.timeDelayHelper = nothing
    this.player = nothing
    
    
    
    
    
    
    
    
    
    
    nothing
end


function initCaptionIndexedAnimation(this::CaptionIndexedAnimation, animationInterface, movieIndexedAnimationInterface, player, captionDx, captionDy, dx, dy, time, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsCaptionIndexedAnimation(this)
        this.animationInterface = animationInterface
        this.movieIndexedAnimationInterface = movieIndexedAnimationInterface
        this.captionDx = captionDx
        this.captionDy = captionDy
        this.dx = dx
        this.dy = dy
        this.time = time
        this.END_EVENT = newAllBinaryEventObject(this)
        local timePerFrame::Int32 = this.time ÷ AllBinary.getSize(this)
        this.timeDelayHelper = newTimeDelayHelper(timePerFrame)
        this.player = player
        AllBinary.start(this.player)
        nothing
end

function newCaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, captionDx, captionDy, dx, dy, time, animationBehavior)
    this = CaptionIndexedAnimation()
    initCaptionIndexedAnimation(this, animationInterface, movieIndexedAnimationInterface, player, captionDx, captionDy, dx, dy, time, animationBehavior)
    this
end


function nextFrame(this::CaptionIndexedAnimation)
        if AllBinary.isTime(this.timeDelayHelper, AllBinary.getInstance(GameTickTimeDelayHelperFactory).startTime)
            AllBinary.nextFrame(this.movieIndexedAnimationInterface)
        end
        if AllBinary.isLastFrame(this)
            AllBinary.fireEvent(AllBinary.getInstance(AnimationEventHandler), this.END_EVENT)
        end
        nothing
end


function isLastFrame(this::CaptionIndexedAnimation)
        if AllBinary.getFrame(this.movieIndexedAnimationInterface) == AllBinary.getSize(this) - Int32(1)
            return true
        else
            return false
        end
end


function previousFrame(this::CaptionIndexedAnimation)
        AllBinary.previousFrame(this.movieIndexedAnimationInterface)
        nothing
end


function setFrame(this::CaptionIndexedAnimation, index)
        AllBinary.setFrame(this.movieIndexedAnimationInterface, index)
        nothing
end


function getFrame(this::CaptionIndexedAnimation)
        return AllBinary.getFrame(this.movieIndexedAnimationInterface)
end


function getSize(this::CaptionIndexedAnimation)
        return AllBinary.getSize(this.movieIndexedAnimationInterface)
end


function setSequence(this::CaptionIndexedAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::CaptionIndexedAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function paintXY(this::CaptionIndexedAnimation, graphics, x, y)
        AllBinary.paintXY(this.animationInterface, graphics, x + this.captionDx, y + this.captionDy)
        AllBinary.paintXY(this.movieIndexedAnimationInterface, graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy)
        nothing
end


function paintThreedXYZ(this::CaptionIndexedAnimation, graphics, x, y, z)
        AllBinary.paintThreedXYZ(this.animationInterface, graphics, x + this.captionDx, y + this.captionDy, z)
        AllBinary.paintThreedXYZ(this.movieIndexedAnimationInterface, graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy, z)
        nothing
end

