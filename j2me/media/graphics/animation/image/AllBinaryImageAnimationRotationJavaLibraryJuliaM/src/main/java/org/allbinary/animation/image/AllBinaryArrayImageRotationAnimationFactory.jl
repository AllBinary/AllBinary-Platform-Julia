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
mutable struct AllBinaryArrayImageRotationAnimationFactory <: JObject
    imageArray::Any
    angleIncrement::Int32
    AllBinaryArrayImageRotationAnimationFactory() = new()
end


function initFieldsAllBinaryArrayImageRotationAnimationFactory(this::AllBinaryArrayImageRotationAnimationFactory)
    this.imageArray = nothing
    this.angleIncrement = Int32(0)
    this.imageArray = staticGet_NULL_IMAGE_ARRAY(NullImage)
    
    nothing
end


function createFactory(::Type{AllBinaryArrayImageRotationAnimationFactory}, image, dx, dy)
        local arrayImageRotationAnimationFactory = newAllBinaryArrayImageRotationAnimationFactory(image, AllBinary.getWidth(image), AllBinary.getHeight(image), AllBinary.getInstance(AngleFactory).TOTAL_ANGLE / AllBinary.getGameControlFidelity(AllBinary.getInstance(GameConfigurationCentral)), AllBinary.getInstance(AnimationBehaviorFactory))
        AllBinary.initDXY(arrayImageRotationAnimationFactory, dx, dy)
        return arrayImageRotationAnimationFactory
end


function createFactoryA(::Type{AllBinaryArrayImageRotationAnimationFactory}, image, dx, dy, angleIncrement)
        local arrayImageRotationAnimationFactory = newAllBinaryArrayImageRotationAnimationFactory(image, AllBinary.getWidth(image), AllBinary.getHeight(image), angleIncrement, AllBinary.getInstance(AnimationBehaviorFactory))
        AllBinary.initDXY(arrayImageRotationAnimationFactory, dx, dy)
        return arrayImageRotationAnimationFactory
end


function initAllBinaryArrayImageRotationAnimationFactory(this::AllBinaryArrayImageRotationAnimationFactory, image, width, height, angleIncrement, animationBehaviorFactory)
        initBaseImageAnimationFactory(this, image, AllBinary.getArrayInstance(PrimitiveIntUtil), width, height, Int32(0), Int32(0), animationBehaviorFactory)
        initFieldsAllBinaryArrayImageRotationAnimationFactory(this)
        this.angleIncrement = angleIncrement
        AllBinary.init(this)
        nothing
end

function newAllBinaryArrayImageRotationAnimationFactory(image, width, height, angleIncrement, animationBehaviorFactory)
    this = AllBinaryArrayImageRotationAnimationFactory()
    initAllBinaryArrayImageRotationAnimationFactory(this, image, width, height, angleIncrement, animationBehaviorFactory)
    this
end


function init(this::AllBinaryArrayImageRotationAnimationFactory)
        AllBinary.setImageArray(this, AllBinary.generate(AllBinary.getInstance(ImageToRotationImageArrayUtil), AllBinary.getImage(this), AllBinary.getAngleIncrement(this), ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32)))
        nothing
end


function initDXY(this::AllBinaryArrayImageRotationAnimationFactory, dx, dy)
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
        this.animationFactoryInitializationVisitor.originalDx = dx
        this.animationFactoryInitializationVisitor.originalDy = dy
        nothing
end


function getInstance(this::AllBinaryArrayImageRotationAnimationFactory, instanceId)
        local scaledImageArray = jNewArray(Any, Int32(Base.length(this.imageArray)), nothing)
        local size::Int32 = Int32(Base.length(scaledImageArray))
        local image = AllBinary.getImage(this)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            scaledImageArray[index + 1] = AllBinary.createImage(this.animationFactoryImageScaleUtil, image, AllBinary.getWidth(image), AllBinary.getHeight(image), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
            finally
                index += Int32(1)
            end
            end
        end
        if this.animationFactoryInitializationVisitor.dx != Int32(0) || this.animationFactoryInitializationVisitor.dy != Int32(0)
            AllBinary.processAdjust(this.animationFactoryImageScaleUtil, this)
            return newAdjustedImageArrayRotationAnimation(scaledImageArray, AllBinary.getInstance(AngleInfo, ((AllBinary.getAngleIncrement(this)) % Int16)), ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            return newImageArrayRotationAnimation(scaledImageArray, AllBinary.getInstance(AngleInfo, ((AllBinary.getAngleIncrement(this)) % Int16)), ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        end
end


function setImageArray(this::AllBinaryArrayImageRotationAnimationFactory, imageArray)
        this.imageArray = imageArray
        nothing
end


function getAngleIncrement(this::AllBinaryArrayImageRotationAnimationFactory)
        return this.angleIncrement
end

