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
mutable struct BottomToTopImageAnimation <: JObject
    startHeight::Int32
    currentHeight::Int32
    anchor::Int32
    BottomToTopImageAnimation() = new()
end


function initFieldsBottomToTopImageAnimation(this::BottomToTopImageAnimation)
    this.startHeight = Int32(0)
    this.currentHeight = Int32(0)
    this.anchor = Int32(0)
    this.startHeight = Int32(0)
    this.currentHeight = Int32(0)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initBottomToTopImageAnimation(this::BottomToTopImageAnimation, image, animationBehavior)
        initImageSegmentAnimation(this, image, AllBinary.getArrayInstance(PrimitiveIntUtil), animationBehavior)
        initFieldsBottomToTopImageAnimation(this)
        AllBinary.setFrame(this, AllBinary.getSize(this) - Int32(1))
        nothing
end

function newBottomToTopImageAnimation(image, animationBehavior)
    this = BottomToTopImageAnimation()
    initBottomToTopImageAnimation(this, image, animationBehavior)
    this
end


function nextFrame(this::BottomToTopImageAnimation)
        AllBinary.previousFrame(this)
        AllBinary.update(this)
        nothing
end


function previousFrame(this::BottomToTopImageAnimation)
        AllBinary.nextFrame(this)
        AllBinary.update(this)
        nothing
end


function setFrame(this::BottomToTopImageAnimation, index)
        AllBinary.setFrame(this, index)
        AllBinary.update(this)
        nothing
end


function update(this::BottomToTopImageAnimation)
        this.startHeight = AllBinary.getDrawHeight(this) * AllBinary.getFrame(this) / AllBinary.getSize(this)
        this.currentHeight = AllBinary.getDrawHeight(this) - this.startHeight
        nothing
end


function paintXY(this::BottomToTopImageAnimation, graphics, x, y)
        AllBinary.drawRegion(graphics, AllBinary.getImage(this), AllBinary.getStartX(this), this.startHeight, AllBinary.getDrawWidth(this), this.currentHeight, staticGet_TRANS_NONE(Sprite), x, y + this.startHeight, this.anchor)
        nothing
end

