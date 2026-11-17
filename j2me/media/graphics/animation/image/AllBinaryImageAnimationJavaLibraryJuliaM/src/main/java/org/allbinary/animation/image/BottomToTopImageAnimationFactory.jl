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
mutable struct BottomToTopImageAnimationFactory <: JObject
    BottomToTopImageAnimationFactory() = new()
end


function initFieldsBottomToTopImageAnimationFactory(this::BottomToTopImageAnimationFactory)
    nothing
end


function initBottomToTopImageAnimationFactory(this::BottomToTopImageAnimationFactory, image, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, AllBinary.getArrayInstance(PrimitiveIntUtil), AllBinary.getWidth(image), AllBinary.getHeight(image), Int32(0), Int32(0), animationBehaviorFactory)
        nothing
end

function newBottomToTopImageAnimationFactory(image, animationBehaviorFactory)
    this = BottomToTopImageAnimationFactory()
    initBottomToTopImageAnimationFactory(this, image, animationBehaviorFactory)
    this
end


function getInstance(this::BottomToTopImageAnimationFactory, instanceId)
        local scaledImage = AllBinary.createImage(this.animationFactoryImageScaleUtil, AllBinary.getImage(this), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        return newBottomToTopImageAnimation(scaledImage, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end

