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

mutable struct NullIndexedAnimationFactory <: JObject
    NULL_ANIMATION::Any
    NullIndexedAnimationFactory() = new()
end

const NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYValue = Ref{Any}(nothing)
const NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYSet = Ref(false)
function staticGet_NULL_INDEXED_ANIMATION_ARRAY(::Type{NullIndexedAnimationFactory})
    if !NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYSet[]
        NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYSet[] = true
        NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYValue[] = jNewArray(Any, Int32(0), nothing)
    end
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYValue[]
end
function staticSet_NULL_INDEXED_ANIMATION_ARRAY(::Type{NullIndexedAnimationFactory}, value)
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYSet[] = true
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAYValue[] = value
end
const NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYValue = Ref{Any}(nothing)
const NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYSet = Ref(false)
function staticGet_NULL_INDEXED_ANIMATION_FACTORY(::Type{NullIndexedAnimationFactory})
    if !NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYSet[]
        NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYSet[] = true
        NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYValue[] = newNullIndexedAnimationFactory()
    end
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYValue[]
end
function staticSet_NULL_INDEXED_ANIMATION_FACTORY(::Type{NullIndexedAnimationFactory}, value)
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYSet[] = true
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORYValue[] = value
end

function initFieldsNullIndexedAnimationFactory(this::NullIndexedAnimationFactory)
    this.NULL_ANIMATION = nothing
    this.NULL_ANIMATION = newNullIndexedAnimationInner()
    nothing
end


function initNullIndexedAnimationFactory(this::NullIndexedAnimationFactory)
        initFieldsNullIndexedAnimationFactory(this)
        nothing
        nothing
end

function newNullIndexedAnimationFactory()
    this = NullIndexedAnimationFactory()
    initNullIndexedAnimationFactory(this)
    this
end


function getFactoryInstance(::Type{NullIndexedAnimationFactory})
        return staticGet_NULL_INDEXED_ANIMATION_FACTORY(NullIndexedAnimationFactory)
end


function getInstance(this::NullIndexedAnimationFactory, instanceId)
        return this.NULL_ANIMATION
end


function getInstanceAnimation(this::NullIndexedAnimationFactory, animationInterface)
        return this.NULL_ANIMATION
end


function setInitialScale(this::NullIndexedAnimationFactory, scaleProperties)
        nothing
        nothing
end

