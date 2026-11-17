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

# extends BasicConstantVelocityMovement: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoBasicConstantVelocityMovement <: JObject
    NoBasicConstantVelocityMovement() = new()
end


function initFieldsNoBasicConstantVelocityMovement(this::NoBasicConstantVelocityMovement)
    nothing
end


function initNoBasicConstantVelocityMovement(this::NoBasicConstantVelocityMovement)
        initBasicConstantVelocityMovement(this, staticGet_ZERO_BIGDECIMAL(BasicDecimal), newBasicVelocityProperties())
        nothing
end

function newNoBasicConstantVelocityMovement()
    this = NoBasicConstantVelocityMovement()
    initNoBasicConstantVelocityMovement(this)
    this
end


function process(this::NoBasicConstantVelocityMovement, layer)
        nothing
        nothing
end

