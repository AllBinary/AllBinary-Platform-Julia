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

#TWB - Adjustments should be done in the resource creation and not at the animation level
mutable struct PooledImageArrayRotationAnimationFactory <: JObject
    allBinaryImageRotationAnimationInfo::Any
    animationBehaviorFactory::Any
    PooledImageArrayRotationAnimationFactory() = new()
end


function initFieldsPooledImageArrayRotationAnimationFactory(this::PooledImageArrayRotationAnimationFactory)
    this.allBinaryImageRotationAnimationInfo = nothing
    this.animationBehaviorFactory = nothing
    this.allBinaryImageRotationAnimationInfo = AllBinary.getInstance(NullUtil).NULL_OBJECT
    
    nothing
end


function createFactory(::Type{PooledImageArrayRotationAnimationFactory}, image, animationBehaviorFactory)
        local totalAngle::Int32 = ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32)
        local angleIncrement::Int32 = (totalAngle ÷ AllBinary.getGameControlFidelity(AllBinary.getInstance(GameConfigurationCentral)))
        return newPooledImageArrayRotationAnimationFactory(image, AllBinary.getWidth(image), AllBinary.getHeight(image), -(AllBinary.getWidth(image) >> Int32(2)), -(AllBinary.getHeight(image) >> Int32(2)), angleIncrement, animationBehaviorFactory)
end


function createDXY(::Type{PooledImageArrayRotationAnimationFactory}, image, dx, dy, animationBehaviorFactory)
        local totalAngle::Int32 = ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32)
        local angleIncrement::Int32 = (totalAngle ÷ AllBinary.getGameControlFidelity(AllBinary.getInstance(GameConfigurationCentral)))
        return newPooledImageArrayRotationAnimationFactory(image, AllBinary.getWidth(image), AllBinary.getHeight(image), dx, dy, angleIncrement, animationBehaviorFactory)
end


function initPooledImageArrayRotationAnimationFactory(this::PooledImageArrayRotationAnimationFactory, image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
        initFieldsPooledImageArrayRotationAnimationFactory(this)
        this.animationBehaviorFactory = animationBehaviorFactory
        local totalAngle::Int32 = ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32)
        local imageArray = AllBinary.generate(AllBinary.getInstance(ImageToRotationImageArrayUtil), image, angleIncrement, totalAngle)
        this.allBinaryImageRotationAnimationInfo = newImageArrayRotationAnimationInfo(imageArray, angleIncrement, totalAngle, dx, dy)
        nothing
end

function newPooledImageArrayRotationAnimationFactory(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
    this = PooledImageArrayRotationAnimationFactory()
    initPooledImageArrayRotationAnimationFactory(this, image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
    this
end


function getInstance(this::PooledImageArrayRotationAnimationFactory, instanceId)
        return AllBinary.createAdjustedImageArrayRotationAnimationInfo(AdjustedImageArrayRotationAnimation, this.allBinaryImageRotationAnimationInfo, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end


function setInitialScale(this::PooledImageArrayRotationAnimationFactory, scaleProperties)
        nothing
        nothing
end

