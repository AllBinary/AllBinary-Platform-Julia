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

mutable struct ImageArrayAnimationFactory <: JObject
    dx::Int32
    dy::Int32
    imageArray::Any
    animationBehaviorFactory::Any
    ImageArrayAnimationFactory() = new()
end


function initFieldsImageArrayAnimationFactory(this::ImageArrayAnimationFactory)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.imageArray = nothing
    this.animationBehaviorFactory = nothing
    this.dx = Int32(0)
    this.dy = Int32(0)
    
    
    nothing
end


function initImageArrayAnimationFactory(this::ImageArrayAnimationFactory, imageArray, dx, dy, animationBehaviorFactory)
        initFieldsImageArrayAnimationFactory(this)
        this.imageArray = imageArray
        this.animationBehaviorFactory = animationBehaviorFactory
        this.dx = dx
        this.dy = dy
        nothing
end

function newImageArrayAnimationFactory(imageArray, dx, dy, animationBehaviorFactory)
    this = ImageArrayAnimationFactory()
    initImageArrayAnimationFactory(this, imageArray, dx, dy, animationBehaviorFactory)
    this
end


function getInstance(this::ImageArrayAnimationFactory, instanceId)
        if this.dx != Int32(0) || this.dy != Int32(0)
            return newAdjustedImageArrayAnimation(this.imageArray, this.dx, this.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            return newImageArrayAnimation(this.imageArray, AllBinary.getInstance(AnimationBehavior))
        end
end


function setInitialScale(this::ImageArrayAnimationFactory, scaleProperties)
        nothing
        nothing
end

