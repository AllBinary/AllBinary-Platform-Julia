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
# package org.allbinary.physics.movement

mutable struct NoMovementFactory <: JObject
    movement::Any
    NoMovementFactory() = new()
end

const NoMovementFactory_instanceValue = Ref{Any}(nothing)
const NoMovementFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{NoMovementFactory})
    if !NoMovementFactory_instanceSet[]
        NoMovementFactory_instanceSet[] = true
        NoMovementFactory_instanceValue[] = newNoMovementFactory()
    end
    NoMovementFactory_instanceValue[]
end
function staticSet_instance(::Type{NoMovementFactory}, value)
    NoMovementFactory_instanceSet[] = true
    NoMovementFactory_instanceValue[] = value
end

function initFieldsNoMovementFactory(this::NoMovementFactory)
    this.movement = nothing
    this.movement = newMovement()
    nothing
end

function initNoMovementFactory(this::NoMovementFactory)
    initFieldsNoMovementFactory(this)
end

function newNoMovementFactory()
    this = NoMovementFactory()
    initNoMovementFactory(this)
    this
end


function getInstance(::Type{NoMovementFactory})
        return staticGet_instance(NoMovementFactory)
end


function getMovmentInstance(this::NoMovementFactory)
        return this.movement
end

