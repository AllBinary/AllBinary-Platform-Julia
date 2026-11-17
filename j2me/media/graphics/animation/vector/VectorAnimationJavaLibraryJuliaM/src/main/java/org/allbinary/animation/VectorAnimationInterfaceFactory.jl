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

mutable struct VectorAnimationInterfaceFactory <: JObject
    currentPoints::Any
    basicColor::Any
    animationBehaviorFactory::Any
    VectorAnimationInterfaceFactory() = new()
end


function initFieldsVectorAnimationInterfaceFactory(this::VectorAnimationInterfaceFactory)
    this.currentPoints = nothing
    this.basicColor = nothing
    this.animationBehaviorFactory = nothing
    
    this.basicColor = AllBinary.getInstance(BasicColorFactory).WHITE
    
    nothing
end


function initVectorAnimationInterfaceFactory(this::VectorAnimationInterfaceFactory, currentPoints, basicColor, animationBehaviorFactory)
        initFieldsVectorAnimationInterfaceFactory(this)
        this.currentPoints = currentPoints
        AllBinary.setBasicColorP(this, basicColor)
        this.animationBehaviorFactory = animationBehaviorFactory
        nothing
end

function newVectorAnimationInterfaceFactory(currentPoints, basicColor, animationBehaviorFactory)
    this = VectorAnimationInterfaceFactory()
    initVectorAnimationInterfaceFactory(this, currentPoints, basicColor, animationBehaviorFactory)
    this
end


function getInstance(this::VectorAnimationInterfaceFactory, instanceId)
        return newVectorAnimation(this.currentPoints, AllBinary.getBasicColorP(this), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end


function setBasicColorP(this::VectorAnimationInterfaceFactory, basicColor)
        this.basicColor = basicColor
        nothing
end


function getBasicColorP(this::VectorAnimationInterfaceFactory)
        return this.basicColor
end


function setInitialScale(this::VectorAnimationInterfaceFactory, scaleProperties)
        nothing
        nothing
end

