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
# package org.allbinary.game.physics.acceleration

mutable struct BasicAccelerationProperties <: JObject
    forward::Int32
    reverse::Int32
    BasicAccelerationProperties() = new()
end


function initFieldsBasicAccelerationProperties(this::BasicAccelerationProperties)
    this.forward = Int32(0)
    this.reverse = Int32(0)
    this.forward = Int32(0)
    this.reverse = Int32(0)
    nothing
end


function initBasicAccelerationProperties(this::BasicAccelerationProperties, forward, reverse)
        initFieldsBasicAccelerationProperties(this)
        AllBinary.setForward(this, forward)
        AllBinary.setReverse(this, reverse)
        nothing
end

function newBasicAccelerationProperties(forward, reverse)
    this = BasicAccelerationProperties()
    initBasicAccelerationProperties(this, forward, reverse)
    this
end


function setReverse(this::BasicAccelerationProperties, reverse)
        this.reverse = reverse
        nothing
end


function getReverse(this::BasicAccelerationProperties)
        return this.reverse
end


function setForward(this::BasicAccelerationProperties, forward)
        this.forward = forward
        nothing
end


function getForward(this::BasicAccelerationProperties)
        return this.forward
end

