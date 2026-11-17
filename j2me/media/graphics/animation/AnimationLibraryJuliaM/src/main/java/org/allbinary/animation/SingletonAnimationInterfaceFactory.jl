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

mutable struct SingletonAnimationInterfaceFactory <: JObject
    animationInterface::Any
    SingletonAnimationInterfaceFactory() = new()
end


function initFieldsSingletonAnimationInterfaceFactory(this::SingletonAnimationInterfaceFactory)
    this.animationInterface = nothing
    
    nothing
end


function initSingletonAnimationInterfaceFactory(this::SingletonAnimationInterfaceFactory, animationInterface)
        initFieldsSingletonAnimationInterfaceFactory(this)
        this.animationInterface = animationInterface
        nothing
end

function newSingletonAnimationInterfaceFactory(animationInterface)
    this = SingletonAnimationInterfaceFactory()
    initSingletonAnimationInterfaceFactory(this, animationInterface)
    this
end


function getInstance(this::SingletonAnimationInterfaceFactory, instanceId)
        return this.animationInterface
end


function getInstanceAnimation(this::SingletonAnimationInterfaceFactory, animationInterface)
        return this.animationInterface
end


function setInitialScale(this::SingletonAnimationInterfaceFactory, scaleProperties)
        nothing
        nothing
end

