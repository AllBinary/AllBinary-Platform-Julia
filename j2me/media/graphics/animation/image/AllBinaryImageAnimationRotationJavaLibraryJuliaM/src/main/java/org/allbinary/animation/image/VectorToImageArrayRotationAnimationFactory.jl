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
mutable struct VectorToImageArrayRotationAnimationFactory <: JObject
    imageArray::Any
    angleIncrement::Int32
    VectorToImageArrayRotationAnimationFactory() = new()
end


function initFieldsVectorToImageArrayRotationAnimationFactory(this::VectorToImageArrayRotationAnimationFactory)
    this.imageArray = nothing
    this.angleIncrement = Int32(0)
    this.imageArray = staticGet_NULL_IMAGE_ARRAY(NullImage)
    this.angleIncrement = Int32(0)
    nothing
end


function initVectorToImageArrayRotationAnimationFactory(this::VectorToImageArrayRotationAnimationFactory, vectorInfo, basicColor, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, AllBinary.getInstanceTranslate(AllBinary.getInstance(AnimationFrameToImageUtil), AllBinary.getWidth(vectorInfo), AllBinary.getHeight(vectorInfo), AllBinary.createVectorAnimation(VectorAnimation, AllBinary.getPoints(vectorInfo), basicColor, AllBinary.getOrCreateInstance(animationBehaviorFactory))), AllBinary.getArrayInstance(PrimitiveIntUtil), Int32(0), Int32(0), Int32(0), Int32(0), animationBehaviorFactory)
        initFieldsVectorToImageArrayRotationAnimationFactory(this)
        AllBinary.init(this)
        nothing
end

function newVectorToImageArrayRotationAnimationFactory(vectorInfo, basicColor, animationBehaviorFactory)
    this = VectorToImageArrayRotationAnimationFactory()
    initVectorToImageArrayRotationAnimationFactory(this, vectorInfo, basicColor, animationBehaviorFactory)
    this
end


function init(this::VectorToImageArrayRotationAnimationFactory)
        local angleFactory = AllBinary.getInstance(AngleFactory)
        this.angleIncrement = angleFactory.TOTAL_ANGLE / AllBinary.getGameControlFidelity(AllBinary.getInstance(GameConfigurationCentral))
        this.imageArray = AllBinary.generate(AllBinary.getInstance(ImageToRotationImageArrayUtil), AllBinary.getImage(this), AllBinary.getAngleIncrement(this), ((angleFactory.TOTAL_ANGLE) % Int32))
        nothing
end


function getInstance(this::VectorToImageArrayRotationAnimationFactory, instanceId)
        if this.animationFactoryInitializationVisitor.dx != Int32(0) || this.animationFactoryInitializationVisitor.dy != Int32(0)
            return newAdjustedImageArrayRotationAnimation(this.imageArray, AllBinary.getInstance(AngleInfo, ((AllBinary.getAngleIncrement(this)) % Int16)), ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            return AllBinary.createAnimation(AdjustedImageArrayRotationAnimation, this.imageArray, AllBinary.getInstance(AngleInfo, ((this.angleIncrement) % Int16)), ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        end
end


function getAngleIncrement(this::VectorToImageArrayRotationAnimationFactory)
        return this.angleIncrement
end


function setInitialScale(this::VectorToImageArrayRotationAnimationFactory, scaleProperties)
        nothing
        nothing
end

