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
# package org.allbinary.animation.transition.shake

# extends ShakeAnimationListener: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoShakeAnimationListener <: JObject
    NoShakeAnimationListener() = new()
end

const NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERValue = Ref{Any}(nothing)
const NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERSet = Ref(false)
function staticGet_NO_SHAKE_ANIMATION_LISTENER(::Type{NoShakeAnimationListener})
    if !NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERSet[]
        NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERSet[] = true
        NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERValue[] = newNoShakeAnimationListener()
    end
    NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERValue[]
end
function staticSet_NO_SHAKE_ANIMATION_LISTENER(::Type{NoShakeAnimationListener}, value)
    NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERSet[] = true
    NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERValue[] = value
end

function initFieldsNoShakeAnimationListener(this::NoShakeAnimationListener)
    nothing
end

function initNoShakeAnimationListener(this::NoShakeAnimationListener)
    initShakeAnimationListener(this)
    initFieldsNoShakeAnimationListener(this)
end

function newNoShakeAnimationListener()
    this = NoShakeAnimationListener()
    initNoShakeAnimationListener(this)
    this
end

