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

# extends ImageSegmentAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RightToLeftImageAnimation <: JObject
    startWidth::Int32
    currentWidth::Int32
    anchor::Int32
    RightToLeftImageAnimation() = new()
end


function initFieldsRightToLeftImageAnimation(this::RightToLeftImageAnimation)
    this.startWidth = Int32(0)
    this.currentWidth = Int32(0)
    this.anchor = Int32(0)
    this.startWidth = Int32(0)
    this.currentWidth = Int32(0)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initRightToLeftImageAnimation(this::RightToLeftImageAnimation, image, animationBehavior)
        initImageSegmentAnimation(this, image, AllBinary.getArrayInstance(PrimitiveIntUtil), animationBehavior)
        initFieldsRightToLeftImageAnimation(this)
        AllBinary.setFrame(this, AllBinary.getSize(this) - Int32(1))
        nothing
end

function newRightToLeftImageAnimation(image, animationBehavior)
    this = RightToLeftImageAnimation()
    initRightToLeftImageAnimation(this, image, animationBehavior)
    this
end


function nextFrame(this::RightToLeftImageAnimation)
        AllBinary.previousFrame(this)
        AllBinary.update(this)
        nothing
end


function previousFrame(this::RightToLeftImageAnimation)
        AllBinary.nextFrame(this)
        AllBinary.update(this)
        nothing
end


function setFrame(this::RightToLeftImageAnimation, index)
        AllBinary.setFrame(this, index)
        AllBinary.update(this)
        nothing
end


function update(this::RightToLeftImageAnimation)
        this.startWidth = AllBinary.getDrawWidth(this) * AllBinary.getFrame(this) / AllBinary.getSize(this)
        this.currentWidth = AllBinary.getDrawWidth(this) - this.startWidth
        nothing
end


function paintXY(this::RightToLeftImageAnimation, graphics, x, y)
        AllBinary.drawRegion(graphics, AllBinary.getImage(this), this.startWidth, AllBinary.getStartY(this), this.currentWidth, AllBinary.getDrawHeight(this), staticGet_TRANS_NONE(Sprite), x + this.startWidth, y, this.anchor)
        nothing
end

