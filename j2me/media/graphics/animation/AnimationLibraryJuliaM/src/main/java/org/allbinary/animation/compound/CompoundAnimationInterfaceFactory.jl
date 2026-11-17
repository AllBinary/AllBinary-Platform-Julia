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

mutable struct CompoundAnimationInterfaceFactory <: JObject
    basicAnimationInterfaceFactoryInterfaceArrayP::Any
    animationBehaviorFactory::Any
    CompoundAnimationInterfaceFactory() = new()
end


function initFieldsCompoundAnimationInterfaceFactory(this::CompoundAnimationInterfaceFactory)
    this.basicAnimationInterfaceFactoryInterfaceArrayP = nothing
    this.animationBehaviorFactory = nothing
    
    
    nothing
end


function initCompoundAnimationInterfaceFactory(this::CompoundAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        initFieldsCompoundAnimationInterfaceFactory(this)
        this.basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray
        this.animationBehaviorFactory = animationBehaviorFactory
        nothing
end

function newCompoundAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this = CompoundAnimationInterfaceFactory()
    initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this
end


function getInstance(this::CompoundAnimationInterfaceFactory, instanceId)
        local size::Int32 = Int32(Base.length(this.basicAnimationInterfaceFactoryInterfaceArrayP))
        local animationInterfaceArray = AllBinary.createArray(this, size)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            animationInterfaceArray[index + 1] = AllBinary.getInstance(this.basicAnimationInterfaceFactoryInterfaceArrayP[index + 1], instanceId)
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.createAnimation(this, animationInterfaceArray)
end


function createArray(this::CompoundAnimationInterfaceFactory, size)
        return AllBinary.getFactoryInstance(NullAnimationFactory).EMPTY_ARRAY
end


function createAnimation(this::CompoundAnimationInterfaceFactory, animationInterfaceArray)
        return AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
end


function getBasicAnimationInterfaceFactoryInterfaceArray(this::CompoundAnimationInterfaceFactory)
        return this.basicAnimationInterfaceFactoryInterfaceArrayP
end


function setInitialScale(this::CompoundAnimationInterfaceFactory, scaleProperties)
        local size::Int32 = Int32(Base.length(this.basicAnimationInterfaceFactoryInterfaceArrayP))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.setInitialScale(this.basicAnimationInterfaceFactoryInterfaceArrayP[index + 1], scaleProperties)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

