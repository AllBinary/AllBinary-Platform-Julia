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

# extends NullIndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullIndexedAnimationInner <: JObject
    NullIndexedAnimationInner() = new()
end


function initFieldsNullIndexedAnimationInner(this::NullIndexedAnimationInner)
    nothing
end


function initNullIndexedAnimationInner(this::NullIndexedAnimationInner)
        initNullIndexedAnimation(this, newIndexedAnimationBehavior(Int32(1), Int32(250)))
        nothing
end

function newNullIndexedAnimationInner()
    this = NullIndexedAnimationInner()
    initNullIndexedAnimationInner(this)
    this
end


function paintXY(this::NullIndexedAnimationInner, graphics, x, y)
        nothing
        nothing
end

