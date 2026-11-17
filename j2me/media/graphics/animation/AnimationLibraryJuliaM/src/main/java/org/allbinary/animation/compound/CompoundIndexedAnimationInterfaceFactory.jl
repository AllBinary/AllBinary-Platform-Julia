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
mutable struct CompoundIndexedAnimationInterfaceFactory <: JObject
    CompoundIndexedAnimationInterfaceFactory() = new()
end


function initFieldsCompoundIndexedAnimationInterfaceFactory(this::CompoundIndexedAnimationInterfaceFactory)
    nothing
end


function initCompoundIndexedAnimationInterfaceFactory(this::CompoundIndexedAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        nothing
end

function newCompoundIndexedAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this = CompoundIndexedAnimationInterfaceFactory()
    initCompoundIndexedAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this
end


function createArray(this::CompoundIndexedAnimationInterfaceFactory, size)
        return jNewArray(Any, size, nothing)
end


function createAnimation(this::CompoundIndexedAnimationInterfaceFactory, animationArray)
        return newCompoundIndexedAnimation(animationArray, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end

