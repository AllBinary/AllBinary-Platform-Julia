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
mutable struct AutoCompoundRotationAnimationInterfaceFactory <: JObject
    AutoCompoundRotationAnimationInterfaceFactory() = new()
end


function initFieldsAutoCompoundRotationAnimationInterfaceFactory(this::AutoCompoundRotationAnimationInterfaceFactory)
    nothing
end


function initAutoCompoundRotationAnimationInterfaceFactory(this::AutoCompoundRotationAnimationInterfaceFactory, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        initCompoundAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        nothing
end

function newAutoCompoundRotationAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this = AutoCompoundRotationAnimationInterfaceFactory()
    initAutoCompoundRotationAnimationInterfaceFactory(this, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    this
end


function createArray(this::AutoCompoundRotationAnimationInterfaceFactory, size)
        return jNewArray(Any, size, nothing)
end


function createAnimation(this::AutoCompoundRotationAnimationInterfaceFactory, animationInterfaceArray)
        return newAutoCompoundRotationAnimation((animationInterfaceArray), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end

