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
mutable struct DelayedConstantVelocityMovement <: JObject
    timeDelayHelper::Any
    DelayedConstantVelocityMovement() = new()
end


function initFieldsDelayedConstantVelocityMovement(this::DelayedConstantVelocityMovement)
    this.timeDelayHelper = nothing
    this.timeDelayHelper = newTimeDelayHelper(Int32(60))
    nothing
end


function initDelayedConstantVelocityMovement(this::DelayedConstantVelocityMovement, basicDecimal, velocityProperties)
        initBasicConstantVelocityMovement(this, basicDecimal, velocityProperties)
        initFieldsDelayedConstantVelocityMovement(this)
        nothing
end

function newDelayedConstantVelocityMovement(basicDecimal, velocityProperties)
    this = DelayedConstantVelocityMovement()
    initDelayedConstantVelocityMovement(this, basicDecimal, velocityProperties)
    this
end


function init(this::DelayedConstantVelocityMovement, speedBasicDecimal, angle, otherAngle)
        nothing
        nothing
end


function process(this::DelayedConstantVelocityMovement, layer)
        if AllBinary.isTime(this.timeDelayHelper, AllBinary.getInstance(GameTickTimeDelayHelperFactory).startTime)
            AllBinary.process(this, layer)
        end
        nothing
end

