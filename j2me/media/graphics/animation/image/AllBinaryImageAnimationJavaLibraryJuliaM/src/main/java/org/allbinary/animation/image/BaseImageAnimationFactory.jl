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

mutable struct BaseImageAnimationFactory <: JObject
    animationFactoryImageScaleUtil::Any
    image::Any
    animationBehaviorFactory::Any
    sequenceArray::Any
    animationFactoryInitializationVisitor::Any
    scaleProperties::Any
    BaseImageAnimationFactory() = new()
end


function initFieldsBaseImageAnimationFactory(this::BaseImageAnimationFactory)
    this.animationFactoryImageScaleUtil = nothing
    this.image = nothing
    this.animationBehaviorFactory = nothing
    this.sequenceArray = nothing
    this.animationFactoryInitializationVisitor = nothing
    this.scaleProperties = nothing
    this.animationFactoryImageScaleUtil = AllBinary.getInstance(AnimationFactoryImageScaleUtil)
    
    
    
    
    this.scaleProperties = staticGet_instance(ScaleProperties)
    nothing
end


function createFactoryBase(::Type{BaseImageAnimationFactory}, image, sequenceArray, width, height, animationBehaviorFactory)
        return newBaseImageAnimationFactory(image, sequenceArray, width, height, Int32(0), Int32(0), animationBehaviorFactory)
end


function initBaseImageAnimationFactory(this::BaseImageAnimationFactory, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initFieldsBaseImageAnimationFactory(this)
        this.animationFactoryInitializationVisitor = newAnimationFactoryInitializationVisitor()
        this.image = image
        this.animationFactoryInitializationVisitor.width = width
        this.animationFactoryInitializationVisitor.height = height
        this.animationBehaviorFactory = animationBehaviorFactory
        this.sequenceArray = sequenceArray
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
        nothing
end

function newBaseImageAnimationFactory(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    this = BaseImageAnimationFactory()
    initBaseImageAnimationFactory(this, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
    this
end


function getInstance(this::BaseImageAnimationFactory, instanceId)
        return AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), instanceId)
end


function getImage(this::BaseImageAnimationFactory)
        return this.image
end


function getSequenceArray(this::BaseImageAnimationFactory)
        return this.sequenceArray
end


function setInitialScale(this::BaseImageAnimationFactory, scaleProperties)
        this.scaleProperties = scaleProperties
        if this.scaleProperties.shouldScale
            this.scaleProperties.scaleWidth = (((this.animationFactoryInitializationVisitor.width * this.scaleProperties.scaleX)) % Int32)
            this.scaleProperties.scaleHeight = (((this.animationFactoryInitializationVisitor.height * this.scaleProperties.scaleY)) % Int32)
        else
            nothing
        end
        nothing
end


function getAnimationFactoryInitializationVisitorP(this::BaseImageAnimationFactory)
        return this.animationFactoryInitializationVisitor
end


function getScalePropertiesP(this::BaseImageAnimationFactory)
        return this.scaleProperties
end


function toString(this::BaseImageAnimationFactory)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local commonLabels = AllBinary.getInstance(CommonLabels)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.toString(this))
        AllBinary.append(stringBuffer, commonLabels.HEIGHT_LABEL)
        AllBinary.appendint(stringBuffer, ((AllBinary.getHeight(this.image)) % Int32))
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, AllBinary.toString(this.animationFactoryInitializationVisitor))
        return AllBinary.toString(stringBuffer)
end

