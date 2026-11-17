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
mutable struct RightToLeftImageAnimationFactory <: JObject
    RightToLeftImageAnimationFactory() = new()
end


function initFieldsRightToLeftImageAnimationFactory(this::RightToLeftImageAnimationFactory)
    nothing
end


function initRightToLeftImageAnimationFactory(this::RightToLeftImageAnimationFactory, image, dx, dy, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, AllBinary.getArrayInstance(PrimitiveIntUtil), AllBinary.getWidth(image), AllBinary.getHeight(image), dx, dy, animationBehaviorFactory)
        nothing
end

function newRightToLeftImageAnimationFactory(image, dx, dy, animationBehaviorFactory)
    this = RightToLeftImageAnimationFactory()
    initRightToLeftImageAnimationFactory(this, image, dx, dy, animationBehaviorFactory)
    this
end


function getInstance(this::RightToLeftImageAnimationFactory, instanceId)
        local scaledImage = AllBinary.createImage(this.animationFactoryImageScaleUtil, AllBinary.getImage(this), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if this.animationFactoryInitializationVisitor.dx != Int32(0) || this.animationFactoryInitializationVisitor.dy != Int32(0)
            AllBinary.processAdjust(this.animationFactoryImageScaleUtil, this)
            return newAdjustedRightToLeftImageAnimation(scaledImage, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            return newRightToLeftImageAnimation(scaledImage, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        end
end

