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
mutable struct LeftToRightImageAnimation <: JObject
    currentWidth::Int32
    anchor::Int32
    LeftToRightImageAnimation() = new()
end


function initFieldsLeftToRightImageAnimation(this::LeftToRightImageAnimation)
    this.currentWidth = Int32(0)
    this.anchor = Int32(0)
    
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initLeftToRightImageAnimation(this::LeftToRightImageAnimation, image, sequenceArray, animationBehavior)
        initImageSegmentAnimation(this, image, sequenceArray, animationBehavior)
        initFieldsLeftToRightImageAnimation(this)
        this.currentWidth = Int32(0)
        if AllBinary.getSequence(this)[Int32(0) + 1] == -Int32(1)
            AllBinary.setFrame(this, AllBinary.getSize(this) - Int32(1))
        end
        nothing
end

function newLeftToRightImageAnimation(image, sequenceArray, animationBehavior)
    this = LeftToRightImageAnimation()
    initLeftToRightImageAnimation(this, image, sequenceArray, animationBehavior)
    this
end


function nextFrame(this::LeftToRightImageAnimation)
        if AllBinary.getSequence(this)[Int32(0) + 1] == -Int32(1)
            AllBinary.previousFrame(this)
        else
            AllBinary.nextFrame(this)
        end
        AllBinary.update(this)
        nothing
end


function previousFrame(this::LeftToRightImageAnimation)
        if AllBinary.getSequence(this)[Int32(0) + 1] == -Int32(1)
            AllBinary.nextFrame(this)
        else
            AllBinary.previousFrame(this)
        end
        AllBinary.update(this)
        nothing
end


function setFrame(this::LeftToRightImageAnimation, index)
        AllBinary.setFrame(this, index)
        AllBinary.update(this)
        nothing
end


function update(this::LeftToRightImageAnimation)
        this.currentWidth = AllBinary.getDrawWidth(this) * AllBinary.getFrame(this) / AllBinary.getSize(this)
        nothing
end


function paintXY(this::LeftToRightImageAnimation, graphics, x, y)
        AllBinary.drawRegion(graphics, AllBinary.getImage(this), AllBinary.getStartX(this), AllBinary.getStartY(this), this.currentWidth, AllBinary.getDrawHeight(this), staticGet_TRANS_NONE(Sprite), x, y, this.anchor)
        nothing
end

