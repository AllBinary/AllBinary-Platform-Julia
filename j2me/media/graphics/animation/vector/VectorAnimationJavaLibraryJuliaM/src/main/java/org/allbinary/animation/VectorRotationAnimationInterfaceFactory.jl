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
# package org.allbinary.animation

mutable struct VectorRotationAnimationInterfaceFactory <: JObject
    currentPoints::Any
    basicColor::Any
    animationBehaviorFactory::Any
    VectorRotationAnimationInterfaceFactory() = new()
end


function initFieldsVectorRotationAnimationInterfaceFactory(this::VectorRotationAnimationInterfaceFactory)
    this.currentPoints = nothing
    this.basicColor = nothing
    this.animationBehaviorFactory = nothing
    this.currentPoints = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY_ARRAY
    this.basicColor = AllBinary.getInstance(BasicColorFactory).WHITE
    
    nothing
end


function initVectorRotationAnimationInterfaceFactory(this::VectorRotationAnimationInterfaceFactory, currentPoints, basicColor, animationBehaviorFactory)
        initFieldsVectorRotationAnimationInterfaceFactory(this)
        this.currentPoints = currentPoints
        AllBinary.setBasicColorP(this, basicColor)
        this.animationBehaviorFactory = animationBehaviorFactory
        nothing
end

function newVectorRotationAnimationInterfaceFactory(currentPoints, basicColor, animationBehaviorFactory)
    this = VectorRotationAnimationInterfaceFactory()
    initVectorRotationAnimationInterfaceFactory(this, currentPoints, basicColor, animationBehaviorFactory)
    this
end


function getInstance(this::VectorRotationAnimationInterfaceFactory, instanceId)
        return newVectorRotationAnimation(this.currentPoints, AllBinary.getBasicColorP(this), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end


function setBasicColorP(this::VectorRotationAnimationInterfaceFactory, basicColor)
        this.basicColor = basicColor
        nothing
end


function getBasicColorP(this::VectorRotationAnimationInterfaceFactory)
        return this.basicColor
end


function setInitialScale(this::VectorRotationAnimationInterfaceFactory, scaleProperties)
        nothing
        nothing
end

