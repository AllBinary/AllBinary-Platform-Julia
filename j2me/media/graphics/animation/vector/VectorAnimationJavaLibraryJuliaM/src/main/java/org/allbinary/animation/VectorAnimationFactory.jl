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

mutable struct VectorAnimationFactory <: JObject
    VectorAnimationFactory() = new()
end


function initFieldsVectorAnimationFactory(this::VectorAnimationFactory)
    nothing
end

function initVectorAnimationFactory(this::VectorAnimationFactory)
    initFieldsVectorAnimationFactory(this)
end

function newVectorAnimationFactory()
    this = VectorAnimationFactory()
    initVectorAnimationFactory(this)
    this
end


function getInstance(this::VectorAnimationFactory, points, basicColor)
        return newVectorAnimation(points, basicColor, AllBinary.getInstance(AnimationBehavior))
end

