# Generated Code Do Not Modify
# package org.allbinary.animation

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullIndexedAnimation <: JObject
    NullIndexedAnimation() = new()
end


function initFieldsNullIndexedAnimation(this::NullIndexedAnimation)
    nothing
end


function initNullIndexedAnimation(this::NullIndexedAnimation, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        nothing
end

function newNullIndexedAnimation(animationBehavior)
    this = NullIndexedAnimation()
    initNullIndexedAnimation(this, animationBehavior)
    this
end


function getAnimationSize(this::NullIndexedAnimation)
        return Int32(0)
end

