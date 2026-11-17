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

# extends BaseImageAnimationFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TopToBottomImageAnimationFactory <: JObject
    TopToBottomImageAnimationFactory() = new()
end


function initFieldsTopToBottomImageAnimationFactory(this::TopToBottomImageAnimationFactory)
    nothing
end


function initTopToBottomImageAnimationFactory(this::TopToBottomImageAnimationFactory, image, sequenceArray, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, sequenceArray, AllBinary.getWidth(image), AllBinary.getHeight(image), Int32(0), Int32(0), animationBehaviorFactory)
        nothing
end

function newTopToBottomImageAnimationFactory(image, sequenceArray, animationBehaviorFactory)
    this = TopToBottomImageAnimationFactory()
    initTopToBottomImageAnimationFactory(this, image, sequenceArray, animationBehaviorFactory)
    this
end


function getInstance(this::TopToBottomImageAnimationFactory, instanceId)
        local scaledImage = AllBinary.createImage(this.animationFactoryImageScaleUtil, AllBinary.getImage(this), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        return newTopToBottomImageAnimation(scaledImage, AllBinary.getSequenceArray(this), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end

