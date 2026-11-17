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
mutable struct ImageArrayAnimation <: JObject
    imageArray::Any
    totalFrames::Int32
    circularIndexUtil::Any
    anchor::Int32
    ImageArrayAnimation() = new()
end


function initFieldsImageArrayAnimation(this::ImageArrayAnimation)
    this.imageArray = nothing
    this.totalFrames = Int32(0)
    this.circularIndexUtil = nothing
    this.anchor = Int32(0)
    this.imageArray = staticGet_NULL_IMAGE_ARRAY(NullImage)
    this.totalFrames = Int32(0)
    this.circularIndexUtil = staticGet_NULL_CIRCULAR_INDEX_UTIL(CircularIndexUtil)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initImageArrayAnimation(this::ImageArrayAnimation, imageArray, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsImageArrayAnimation(this)
        AllBinary.setImageArray(this, imageArray)
        nothing
end

function newImageArrayAnimation(imageArray, animationBehavior)
    this = ImageArrayAnimation()
    initImageArrayAnimation(this, imageArray, animationBehavior)
    this
end


function getAnimationSize(this::ImageArrayAnimation)
        return AllBinary.getSize(this)
end


function nextFrame(this::ImageArrayAnimation)
        AllBinary.next(this.circularIndexUtil)
        nothing
end


function previousFrame(this::ImageArrayAnimation)
        AllBinary.previous(this.circularIndexUtil)
        nothing
end


function setFrame(this::ImageArrayAnimation, index)
        AllBinary.setIndex(this.circularIndexUtil, index)
        nothing
end


function getFrame(this::ImageArrayAnimation)
        return AllBinary.getIndex(this.circularIndexUtil)
end


function getSize(this::ImageArrayAnimation)
        return this.totalFrames
end


function setSequence(this::ImageArrayAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::ImageArrayAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function getImage(this::ImageArrayAnimation, index)
        return this.imageArray[index + 1]
end


function getImageArray(this::ImageArrayAnimation)
        return this.imageArray
end


function setImageArray(this::ImageArrayAnimation, imageArray)
        this.imageArray = imageArray
        this.totalFrames = Int32(Base.length(imageArray))
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, this.totalFrames)
        nothing
end


function paintXY(this::ImageArrayAnimation, graphics, x, y)
        AllBinary.drawImage(graphics, this.imageArray[AllBinary.getIndex(this.circularIndexUtil) + 1], x, y, this.anchor)
        nothing
end

