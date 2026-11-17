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
mutable struct BasicGravityConstantVelocityMovement <: JObject
    gravityUtil::Any
    BasicGravityConstantVelocityMovement() = new()
end


function initFieldsBasicGravityConstantVelocityMovement(this::BasicGravityConstantVelocityMovement)
    this.gravityUtil = nothing
    this.gravityUtil = AllBinary.getInstance(GravityUtil)
    nothing
end


function initBasicGravityConstantVelocityMovement(this::BasicGravityConstantVelocityMovement, speedBasicDecimal)
        initBasicConstantVelocityMovement(this, speedBasicDecimal, newVelocityProperties(((AllBinary.getUnscaled(speedBasicDecimal)) % Int32), ((AllBinary.getUnscaled(speedBasicDecimal)) % Int32)))
        initFieldsBasicGravityConstantVelocityMovement(this)
        nothing
end

function newBasicGravityConstantVelocityMovement(speedBasicDecimal)
    this = BasicGravityConstantVelocityMovement()
    initBasicGravityConstantVelocityMovement(this, speedBasicDecimal)
    this
end


function process(this::BasicGravityConstantVelocityMovement, layer)
        AllBinary.process(this, layer)
        AllBinary.process(this.gravityUtil, AllBinary.getVelocityProperties(this), this.gravityUtil.GAME_GRAVITY_VELOCITY)
        nothing
end

