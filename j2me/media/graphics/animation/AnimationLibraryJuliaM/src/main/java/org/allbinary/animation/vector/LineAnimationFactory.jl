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
# package org.allbinary.animation.vector

mutable struct LineAnimationFactory <: JObject
    basicColor::Any
    LineAnimationFactory() = new()
end


function initFieldsLineAnimationFactory(this::LineAnimationFactory)
    this.basicColor = nothing
    
    nothing
end


function initLineAnimationFactory(this::LineAnimationFactory, basicColor)
        initFieldsLineAnimationFactory(this)
        this.basicColor = basicColor
        nothing
end

function newLineAnimationFactory(basicColor)
    this = LineAnimationFactory()
    initLineAnimationFactory(this, basicColor)
    this
end


function getInstance(this::LineAnimationFactory, instanceId)
        return newLineAnimation(this.basicColor)
end


function setInitialScale(this::LineAnimationFactory, scaleProperties)
        nothing
        nothing
end

