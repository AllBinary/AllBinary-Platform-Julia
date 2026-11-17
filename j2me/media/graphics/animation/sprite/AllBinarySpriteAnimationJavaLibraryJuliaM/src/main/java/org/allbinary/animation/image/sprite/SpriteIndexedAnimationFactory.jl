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

# extends BaseImageAnimationFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SpriteIndexedAnimationFactory <: JObject
    animationFactorySpriteScaleUtil::Any
    basicColorArray::Any
    SpriteIndexedAnimationFactory() = new()
end


function initFieldsSpriteIndexedAnimationFactory(this::SpriteIndexedAnimationFactory)
    this.animationFactorySpriteScaleUtil = nothing
    this.basicColorArray = nothing
    this.animationFactorySpriteScaleUtil = AllBinary.getInstance(AnimationFactorySpriteScaleUtil)
    this.basicColorArray = AllBinary.getInstance(BasicColorUtil).ZERO_ARRAY
    nothing
end


function createCWHDXY(::Type{SpriteIndexedAnimationFactory}, image, basicColorArray, width, height, dx, dy, animationBehaviorFactory)
        return newSpriteIndexedAnimationFactory(image, basicColorArray, AllBinary.getArrayInstance(PrimitiveIntUtil), width, height, dx, dy, animationBehaviorFactory)
end


function createCWH(::Type{SpriteIndexedAnimationFactory}, image, basicColorArray, width, height, animationBehaviorFactory)
        local spriteIndexedAnimationFactory = newSpriteIndexedAnimationFactory(image, basicColorArray, AllBinary.getArrayInstance(PrimitiveIntUtil), width, height, Int32(0), Int32(0), animationBehaviorFactory)
        AllBinary.initHWH(spriteIndexedAnimationFactory)
        return spriteIndexedAnimationFactory
end


function createWH(::Type{SpriteIndexedAnimationFactory}, image, width, height, animationBehaviorFactory)
        return newSpriteIndexedAnimationFactory(image, AllBinary.getInstance(BasicColorUtil).ZERO_ARRAY, AllBinary.getArrayInstance(PrimitiveIntUtil), width, height, Int32(0), Int32(0), animationBehaviorFactory)
end


function initSpriteIndexedAnimationFactory(this::SpriteIndexedAnimationFactory, image, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initFieldsSpriteIndexedAnimationFactory(this)
        this.basicColorArray = basicColorArray
        nothing
end

function newSpriteIndexedAnimationFactory(image, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    this = SpriteIndexedAnimationFactory()
    initSpriteIndexedAnimationFactory(this, image, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    this
end


function initHWH(this::SpriteIndexedAnimationFactory)
        this.animationFactoryInitializationVisitor.dx = -(this.animationFactoryInitializationVisitor.width >> Int32(2))
        this.animationFactoryInitializationVisitor.dy = -(this.animationFactoryInitializationVisitor.height >> Int32(2))
        if AllBinary.isAndroid(AndroidUtil)
            this.animationFactoryInitializationVisitor.dx += Int32(3)
        end
        nothing
end


function getInstance(this::SpriteIndexedAnimationFactory, instanceId)
        local sprite = AllBinary.createImage(this.animationFactorySpriteScaleUtil, AllBinary.getImage(this), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != Int32(0) || this.animationFactoryInitializationVisitor.dy != Int32(0)
            return newAdjustedSpriteIndexedAnimation(sprite, AllBinary.getImage(this), this.basicColorArray, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            return newSpriteIndexedAnimation(sprite, AllBinary.getImage(this), this.basicColorArray, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        end
end


function getInstanceAnimation(this::SpriteIndexedAnimationFactory, animationInterface)
        return AllBinary.getInstance(this, Int32(0))
end

