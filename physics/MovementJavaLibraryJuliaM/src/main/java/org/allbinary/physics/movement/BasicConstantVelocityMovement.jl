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

# extends Movement: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicConstantVelocityMovement <: JObject
    velocityProperties::Any
    speedBasicDecimal::Any
    axisMathVectorUtil::Any
    BasicConstantVelocityMovement() = new()
end


function initFieldsBasicConstantVelocityMovement(this::BasicConstantVelocityMovement)
    this.velocityProperties = nothing
    this.speedBasicDecimal = nothing
    this.axisMathVectorUtil = nothing
    
    this.speedBasicDecimal = staticGet_ZERO_BIGDECIMAL(BasicDecimal)
    this.axisMathVectorUtil = AllBinary.getInstance(AxisMathVectorUtil)
    nothing
end


function initBasicConstantVelocityMovement(this::BasicConstantVelocityMovement, basicDecimal, velocityProperties)
        initMovement(this)
        initFieldsBasicConstantVelocityMovement(this)
        AllBinary.setSpeedBasicDecimal(this, basicDecimal)
        this.velocityProperties = velocityProperties
        nothing
end

function newBasicConstantVelocityMovement(basicDecimal, velocityProperties)
    this = BasicConstantVelocityMovement()
    initBasicConstantVelocityMovement(this, basicDecimal, velocityProperties)
    this
end


function init(this::BasicConstantVelocityMovement, speedBasicDecimal, angle, otherAngle)
        this.speedBasicDecimal = speedBasicDecimal
        local angleFactory = AllBinary.getInstance(AngleFactory)
        AllBinary.setVelocityWithBigDecimal(this.velocityProperties, speedBasicDecimal, AllBinary.getAt(angleFactory, angle), AllBinary.getAt(angleFactory, otherAngle))
        nothing
end


function moveOutsideRadius(this::BasicConstantVelocityMovement, layer, radius, angle, otherAngle)
        local scaleFactorValue::Int32 = AllBinary.getScaledFactorValue(this.speedBasicDecimal)
        local xVector::Int32 = (((AllBinary.calculateX(this.axisMathVectorUtil, radius, angle) ÷ scaleFactorValue)) % Int32)
        local yVector::Int32 = (((AllBinary.calculateY(this.axisMathVectorUtil, radius, angle) ÷ scaleFactorValue)) % Int32)
        local zVector::Int32 = (((AllBinary.calculateZ(this.axisMathVectorUtil, radius, otherAngle) ÷ scaleFactorValue)) % Int32)
        AllBinary.moveDXYZ(layer, xVector, yVector, zVector)
        nothing
end


function process(this::BasicConstantVelocityMovement, layer)
        AllBinary.moveDXYZ(layer, AllBinary.getScaled(AllBinary.getVelocityXBasicDecimalP(this.velocityProperties)), AllBinary.getScaled(AllBinary.getVelocityYBasicDecimalP(this.velocityProperties)), AllBinary.getScaled(AllBinary.getVelocityZBasicDecimalP(this.velocityProperties)))
        nothing
end


function toString(this::BasicConstantVelocityMovement)
        return AllBinary.toString(this.velocityProperties)
end


function stop(this::BasicConstantVelocityMovement)
        AllBinary.zero(this.velocityProperties)
        nothing
end


function getVelocityProperties(this::BasicConstantVelocityMovement)
        return this.velocityProperties
end


function setVelocityProperties(this::BasicConstantVelocityMovement, velocityProperties)
        this.velocityProperties = velocityProperties
        nothing
end


function setSpeedBasicDecimal(this::BasicConstantVelocityMovement, speedBasicDecimal)
        this.speedBasicDecimal = speedBasicDecimal
        nothing
end


function getSpeedBasicDecimal(this::BasicConstantVelocityMovement)
        return this.speedBasicDecimal
end

