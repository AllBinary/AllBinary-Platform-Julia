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
mutable struct TopToBottomImageAnimation <: JObject
    currentHeight::Int32
    anchor::Int32
    TopToBottomImageAnimation() = new()
end


function initFieldsTopToBottomImageAnimation(this::TopToBottomImageAnimation)
    this.currentHeight = Int32(0)
    this.anchor = Int32(0)
    
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initTopToBottomImageAnimation(this::TopToBottomImageAnimation, image, sequenceArray, animationBehavior)
        initImageSegmentAnimation(this, image, sequenceArray, animationBehavior)
        initFieldsTopToBottomImageAnimation(this)
        this.currentHeight = Int32(0)
        if AllBinary.getSequence(this)[Int32(0) + 1] == -Int32(1)
            AllBinary.setFrame(this, AllBinary.getSize(this) - Int32(1))
        end
        nothing
end

function newTopToBottomImageAnimation(image, sequenceArray, animationBehavior)
    this = TopToBottomImageAnimation()
    initTopToBottomImageAnimation(this, image, sequenceArray, animationBehavior)
    this
end


function nextFrame(this::TopToBottomImageAnimation)
        if AllBinary.getSequence(this)[Int32(0) + 1] == -Int32(1)
            AllBinary.previousFrame(this)
        else
            AllBinary.nextFrame(this)
        end
        AllBinary.update(this)
        nothing
end


function previousFrame(this::TopToBottomImageAnimation)
        if AllBinary.getSequence(this)[Int32(0) + 1] == -Int32(1)
            AllBinary.nextFrame(this)
        else
            AllBinary.previousFrame(this)
        end
        AllBinary.update(this)
        nothing
end


function setFrame(this::TopToBottomImageAnimation, index)
        AllBinary.setFrame(this, index)
        AllBinary.update(this)
        nothing
end


function update(this::TopToBottomImageAnimation)
        this.currentHeight = AllBinary.getDrawHeight(this) * AllBinary.getFrame(this) / AllBinary.getSize(this)
        nothing
end


function paintXY(this::TopToBottomImageAnimation, graphics, x, y)
        AllBinary.drawRegion(graphics, AllBinary.getImage(this), AllBinary.getStartX(this), AllBinary.getStartY(this), AllBinary.getDrawWidth(this), this.currentHeight, staticGet_TRANS_NONE(Sprite), x, y, this.anchor)
        nothing
end

