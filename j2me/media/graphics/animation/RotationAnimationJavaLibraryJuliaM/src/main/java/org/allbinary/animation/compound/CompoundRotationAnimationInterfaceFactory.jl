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
mutable struct CompoundRotationAnimationInterfaceFactory <: JObject
    CompoundRotationAnimationInterfaceFactory() = new()
end


function initFieldsCompoundRotationAnimationInterfaceFactory(this::CompoundRotationAnimationInterfaceFactory)
    nothing
end


function initCompoundRotationAnimationInterfaceFactory(this::CompoundRotationAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        if animationBehaviorFactory === AllBinary.getInstance(AnimationBehaviorFactory)
            AllBinary.log(ForcedLogUtil, "Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)
        end
        nothing
end

function newCompoundRotationAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this = CompoundRotationAnimationInterfaceFactory()
    initCompoundRotationAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this
end


function createArray(this::CompoundRotationAnimationInterfaceFactory, size)
        return jNewArray(Any, size, nothing)
end


function createAnimation(this::CompoundRotationAnimationInterfaceFactory, animationInterfaceArray)
        return newCompoundRotationAnimation((animationInterfaceArray), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end

