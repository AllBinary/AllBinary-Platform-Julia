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
mutable struct CustomGravityConstantVelocityMovement <: JObject
    customGravity::Int32
    gravityUtil::Any
    CustomGravityConstantVelocityMovement() = new()
end


function initFieldsCustomGravityConstantVelocityMovement(this::CustomGravityConstantVelocityMovement)
    this.customGravity = Int32(0)
    this.gravityUtil = nothing
    
    this.gravityUtil = AllBinary.getInstance(GravityUtil)
    nothing
end


function initCustomGravityConstantVelocityMovement(this::CustomGravityConstantVelocityMovement, speedBasicDecimal, customGravity)
        initBasicConstantVelocityMovement(this, speedBasicDecimal, newVelocityProperties(((AllBinary.getUnscaled(speedBasicDecimal)) % Int32), ((AllBinary.getUnscaled(speedBasicDecimal)) % Int32)))
        initFieldsCustomGravityConstantVelocityMovement(this)
        this.customGravity = customGravity
        nothing
end

function newCustomGravityConstantVelocityMovement(speedBasicDecimal, customGravity)
    this = CustomGravityConstantVelocityMovement()
    initCustomGravityConstantVelocityMovement(this, speedBasicDecimal, customGravity)
    this
end


function process(this::CustomGravityConstantVelocityMovement, layer)
        AllBinary.process(this, layer)
        AllBinary.process(this.gravityUtil, AllBinary.getVelocityProperties(this), this.customGravity)
        local velocityProperties = (AllBinary.getVelocityProperties(this))
        AllBinary.limitMaxYForwardVelocity(velocityProperties)
        nothing
end

