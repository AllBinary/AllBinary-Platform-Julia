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
# package org.allbinary.animation.compound

mutable struct SimultaneousCompoundIndexAnimationInterfaceFactory <: JObject
    basicAnimationInterfaceFactoryInterfaceArray::Any
    animationBehaviorFactory::Any
    SimultaneousCompoundIndexAnimationInterfaceFactory() = new()
end


function initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory(this::SimultaneousCompoundIndexAnimationInterfaceFactory)
    this.basicAnimationInterfaceFactoryInterfaceArray = nothing
    this.animationBehaviorFactory = nothing
    
    
    nothing
end


function initSimultaneousCompoundIndexAnimationInterfaceFactory(this::SimultaneousCompoundIndexAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory(this)
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        this.animationBehaviorFactory = animationBehaviorFactory
        nothing
end

function newSimultaneousCompoundIndexAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this = SimultaneousCompoundIndexAnimationInterfaceFactory()
    initSimultaneousCompoundIndexAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this
end


function getInstance(this::SimultaneousCompoundIndexAnimationInterfaceFactory, instanceId)
        local size::Int32 = Int32(Base.length(this.basicAnimationInterfaceFactoryInterfaceArray))
        local animationInterfaceArray = jNewArray(Any, size, nothing)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            animationInterfaceArray[index + 1] = (AllBinary.getInstance(this.basicAnimationInterfaceFactoryInterfaceArray[index + 1], instanceId))
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.getOrCreate(this, animationInterfaceArray)
end


function getOrCreate(this::SimultaneousCompoundIndexAnimationInterfaceFactory, animationInterfaceArray)
        return newSimultaneousCompoundIndexAnimation(animationInterfaceArray, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end


function getBasicAnimationInterfaceFactoryInterfaceArray(this::SimultaneousCompoundIndexAnimationInterfaceFactory)
        return this.basicAnimationInterfaceFactoryInterfaceArray
end


function setInitialScale(this::SimultaneousCompoundIndexAnimationInterfaceFactory, scaleProperties)
        nothing
        nothing
end

