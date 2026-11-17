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
mutable struct ColorCompositeSpriteIndexedAnimationFactory <: JObject
    animationFactorySpriteScaleUtil::Any
    basicColorArray::Any
    ColorCompositeSpriteIndexedAnimationFactory() = new()
end


function initFieldsColorCompositeSpriteIndexedAnimationFactory(this::ColorCompositeSpriteIndexedAnimationFactory)
    this.animationFactorySpriteScaleUtil = nothing
    this.basicColorArray = nothing
    this.animationFactorySpriteScaleUtil = AllBinary.getInstance(AnimationFactorySpriteScaleUtil)
    
    nothing
end


function initColorCompositeSpriteIndexedAnimationFactory(this::ColorCompositeSpriteIndexedAnimationFactory, image, basicColorArray, width, height, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, AllBinary.getArrayInstance(PrimitiveIntUtil), width, height, Int32(0), Int32(0), animationBehaviorFactory)
        initFieldsColorCompositeSpriteIndexedAnimationFactory(this)
        this.basicColorArray = basicColorArray
        nothing
end

function newColorCompositeSpriteIndexedAnimationFactory(image, basicColorArray, width, height, animationBehaviorFactory)
    this = ColorCompositeSpriteIndexedAnimationFactory()
    initColorCompositeSpriteIndexedAnimationFactory(this, image, basicColorArray, width, height, animationBehaviorFactory)
    this
end


function getInstance(this::ColorCompositeSpriteIndexedAnimationFactory, instanceId)
        local sprite = AllBinary.createImage(this.animationFactorySpriteScaleUtil, AllBinary.getImage(this), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        return newSpriteIndexedAnimation(sprite, AllBinary.getImage(this), this.basicColorArray, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end


function getInstanceAnimation(this::ColorCompositeSpriteIndexedAnimationFactory, animationInterface)
        return AllBinary.getInstance(this, Int32(0))
end

