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

# extends VectorAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TimedVectorAnimation <: JObject
    timeElapsedHelper::Any
    TimedVectorAnimation() = new()
end


function initFieldsTimedVectorAnimation(this::TimedVectorAnimation)
    this.timeElapsedHelper = nothing
    this.timeElapsedHelper = newTimeDelayHelper(Int32(200))
    nothing
end


function initTimedVectorAnimation(this::TimedVectorAnimation, currentPoints, basicColor, animationBehavior)
        initVectorAnimation(this, currentPoints, basicColor, animationBehavior)
        initFieldsTimedVectorAnimation(this)
        nothing
end

function newTimedVectorAnimation(currentPoints, basicColor, animationBehavior)
    this = TimedVectorAnimation()
    initTimedVectorAnimation(this, currentPoints, basicColor, animationBehavior)
    this
end


function nextFrame(this::TimedVectorAnimation)
        if AllBinary.isTime(this.timeElapsedHelper, AllBinary.getInstance(GameTickTimeDelayHelperFactory).startTime)
            AllBinary.nextFrame(this)
        end
        nothing
end

