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
# package org.allbinary.animation.special

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SpecialAnimation <: JObject
    SpecialAnimation() = new()
end

const SpecialAnimation_NULL_SPECIAL_ANIMATIONValue = Ref{Any}(nothing)
const SpecialAnimation_NULL_SPECIAL_ANIMATIONSet = Ref(false)
function staticGet_NULL_SPECIAL_ANIMATION(::Type{SpecialAnimation})
    if !SpecialAnimation_NULL_SPECIAL_ANIMATIONSet[]
        SpecialAnimation_NULL_SPECIAL_ANIMATIONSet[] = true
        SpecialAnimation_NULL_SPECIAL_ANIMATIONValue[] = newSpecialAnimation(newIndexedAnimationBehavior(Int32(1), Int32(250)))
    end
    SpecialAnimation_NULL_SPECIAL_ANIMATIONValue[]
end
function staticSet_NULL_SPECIAL_ANIMATION(::Type{SpecialAnimation}, value)
    SpecialAnimation_NULL_SPECIAL_ANIMATIONSet[] = true
    SpecialAnimation_NULL_SPECIAL_ANIMATIONValue[] = value
end

function initFieldsSpecialAnimation(this::SpecialAnimation)
    nothing
end


function getInstance(::Type{SpecialAnimation})
        return staticGet_NULL_SPECIAL_ANIMATION(SpecialAnimation)
end


function initSpecialAnimation(this::SpecialAnimation, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        nothing
end

function newSpecialAnimation(animationBehavior)
    this = SpecialAnimation()
    initSpecialAnimation(this, animationBehavior)
    this
end


function nextFrame(this::SpecialAnimation)
        local indexedAnimationBehavior = ((this.animationBehaviorP))
        indexedAnimationBehavior.loopIndex += 1
        nothing
end


function setLastFrame(this::SpecialAnimation)
        nothing
        nothing
end


function isComplete(this::SpecialAnimation)
        return false
end


function open(this::SpecialAnimation)
        nothing
        nothing
end


function close(this::SpecialAnimation)
        nothing
        nothing
end


function process(this::SpecialAnimation)
        nothing
        nothing
end

