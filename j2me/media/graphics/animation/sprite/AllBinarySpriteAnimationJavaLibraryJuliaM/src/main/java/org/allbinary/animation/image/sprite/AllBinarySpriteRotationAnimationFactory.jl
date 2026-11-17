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
mutable struct AllBinarySpriteRotationAnimationFactory <: JObject
    animationFactorySpriteScaleUtil::Any
    AllBinarySpriteRotationAnimationFactory() = new()
end


function initFieldsAllBinarySpriteRotationAnimationFactory(this::AllBinarySpriteRotationAnimationFactory)
    this.animationFactorySpriteScaleUtil = nothing
    this.animationFactorySpriteScaleUtil = AllBinary.getInstance(AnimationFactorySpriteScaleUtil)
    nothing
end


function createWHDY(::Type{AllBinarySpriteRotationAnimationFactory}, image, dx, dy, animationBehaviorFactory)
        local spriteRotationAnimationFactory = newAllBinarySpriteRotationAnimationFactory(image, AllBinary.getArrayInstance(PrimitiveIntUtil), (AllBinary.getHeight(image) >> Int32(2)), (AllBinary.getHeight(image) >> Int32(2)), Int32(0), Int32(0), animationBehaviorFactory)
        AllBinary.initWH(spriteRotationAnimationFactory, dx, dy)
        return spriteRotationAnimationFactory
end


function createWH(::Type{AllBinarySpriteRotationAnimationFactory}, image, animationBehaviorFactory)
        return AllBinary.createWHDY(AllBinarySpriteRotationAnimationFactory, image, Int32(0), Int32(0), animationBehaviorFactory)
end


function createDXY(::Type{AllBinarySpriteRotationAnimationFactory}, image, dx, dy, animationBehaviorFactory)
        local spriteRotationAnimationFactory = newAllBinarySpriteRotationAnimationFactory(image, AllBinary.getArrayInstance(PrimitiveIntUtil), AllBinary.getHeight(image), AllBinary.getHeight(image), Int32(0), Int32(0), animationBehaviorFactory)
        AllBinary.init(spriteRotationAnimationFactory, dx, dy)
        return spriteRotationAnimationFactory
end


function createDXYQ(::Type{AllBinarySpriteRotationAnimationFactory}, image, dx, dy, animationBehaviorFactory)
        local spriteRotationAnimationFactory = newAllBinarySpriteRotationAnimationFactory(image, AllBinary.getArrayInstance(PrimitiveIntUtil), (AllBinary.getHeight(image) >> Int32(2)), (AllBinary.getHeight(image) >> Int32(2)), Int32(0), Int32(0), animationBehaviorFactory)
        AllBinary.init(spriteRotationAnimationFactory, dx, dy)
        return spriteRotationAnimationFactory
end


function createQ(::Type{AllBinarySpriteRotationAnimationFactory}, image, animationBehaviorFactory)
        return newAllBinarySpriteRotationAnimationFactory(image, AllBinary.getArrayInstance(PrimitiveIntUtil), (AllBinary.getHeight(image) >> Int32(2)), (AllBinary.getHeight(image) >> Int32(2)), Int32(0), Int32(0), animationBehaviorFactory)
end


function createWHF(::Type{AllBinarySpriteRotationAnimationFactory}, image, animationBehaviorFactory)
        return newAllBinarySpriteRotationAnimationFactory(image, AllBinary.getArrayInstance(PrimitiveIntUtil), AllBinary.getHeight(image), AllBinary.getHeight(image), Int32(0), Int32(0), animationBehaviorFactory)
end


function initAllBinarySpriteRotationAnimationFactory(this::AllBinarySpriteRotationAnimationFactory, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initFieldsAllBinarySpriteRotationAnimationFactory(this)
        if animationBehaviorFactory === AllBinary.getInstance(AnimationBehaviorFactory)
            AllBinary.log(ForcedLogUtil, "Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)
        end
        nothing
end

function newAllBinarySpriteRotationAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    this = AllBinarySpriteRotationAnimationFactory()
    initAllBinarySpriteRotationAnimationFactory(this, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    this
end


function init(this::AllBinarySpriteRotationAnimationFactory, dx, dy)
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
        nothing
end


function initWH(this::AllBinarySpriteRotationAnimationFactory, dx, dy)
        AllBinary.init(this, dx, dy)
        this.animationFactoryInitializationVisitor.dx += -this.animationFactoryInitializationVisitor.width ÷ Int32(5)
        this.animationFactoryInitializationVisitor.dy += -this.animationFactoryInitializationVisitor.height ÷ Int32(5)
        nothing
end


function getInstance(this::AllBinarySpriteRotationAnimationFactory, instanceId)
        local sprite = AllBinary.createImage(this.animationFactorySpriteScaleUtil, AllBinary.getImage(this), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != Int32(0) || this.animationFactoryInitializationVisitor.dy != Int32(0)
            return newAllBinaryAdjustedSpriteRotationAnimation(sprite, AllBinary.getImage(this), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            return newAllBinarySpriteRotationAnimation(sprite, AllBinary.getImage(this), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        end
end


function getInstanceAnimation(this::AllBinarySpriteRotationAnimationFactory, animationInterface)
        return AllBinary.getInstance(this, Int32(0))
end

