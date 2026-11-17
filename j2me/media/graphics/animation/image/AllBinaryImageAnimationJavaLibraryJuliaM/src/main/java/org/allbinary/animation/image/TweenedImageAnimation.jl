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

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TweenedImageAnimation <: JObject
    image::Any
    dx::Int32
    dy::Int32
    totalFrames::Int32
    circularIndexUtil::Any
    anchor::Int32
    TweenedImageAnimation() = new()
end


function initFieldsTweenedImageAnimation(this::TweenedImageAnimation)
    this.image = nothing
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.totalFrames = Int32(0)
    this.circularIndexUtil = nothing
    this.anchor = Int32(0)
    
    
    
    
    
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initTweenedImageAnimation(this::TweenedImageAnimation, image, dx, dy, totalFrames, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsTweenedImageAnimation(this)
        this.image = image
        this.dx = dx
        this.dy = dy
        this.totalFrames = totalFrames
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, this.totalFrames)
        nothing
end

function newTweenedImageAnimation(image, dx, dy, totalFrames, animationBehavior)
    this = TweenedImageAnimation()
    initTweenedImageAnimation(this, image, dx, dy, totalFrames, animationBehavior)
    this
end


function getAnimationSize(this::TweenedImageAnimation)
        return AllBinary.getSize(this)
end


function nextFrame(this::TweenedImageAnimation)
        AllBinary.next(this.circularIndexUtil)
        nothing
end


function previousFrame(this::TweenedImageAnimation)
        AllBinary.previous(this.circularIndexUtil)
        nothing
end


function setFrame(this::TweenedImageAnimation, index)
        AllBinary.setIndex(this.circularIndexUtil, index)
        nothing
end


function getFrame(this::TweenedImageAnimation)
        return AllBinary.getIndex(this.circularIndexUtil)
end


function getSize(this::TweenedImageAnimation)
        return this.totalFrames
end


function setSequence(this::TweenedImageAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::TweenedImageAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function paintXY(this::TweenedImageAnimation, graphics, x, y)
        local frame::Int32 = AllBinary.getFrame(this)
        local currentX::Int32 = this.dx * frame
        local currentY::Int32 = this.dy * frame
        AllBinary.drawImage(graphics, this.image, x + currentX, y + currentY, this.anchor)
        nothing
end


function close(this::TweenedImageAnimation)
        AllBinary.disposeImage(AllBinary.getInstance(DisposalUtil), this.image)
        nothing
end


function finalize(this::TweenedImageAnimation)
        AllBinary.disposeImage(AllBinary.getInstance(DisposalUtil), this.image)
        nothing
end

