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

mutable struct TimedVectorAnimationFactory <: JObject
    TimedVectorAnimationFactory() = new()
end


function initFieldsTimedVectorAnimationFactory(this::TimedVectorAnimationFactory)
    nothing
end

function initTimedVectorAnimationFactory(this::TimedVectorAnimationFactory)
    initFieldsTimedVectorAnimationFactory(this)
end

function newTimedVectorAnimationFactory()
    this = TimedVectorAnimationFactory()
    initTimedVectorAnimationFactory(this)
    this
end


function getInstance(this::TimedVectorAnimationFactory, points, basicColor)
        return newTimedVectorAnimation(points, basicColor, AllBinary.getInstance(AnimationBehavior))
end

