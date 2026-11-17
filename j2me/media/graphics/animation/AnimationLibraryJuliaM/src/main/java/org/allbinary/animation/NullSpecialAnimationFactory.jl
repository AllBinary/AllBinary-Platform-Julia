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

mutable struct NullSpecialAnimationFactory <: JObject
    NullSpecialAnimationFactory() = new()
end

const NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYValue = Ref{Any}(nothing)
const NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYSet = Ref(false)
function staticGet_NULL_SPECIAL_ANIMATION_FACTORY(::Type{NullSpecialAnimationFactory})
    if !NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYSet[]
        NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYSet[] = true
        NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYValue[] = newNullSpecialAnimationFactory()
    end
    NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYValue[]
end
function staticSet_NULL_SPECIAL_ANIMATION_FACTORY(::Type{NullSpecialAnimationFactory}, value)
    NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYSet[] = true
    NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORYValue[] = value
end

function initFieldsNullSpecialAnimationFactory(this::NullSpecialAnimationFactory)
    nothing
end


function initNullSpecialAnimationFactory(this::NullSpecialAnimationFactory)
        initFieldsNullSpecialAnimationFactory(this)
        nothing
        nothing
end

function newNullSpecialAnimationFactory()
    this = NullSpecialAnimationFactory()
    initNullSpecialAnimationFactory(this)
    this
end


function getFactoryInstance(::Type{NullSpecialAnimationFactory})
        return staticGet_NULL_SPECIAL_ANIMATION_FACTORY(NullSpecialAnimationFactory)
end


function getInstance(this::NullSpecialAnimationFactory, instanceId)
        return AllBinary.getInstance(SpecialAnimation)
end


function getInstanceAnimation(this::NullSpecialAnimationFactory, animationInterface)
        return AllBinary.getInstance(SpecialAnimation)
end


function setInitialScale(this::NullSpecialAnimationFactory, scaleProperties)
        nothing
        nothing
end

