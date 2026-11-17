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
mutable struct SimpleGravityVelocityMovement <: JObject
    gravityUtil::Any
    SimpleGravityVelocityMovement() = new()
end


function initFieldsSimpleGravityVelocityMovement(this::SimpleGravityVelocityMovement)
    this.gravityUtil = nothing
    this.gravityUtil = AllBinary.getInstance(GravityUtil)
    nothing
end


function initSimpleGravityVelocityMovement(this::SimpleGravityVelocityMovement, speedBasicDecimal)
        initBasicConstantVelocityMovement(this, speedBasicDecimal, newVelocityProperties(((AllBinary.getUnscaled(speedBasicDecimal)) % Int32), ((AllBinary.getUnscaled(speedBasicDecimal)) % Int32)))
        initFieldsSimpleGravityVelocityMovement(this)
        nothing
end

function newSimpleGravityVelocityMovement(speedBasicDecimal)
    this = SimpleGravityVelocityMovement()
    initSimpleGravityVelocityMovement(this, speedBasicDecimal)
    this
end


function process(this::SimpleGravityVelocityMovement, layer)
        AllBinary.process(this.gravityUtil, AllBinary.getVelocityProperties(this), this.gravityUtil.GAME_GRAVITY_VELOCITY)
        AllBinary.process(this, layer)
        nothing
end

