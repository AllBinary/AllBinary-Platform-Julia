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
mutable struct OscillateVelocityMovement <: JObject
    oscillateMin::Int32
    oscillateMax::Int32
    oscillate::Int32
    oscillatePositive::Bool
    OscillateVelocityMovement() = new()
end


function initFieldsOscillateVelocityMovement(this::OscillateVelocityMovement)
    this.oscillateMin = Int32(0)
    this.oscillateMax = Int32(0)
    this.oscillate = Int32(0)
    this.oscillatePositive = false
    
    
    this.oscillate = Int32(0)
    this.oscillatePositive = false
    nothing
end


function initOscillateVelocityMovement(this::OscillateVelocityMovement, speedBasicDecimal, oscillateMin, oscillateMax)
        initBasicConstantVelocityMovement(this, speedBasicDecimal, newVelocityProperties(((AllBinary.getUnscaled(speedBasicDecimal)) % Int32), ((AllBinary.getUnscaled(speedBasicDecimal)) % Int32)))
        initFieldsOscillateVelocityMovement(this)
        this.oscillateMin = oscillateMin
        this.oscillateMax = oscillateMax
        nothing
end

function newOscillateVelocityMovement(speedBasicDecimal, oscillateMin, oscillateMax)
    this = OscillateVelocityMovement()
    initOscillateVelocityMovement(this, speedBasicDecimal, oscillateMin, oscillateMax)
    this
end


function process(this::OscillateVelocityMovement, layer)
        AllBinary.process(this, layer)
        if this.oscillate < this.oscillateMin
            this.oscillatePositive = true
        elseif this.oscillate > this.oscillateMax
            this.oscillatePositive = false
        end
        if this.oscillatePositive
            this.oscillate += Int32(1)
            AllBinary.addint(AllBinary.getVelocityXBasicDecimalP(AllBinary.getVelocityProperties(this)), Int32(2000))
        else
            this.oscillate -= Int32(1)
            AllBinary.subtractint(AllBinary.getVelocityXBasicDecimalP(AllBinary.getVelocityProperties(this)), Int32(2000))
        end
        nothing
end

