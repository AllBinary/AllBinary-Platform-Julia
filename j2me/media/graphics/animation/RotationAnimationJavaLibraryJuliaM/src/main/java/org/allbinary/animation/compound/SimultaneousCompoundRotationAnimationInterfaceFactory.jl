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
mutable struct SimultaneousCompoundRotationAnimationInterfaceFactory <: JObject
    SimultaneousCompoundRotationAnimationInterfaceFactory() = new()
end


function initFieldsSimultaneousCompoundRotationAnimationInterfaceFactory(this::SimultaneousCompoundRotationAnimationInterfaceFactory)
    nothing
end


function initSimultaneousCompoundRotationAnimationInterfaceFactory(this::SimultaneousCompoundRotationAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        if animationBehaviorFactory === AllBinary.getInstance(AnimationBehaviorFactory)
            AllBinary.log(ForcedLogUtil, "Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)
        end
        nothing
end

function newSimultaneousCompoundRotationAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this = SimultaneousCompoundRotationAnimationInterfaceFactory()
    initSimultaneousCompoundRotationAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this
end


function createArray(this::SimultaneousCompoundRotationAnimationInterfaceFactory, size)
        return jNewArray(Any, size, nothing)
end


function createAnimation(this::SimultaneousCompoundRotationAnimationInterfaceFactory, animationInterfaceArray)
        return newSimultaneousCompoundRotationAnimation((animationInterfaceArray), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end

