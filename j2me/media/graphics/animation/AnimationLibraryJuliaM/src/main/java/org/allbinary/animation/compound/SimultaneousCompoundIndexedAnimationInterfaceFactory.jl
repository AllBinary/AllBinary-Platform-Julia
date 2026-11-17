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

# extends CompoundAnimationInterfaceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SimultaneousCompoundIndexedAnimationInterfaceFactory <: JObject
    SimultaneousCompoundIndexedAnimationInterfaceFactory() = new()
end


function initFieldsSimultaneousCompoundIndexedAnimationInterfaceFactory(this::SimultaneousCompoundIndexedAnimationInterfaceFactory)
    nothing
end


function initSimultaneousCompoundIndexedAnimationInterfaceFactory(this::SimultaneousCompoundIndexedAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        nothing
end

function newSimultaneousCompoundIndexedAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this = SimultaneousCompoundIndexedAnimationInterfaceFactory()
    initSimultaneousCompoundIndexedAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this
end


function createArray(this::SimultaneousCompoundIndexedAnimationInterfaceFactory, size)
        return jNewArray(Any, size, nothing)
end


function createAnimation(this::SimultaneousCompoundIndexedAnimationInterfaceFactory, animationArray)
        return newSimultaneousCompoundIndexedAnimation(animationArray, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end

