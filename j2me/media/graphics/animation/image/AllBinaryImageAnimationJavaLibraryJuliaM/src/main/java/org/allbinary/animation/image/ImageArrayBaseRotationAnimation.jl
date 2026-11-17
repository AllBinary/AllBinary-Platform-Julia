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

# extends RotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageArrayBaseRotationAnimation <: JObject
    imageModifierUtil::Any
    originalImageArray::Any
    imageArray::Any
    currentImage::Any
    totalFrames::Int32
    anchor::Int32
    ImageArrayBaseRotationAnimation() = new()
end


function initFieldsImageArrayBaseRotationAnimation(this::ImageArrayBaseRotationAnimation)
    this.imageModifierUtil = nothing
    this.originalImageArray = nothing
    this.imageArray = nothing
    this.currentImage = nothing
    this.totalFrames = Int32(0)
    this.anchor = Int32(0)
    this.imageModifierUtil = AllBinary.getInstanceOrCreate(ImageModifierUtil)
    
    this.imageArray = staticGet_NULL_IMAGE_ARRAY(NullImage)
    
    this.totalFrames = Int32(0)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initImageArrayBaseRotationAnimation(this::ImageArrayBaseRotationAnimation, originalImageArray, angleInfo, animationBehavior)
        initRotationAnimation(this, angleInfo, AllBinary.createInstance(CircularIndexUtil, Int32(360) ÷ AllBinary.getAngleIncrement(AllBinary.getAngleIncrementInfo(angleInfo))), animationBehavior)
        initFieldsImageArrayBaseRotationAnimation(this)
        this.originalImageArray = originalImageArray
        AllBinary.setImageArray(this, AllBinary.getImageArray(this.imageModifierUtil, originalImageArray))
        this.currentImage = this.imageArray[AllBinary.getIndex(this.circularIndexUtil) + 1]
        nothing
end

function newImageArrayBaseRotationAnimation(originalImageArray, angleInfo, animationBehavior)
    this = ImageArrayBaseRotationAnimation()
    initImageArrayBaseRotationAnimation(this, originalImageArray, angleInfo, animationBehavior)
    this
end


function getAnimationSize(this::ImageArrayBaseRotationAnimation)
        return AllBinary.getSize(this)
end


function setAlpha(this::ImageArrayBaseRotationAnimation, alpha)
        if this.alphaP != alpha
            AllBinary.setAlpha(this, alpha)
            AllBinary.reset(this.imageModifierUtil)
            local index::Int32 = AllBinary.getIndex(this.circularIndexUtil)
            AllBinary.setAlpha(this.imageModifierUtil, this.originalImageArray[index + 1], this.imageArray[index + 1], index, this.alphaP)
        end
        nothing
end


function nextRotation(this::ImageArrayBaseRotationAnimation)
        AllBinary.nextRotation(this)
        local index::Int32 = AllBinary.getIndex(this.circularIndexUtil)
        AllBinary.setAlpha(this.imageModifierUtil, this.originalImageArray[index + 1], this.imageArray[index + 1], index, this.alphaP)
        this.currentImage = this.imageArray[index + 1]
        nothing
end


function previousRotation(this::ImageArrayBaseRotationAnimation)
        AllBinary.previousRotation(this)
        local index::Int32 = AllBinary.getIndex(this.circularIndexUtil)
        AllBinary.setAlpha(this.imageModifierUtil, this.originalImageArray[index + 1], this.imageArray[index + 1], index, this.alphaP)
        this.currentImage = this.imageArray[index + 1]
        nothing
end


function setFrame(this::ImageArrayBaseRotationAnimation, index2)
        AllBinary.setFrame(this, index2)
        local index::Int32 = AllBinary.getIndex(this.circularIndexUtil)
        AllBinary.setAlpha(this.imageModifierUtil, this.originalImageArray[index + 1], this.imageArray[index + 1], index, this.alphaP)
        this.currentImage = this.imageArray[index + 1]
        nothing
end


function setSequence(this::ImageArrayBaseRotationAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::ImageArrayBaseRotationAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function setImageArray(this::ImageArrayBaseRotationAnimation, imageArray)
        this.imageArray = imageArray
        this.totalFrames = Int32(Base.length(imageArray))
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, this.totalFrames)
        nothing
end


function paintXY(this::ImageArrayBaseRotationAnimation, graphics, x, y)
        AllBinary.drawImage(graphics, this.currentImage, x, y, this.anchor)
        nothing
end


function close(this::ImageArrayBaseRotationAnimation)
        local disposalUtil = AllBinary.getInstance(DisposalUtil)
        local size2::Int32 = Int32(Base.length(this.imageArray))
        let
            local index::Int32 = Int32(0)
            while index < size2
            try
            AllBinary.disposeImage(disposalUtil, this.imageArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        local size::Int32 = Int32(Base.length(this.originalImageArray))
        let
            index = Int32(0)
            while index < size
            try
            AllBinary.disposeImage(disposalUtil, this.originalImageArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.disposeImage(disposalUtil, this.currentImage)
        nothing
end


function finalize(this::ImageArrayBaseRotationAnimation)
        local disposalUtil = AllBinary.getInstance(DisposalUtil)
        local size2::Int32 = Int32(Base.length(this.imageArray))
        let
            local index::Int32 = Int32(0)
            while index < size2
            try
            AllBinary.disposeImage(disposalUtil, this.imageArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        local size::Int32 = Int32(Base.length(this.originalImageArray))
        let
            index = Int32(0)
            while index < size
            try
            AllBinary.disposeImage(disposalUtil, this.originalImageArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.disposeImage(disposalUtil, this.currentImage)
        nothing
end

