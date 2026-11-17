#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.animation.image

# extends BaseImageAnimationFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageAnimationFactory <: JObject
    ImageAnimationFactory() = new()
end


function initFieldsImageAnimationFactory(this::ImageAnimationFactory)
    nothing
end


function createFactory(::Type{ImageAnimationFactory}, image)
        return newImageAnimationFactory(image, AllBinary.getWidth(image), AllBinary.getHeight(image), Int32(0), Int32(0), AllBinary.getInstance(AnimationBehaviorFactory))
end


function initImageAnimationFactory(this::ImageAnimationFactory, image, width, height, dx, dy, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, AllBinary.getArrayInstance(PrimitiveIntUtil), width, height, dx, dy, animationBehaviorFactory)
        nothing
end

function newImageAnimationFactory(image, width, height, dx, dy, animationBehaviorFactory)
    this = ImageAnimationFactory()
    initImageAnimationFactory(this, image, width, height, dx, dy, animationBehaviorFactory)
    this
end


function getInstance(this::ImageAnimationFactory, instanceId)
        local scaledImage = AllBinary.createImage(this.animationFactoryImageScaleUtil, AllBinary.getImage(this), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        local openGLUtil = AllBinary.getInstance(OpenGLUtil)
        scaledImage = AllBinary.addImage(openGLUtil, scaledImage)
        if this.animationFactoryInitializationVisitor.dx != Int32(0) || this.animationFactoryInitializationVisitor.dy != Int32(0)
            AllBinary.processAdjust(this.animationFactoryImageScaleUtil, this)
            return newAdjustedImageAnimation(scaledImage, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            return newImageAnimation(scaledImage, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        end
end

