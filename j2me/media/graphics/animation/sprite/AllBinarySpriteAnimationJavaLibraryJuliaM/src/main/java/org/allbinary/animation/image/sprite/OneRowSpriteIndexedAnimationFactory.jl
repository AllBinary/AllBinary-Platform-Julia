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
mutable struct OneRowSpriteIndexedAnimationFactory <: JObject
    animationFactorySpriteScaleUtil::Any
    OneRowSpriteIndexedAnimationFactory() = new()
end


function initFieldsOneRowSpriteIndexedAnimationFactory(this::OneRowSpriteIndexedAnimationFactory)
    this.animationFactorySpriteScaleUtil = nothing
    this.animationFactorySpriteScaleUtil = AllBinary.getInstance(AnimationFactorySpriteScaleUtil)
    nothing
end


function createFactoryDX(::Type{OneRowSpriteIndexedAnimationFactory}, image, dx, animationBehaviorFactory)
        local oneRowSpriteIndexedAnimationFactory = newOneRowSpriteIndexedAnimationFactory(image, AllBinary.getArrayInstance(PrimitiveIntUtil), AllBinary.getHeight(image), AllBinary.getHeight(image), Int32(0), Int32(0), animationBehaviorFactory)
        AllBinary.initW(oneRowSpriteIndexedAnimationFactory, dx)
        return oneRowSpriteIndexedAnimationFactory
end


function createFactoryDXY(::Type{OneRowSpriteIndexedAnimationFactory}, image, dx, dy, animationBehaviorFactory)
        local oneRowSpriteIndexedAnimationFactory = newOneRowSpriteIndexedAnimationFactory(image, AllBinary.getArrayInstance(PrimitiveIntUtil), AllBinary.getHeight(image), AllBinary.getHeight(image), Int32(0), Int32(0), animationBehaviorFactory)
        AllBinary.init(oneRowSpriteIndexedAnimationFactory, dx, dy)
        return oneRowSpriteIndexedAnimationFactory
end


function createFactoryWH(::Type{OneRowSpriteIndexedAnimationFactory}, image, width, height, animationBehaviorFactory)
        return newOneRowSpriteIndexedAnimationFactory(image, AllBinary.getArrayInstance(PrimitiveIntUtil), width, height, Int32(0), Int32(0), animationBehaviorFactory)
end


function createFactory(::Type{OneRowSpriteIndexedAnimationFactory}, image, animationBehaviorFactory)
        return newOneRowSpriteIndexedAnimationFactory(image, AllBinary.getArrayInstance(PrimitiveIntUtil), AllBinary.getHeight(image), AllBinary.getHeight(image), Int32(0), Int32(0), animationBehaviorFactory)
end


function initOneRowSpriteIndexedAnimationFactory(this::OneRowSpriteIndexedAnimationFactory, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initFieldsOneRowSpriteIndexedAnimationFactory(this)
        nothing
end

function newOneRowSpriteIndexedAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    this = OneRowSpriteIndexedAnimationFactory()
    initOneRowSpriteIndexedAnimationFactory(this, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    this
end


function init(this::OneRowSpriteIndexedAnimationFactory, dx, dy)
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
        nothing
end


function initW(this::OneRowSpriteIndexedAnimationFactory, dx)
        AllBinary.init(this, dx, Int32(0))
        this.animationFactoryInitializationVisitor.dx += -(this.animationFactoryInitializationVisitor.width >> Int32(2))
        nothing
end


function getInstance(this::OneRowSpriteIndexedAnimationFactory, instanceId)
        local sprite = AllBinary.createImage(this.animationFactorySpriteScaleUtil, AllBinary.getImage(this), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != Int32(0) || this.animationFactoryInitializationVisitor.dy != Int32(0)
            return newAdjustedSpriteIndexedAnimation(sprite, AllBinary.getImage(this), AllBinary.getInstance(BasicColorUtil).ZERO_ARRAY, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            return newSpriteIndexedAnimation(sprite, AllBinary.getImage(this), AllBinary.getInstance(BasicColorUtil).ZERO_ARRAY, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        end
end

