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

mutable struct NullRotationAnimationFactory <: JObject
    NULL_ROTATION_ANIMATION_ARRAY::Any
    NULL_ANIMATION::Any
    NullRotationAnimationFactory() = new()
end

const NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYValue = Ref{Any}(nothing)
const NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYSet = Ref(false)
function staticGet_NULL_ROTATION_ANIMATION_FACTORY(::Type{NullRotationAnimationFactory})
    if !NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYSet[]
        NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYSet[] = true
        NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYValue[] = newNullRotationAnimationFactory()
    end
    NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYValue[]
end
function staticSet_NULL_ROTATION_ANIMATION_FACTORY(::Type{NullRotationAnimationFactory}, value)
    NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYSet[] = true
    NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORYValue[] = value
end

function initFieldsNullRotationAnimationFactory(this::NullRotationAnimationFactory)
    this.NULL_ROTATION_ANIMATION_ARRAY = nothing
    this.NULL_ANIMATION = nothing
    this.NULL_ROTATION_ANIMATION_ARRAY = jNewArray(Any, Int32(0), nothing)
    this.NULL_ANIMATION = newNullRotationAnimation2()
    nothing
end


function initNullRotationAnimationFactory(this::NullRotationAnimationFactory)
        initFieldsNullRotationAnimationFactory(this)
        nothing
        nothing
end

function newNullRotationAnimationFactory()
    this = NullRotationAnimationFactory()
    initNullRotationAnimationFactory(this)
    this
end


function getFactoryInstance(::Type{NullRotationAnimationFactory})
        return staticGet_NULL_ROTATION_ANIMATION_FACTORY(NullRotationAnimationFactory)
end


function getInstance(this::NullRotationAnimationFactory, instanceId)
        return this.NULL_ANIMATION
end


function getInstanceAnimation(this::NullRotationAnimationFactory, animationInterface)
        return this.NULL_ANIMATION
end


function setInitialScale(this::NullRotationAnimationFactory, scaleProperties)
        nothing
        nothing
end

