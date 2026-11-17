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

mutable struct NullAnimationFactory <: JObject
    NULL_ANIMATION::Any
    EMPTY_ARRAY::Any
    NullAnimationFactory() = new()
end

const NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYValue = Ref{Any}(nothing)
const NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYSet = Ref(false)
function staticGet_NULL_NOT_FOR_USE_ANIMATION_FACTORY(::Type{NullAnimationFactory})
    if !NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYSet[]
        NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYSet[] = true
        NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYValue[] = newNullAnimationFactory()
    end
    NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYValue[]
end
function staticSet_NULL_NOT_FOR_USE_ANIMATION_FACTORY(::Type{NullAnimationFactory}, value)
    NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYSet[] = true
    NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORYValue[] = value
end
const NullAnimationFactory_NULL_ANIMATION_FACTORYValue = Ref{Any}(nothing)
const NullAnimationFactory_NULL_ANIMATION_FACTORYSet = Ref(false)
function staticGet_NULL_ANIMATION_FACTORY(::Type{NullAnimationFactory})
    if !NullAnimationFactory_NULL_ANIMATION_FACTORYSet[]
        NullAnimationFactory_NULL_ANIMATION_FACTORYSet[] = true
        NullAnimationFactory_NULL_ANIMATION_FACTORYValue[] = newNullAnimationFactory()
    end
    NullAnimationFactory_NULL_ANIMATION_FACTORYValue[]
end
function staticSet_NULL_ANIMATION_FACTORY(::Type{NullAnimationFactory}, value)
    NullAnimationFactory_NULL_ANIMATION_FACTORYSet[] = true
    NullAnimationFactory_NULL_ANIMATION_FACTORYValue[] = value
end

function initFieldsNullAnimationFactory(this::NullAnimationFactory)
    this.NULL_ANIMATION = nothing
    this.EMPTY_ARRAY = nothing
    this.NULL_ANIMATION = newAnimation() #= Java anonymous class body: implement it as a named type
        

function paintXY(this::NullAnimationFactory, graphics, x, y)
            nothing
        nothing
end =#
    this.EMPTY_ARRAY = jNewArray(Any, Int32(0), nothing)
    nothing
end


function initNullAnimationFactory(this::NullAnimationFactory)
        initFieldsNullAnimationFactory(this)
        nothing
        nothing
end

function newNullAnimationFactory()
    this = NullAnimationFactory()
    initNullAnimationFactory(this)
    this
end


function getFactoryInstance(::Type{NullAnimationFactory})
        return staticGet_NULL_ANIMATION_FACTORY(NullAnimationFactory)
end


function getInstance(this::NullAnimationFactory, instanceId)
        return this.NULL_ANIMATION
end


function getInstanceAnimation(this::NullAnimationFactory, animationInterface)
        return this.NULL_ANIMATION
end


function setInitialScale(this::NullAnimationFactory, scaleProperties)
        nothing
        nothing
end

