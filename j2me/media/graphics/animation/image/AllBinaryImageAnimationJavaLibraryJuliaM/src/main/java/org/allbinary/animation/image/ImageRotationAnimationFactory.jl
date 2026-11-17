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
mutable struct ImageRotationAnimationFactory <: JObject
    angleIncrement::Int16
    ImageRotationAnimationFactory() = new()
end


function initFieldsImageRotationAnimationFactory(this::ImageRotationAnimationFactory)
    this.angleIncrement = Int16(0)
    
    nothing
end


function initImageRotationAnimationFactory(this::ImageRotationAnimationFactory, image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, AllBinary.getArrayInstance(PrimitiveIntUtil), width, height, Int32(0), Int32(0), animationBehaviorFactory)
        initFieldsImageRotationAnimationFactory(this)
        this.angleIncrement = angleIncrement
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
        nothing
end

function newImageRotationAnimationFactory(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
    this = ImageRotationAnimationFactory()
    initImageRotationAnimationFactory(this, image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
    this
end


function getInstance(this::ImageRotationAnimationFactory, instanceId)
        if this.animationFactoryInitializationVisitor.dx != Int32(0) || this.animationFactoryInitializationVisitor.dy != Int32(0)
            AllBinary.processAdjust(this.animationFactoryImageScaleUtil, this)
            return newAdjustedImageBaseRotationAnimation(AllBinary.getImage(this), AllBinary.getInstance(AngleInfo, this.angleIncrement), AllBinary.getInstance(AngleFactory).TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            return newImageBaseRotationAnimation(AllBinary.getImage(this), AllBinary.getInstance(AngleInfo, this.angleIncrement), AllBinary.getInstance(AngleFactory).TOTAL_ANGLE, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        end
end


function getAngleIncrementP(this::ImageRotationAnimationFactory)
        return this.angleIncrement
end

