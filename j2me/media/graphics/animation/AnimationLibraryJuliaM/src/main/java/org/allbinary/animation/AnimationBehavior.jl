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

mutable struct AnimationBehavior <: JObject
    AnimationBehavior() = new()
end

const AnimationBehavior_instanceValue = Ref{Any}(nothing)
const AnimationBehavior_instanceSet = Ref(false)
function staticGet_instance(::Type{AnimationBehavior})
    if !AnimationBehavior_instanceSet[]
        AnimationBehavior_instanceSet[] = true
        AnimationBehavior_instanceValue[] = newAnimationBehavior()
    end
    AnimationBehavior_instanceValue[]
end
function staticSet_instance(::Type{AnimationBehavior}, value)
    AnimationBehavior_instanceSet[] = true
    AnimationBehavior_instanceValue[] = value
end

function initFieldsAnimationBehavior(this::AnimationBehavior)
    nothing
end

function initAnimationBehavior(this::AnimationBehavior)
    initFieldsAnimationBehavior(this)
end

function newAnimationBehavior()
    this = AnimationBehavior()
    initAnimationBehavior(this)
    this
end


function getInstance(::Type{AnimationBehavior})
        return staticGet_instance(AnimationBehavior)
end


function reset(this::AnimationBehavior)
        nothing
        nothing
end

