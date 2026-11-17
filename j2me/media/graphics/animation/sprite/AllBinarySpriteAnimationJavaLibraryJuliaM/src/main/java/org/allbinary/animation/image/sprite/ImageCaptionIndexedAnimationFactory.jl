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
# package org.allbinary.animation.image.sprite

mutable struct ImageCaptionIndexedAnimationFactory <: JObject
    animationFactoryImageScaleUtil::Any
    animationFactorySpriteScaleUtil::Any
    captionImage::Any
    spriteMovieImage::Any
    frameWidth::Int32
    frameHeight::Int32
    captionDx::Int32
    captionDy::Int32
    dx::Int32
    dy::Int32
    time::Int32
    soundInterface::Any
    scaleProperties::Any
    animationBehaviorFactory::Any
    ImageCaptionIndexedAnimationFactory() = new()
end


function initFieldsImageCaptionIndexedAnimationFactory(this::ImageCaptionIndexedAnimationFactory)
    this.animationFactoryImageScaleUtil = nothing
    this.animationFactorySpriteScaleUtil = nothing
    this.captionImage = nothing
    this.spriteMovieImage = nothing
    this.frameWidth = Int32(0)
    this.frameHeight = Int32(0)
    this.captionDx = Int32(0)
    this.captionDy = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.time = Int32(0)
    this.soundInterface = nothing
    this.scaleProperties = nothing
    this.animationBehaviorFactory = nothing
    this.animationFactoryImageScaleUtil = AllBinary.getInstance(AnimationFactoryImageScaleUtil)
    this.animationFactorySpriteScaleUtil = AllBinary.getInstance(AnimationFactorySpriteScaleUtil)
    
    
    
    
    
    
    
    
    
    
    this.scaleProperties = staticGet_instance(ScaleProperties)
    
    nothing
end


function initImageCaptionIndexedAnimationFactory(this::ImageCaptionIndexedAnimationFactory, captionImage, spriteMovieImage, soundInterface, frameWidth, frameHeight, captionDx, captionDy, dx, dy, time, animationBehaviorFactory)
        initFieldsImageCaptionIndexedAnimationFactory(this)
        if animationBehaviorFactory === AllBinary.getInstance(AnimationBehaviorFactory)
            AllBinary.log(ForcedLogUtil, "Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)
        end
        this.captionImage = captionImage
        this.spriteMovieImage = spriteMovieImage
        this.frameWidth = frameWidth
        this.frameHeight = frameHeight
        this.captionDx = captionDx
        this.captionDy = captionDy
        this.dx = dx
        this.dy = dy
        this.time = time
        this.soundInterface = soundInterface
        this.animationBehaviorFactory = animationBehaviorFactory
        nothing
end

function newImageCaptionIndexedAnimationFactory(captionImage, spriteMovieImage, soundInterface, frameWidth, frameHeight, captionDx, captionDy, dx, dy, time, animationBehaviorFactory)
    this = ImageCaptionIndexedAnimationFactory()
    initImageCaptionIndexedAnimationFactory(this, captionImage, spriteMovieImage, soundInterface, frameWidth, frameHeight, captionDx, captionDy, dx, dy, time, animationBehaviorFactory)
    this
end


function getInstance(this::ImageCaptionIndexedAnimationFactory, instanceId)
        local scaledImage = AllBinary.createImage(this.animationFactoryImageScaleUtil, this.captionImage, AllBinary.getWidth(this.captionImage), AllBinary.getHeight(this.captionImage), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        local animationInterface = newImageAnimation(scaledImage, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        local sprite = AllBinary.createImage(this.animationFactorySpriteScaleUtil, this.spriteMovieImage, this.frameWidth, this.frameHeight, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        local movieIndexedAnimationInterface = newSpriteIndexedAnimation(sprite, this.spriteMovieImage, AllBinary.getInstance(BasicColorUtil).ZERO_ARRAY, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        local player = AllBinary.getPlayerP(this.soundInterface)
        if player === nothing
            throw(jNewException("Exception", "Sound Was not Initialized"))
        end
        return newCaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, this.captionDx, this.captionDy, this.dx, this.dy, this.time, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end


function setInitialScale(this::ImageCaptionIndexedAnimationFactory, scaleProperties)
        this.scaleProperties = scaleProperties
        nothing
end

