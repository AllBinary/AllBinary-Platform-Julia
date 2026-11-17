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

# extends Animation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CaptionAnimation <: JObject
    animationInterface::Any
    overlayAnimationInterface::Any
    captionDx::Int32
    captionDy::Int32
    dx::Int32
    dy::Int32
    CaptionAnimation() = new()
end


function initFieldsCaptionAnimation(this::CaptionAnimation)
    this.animationInterface = nothing
    this.overlayAnimationInterface = nothing
    this.captionDx = Int32(0)
    this.captionDy = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    
    
    
    
    
    
    nothing
end


function initCaptionAnimation(this::CaptionAnimation, animationInterface, overlayAnimationInterface, captionDx, captionDy, dx, dy)
        initAnimation(this)
        initFieldsCaptionAnimation(this)
        this.animationInterface = animationInterface
        this.overlayAnimationInterface = overlayAnimationInterface
        this.captionDx = captionDx
        this.captionDy = captionDy
        this.dx = dx
        this.dy = dy
        nothing
end

function newCaptionAnimation(animationInterface, overlayAnimationInterface, captionDx, captionDy, dx, dy)
    this = CaptionAnimation()
    initCaptionAnimation(this, animationInterface, overlayAnimationInterface, captionDx, captionDy, dx, dy)
    this
end


function nextFrame(this::CaptionAnimation)
        nothing
        nothing
end


function paintXY(this::CaptionAnimation, graphics, x, y)
        AllBinary.paintXY(this.animationInterface, graphics, x + this.captionDx, y + this.captionDy)
        AllBinary.paintXY(this.overlayAnimationInterface, graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy)
        nothing
end


function paintThreedXYZ(this::CaptionAnimation, graphics, x, y, z)
        AllBinary.paintThreedXYZ(this.animationInterface, graphics, x + this.captionDx, y + this.captionDy, z)
        AllBinary.paintThreedXYZ(this.overlayAnimationInterface, graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy, z)
        nothing
end

