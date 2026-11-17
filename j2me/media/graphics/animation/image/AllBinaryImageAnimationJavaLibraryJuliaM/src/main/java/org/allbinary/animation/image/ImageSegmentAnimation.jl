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

# extends ImageAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageSegmentAnimation <: JObject
    startX::Int32
    startY::Int32
    drawWidth::Int32
    drawHeight::Int32
    circularIndexUtil::Any
    sequenceArray::Any
    ImageSegmentAnimation() = new()
end


function initFieldsImageSegmentAnimation(this::ImageSegmentAnimation)
    this.startX = Int32(0)
    this.startY = Int32(0)
    this.drawWidth = Int32(0)
    this.drawHeight = Int32(0)
    this.circularIndexUtil = nothing
    this.sequenceArray = nothing
    
    
    
    
    
    
    nothing
end


function initImageSegmentAnimation(this::ImageSegmentAnimation, image, sequenceArray, animationBehavior)
        initImageAnimation(this, image, animationBehavior)
        initFieldsImageSegmentAnimation(this)
        this.startX = Int32(0)
        this.startY = Int32(0)
        this.drawWidth = AllBinary.getWidth(AllBinary.getImage(this))
        this.drawHeight = AllBinary.getHeight(AllBinary.getImage(this))
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, this.drawHeight)
        this.sequenceArray = sequenceArray
        nothing
end

function newImageSegmentAnimation(image, sequenceArray, animationBehavior)
    this = ImageSegmentAnimation()
    initImageSegmentAnimation(this, image, sequenceArray, animationBehavior)
    this
end


function nextFrame(this::ImageSegmentAnimation)
        AllBinary.next(this.circularIndexUtil)
        nothing
end


function previousFrame(this::ImageSegmentAnimation)
        AllBinary.previous(this.circularIndexUtil)
        nothing
end


function setFrame(this::ImageSegmentAnimation, index)
        AllBinary.setIndex(this.circularIndexUtil, index)
        nothing
end


function getFrame(this::ImageSegmentAnimation)
        return AllBinary.getIndex(this.circularIndexUtil)
end


function getSize(this::ImageSegmentAnimation)
        return AllBinary.getSize(this.circularIndexUtil)
end


function setSequence(this::ImageSegmentAnimation, sequenceArray)
        this.sequenceArray = sequenceArray
        nothing
end


function getSequence(this::ImageSegmentAnimation)
        return this.sequenceArray
end


function paintXY(this::ImageSegmentAnimation, graphics, x, y)
        nothing
        nothing
end


function getStartX(this::ImageSegmentAnimation)
        return this.startX
end


function setStartX(this::ImageSegmentAnimation, startX)
        this.startX = startX
        nothing
end


function getStartY(this::ImageSegmentAnimation)
        return this.startY
end


function setStartY(this::ImageSegmentAnimation, startY)
        this.startY = startY
        nothing
end


function getDrawWidth(this::ImageSegmentAnimation)
        return this.drawWidth
end


function setDrawWidth(this::ImageSegmentAnimation, drawWidth)
        this.drawWidth = drawWidth
        nothing
end


function getDrawHeight(this::ImageSegmentAnimation)
        return this.drawHeight
end


function setDrawHeight(this::ImageSegmentAnimation, drawHeight)
        this.drawHeight = drawHeight
        nothing
end

