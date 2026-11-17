#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.animation

mutable struct AnimationBehaviorFactory <: JObject
    AnimationBehaviorFactory() = new()
end

const AnimationBehaviorFactory_instanceValue = Ref{Any}(nothing)
const AnimationBehaviorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{AnimationBehaviorFactory})
    if !AnimationBehaviorFactory_instanceSet[]
        AnimationBehaviorFactory_instanceSet[] = true
        AnimationBehaviorFactory_instanceValue[] = newAnimationBehaviorFactory()
    end
    AnimationBehaviorFactory_instanceValue[]
end
function staticSet_instance(::Type{AnimationBehaviorFactory}, value)
    AnimationBehaviorFactory_instanceSet[] = true
    AnimationBehaviorFactory_instanceValue[] = value
end

function initFieldsAnimationBehaviorFactory(this::AnimationBehaviorFactory)
    nothing
end

function initAnimationBehaviorFactory(this::AnimationBehaviorFactory)
    initFieldsAnimationBehaviorFactory(this)
end

function newAnimationBehaviorFactory()
    this = AnimationBehaviorFactory()
    initAnimationBehaviorFactory(this)
    this
end


function getInstance(::Type{AnimationBehaviorFactory})
        return staticGet_instance(AnimationBehaviorFactory)
end


function getOrCreateInstance(this::AnimationBehaviorFactory)
        return AllBinary.getInstance(AnimationBehavior)
end

