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

# extends AnimationBehaviorFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct IndexedAnimationBehaviorFactory <: JObject
    frameDelayTime::Int64
    loopTotal::Int32
    IndexedAnimationBehaviorFactory() = new()
end


function initFieldsIndexedAnimationBehaviorFactory(this::IndexedAnimationBehaviorFactory)
    this.frameDelayTime = Int64(0)
    this.loopTotal = Int32(0)
    
    
    nothing
end


function initIndexedAnimationBehaviorFactory(this::IndexedAnimationBehaviorFactory, loopTotal, frameDelayTime)
        initAnimationBehaviorFactory(this)
        initFieldsIndexedAnimationBehaviorFactory(this)
        this.loopTotal = loopTotal
        this.frameDelayTime = frameDelayTime
        nothing
end

function newIndexedAnimationBehaviorFactory(loopTotal, frameDelayTime)
    this = IndexedAnimationBehaviorFactory()
    initIndexedAnimationBehaviorFactory(this, loopTotal, frameDelayTime)
    this
end


function getOrCreateInstance(this::IndexedAnimationBehaviorFactory)
        return newIndexedAnimationBehavior(this.loopTotal, this.frameDelayTime)
end

