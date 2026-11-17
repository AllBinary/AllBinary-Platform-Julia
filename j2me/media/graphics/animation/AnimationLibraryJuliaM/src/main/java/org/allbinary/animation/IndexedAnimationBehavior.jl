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

# extends AnimationBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct IndexedAnimationBehavior <: JObject
    frameDelayTime::Int64
    loopTotal::Int32
    elapsedTime::Int64
    loopIndex::Int32
    IndexedAnimationBehavior() = new()
end


function initFieldsIndexedAnimationBehavior(this::IndexedAnimationBehavior)
    this.frameDelayTime = Int64(0)
    this.loopTotal = Int32(0)
    this.elapsedTime = Int64(0)
    this.loopIndex = Int32(0)
    
    
    this.elapsedTime = Int64(0)
    this.loopIndex = Int32(0)
    nothing
end


function initIndexedAnimationBehavior(this::IndexedAnimationBehavior, loopTotal, frameDelayTime)
        initAnimationBehavior(this)
        initFieldsIndexedAnimationBehavior(this)
        this.loopTotal = loopTotal
        this.frameDelayTime = frameDelayTime
        nothing
end

function newIndexedAnimationBehavior(loopTotal, frameDelayTime)
    this = IndexedAnimationBehavior()
    initIndexedAnimationBehavior(this, loopTotal, frameDelayTime)
    this
end


function reset(this::IndexedAnimationBehavior)
        this.loopIndex = Int32(0)
        nothing
end

