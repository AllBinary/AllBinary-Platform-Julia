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
# package org.allbinary.game.physics.velocity

mutable struct BasicVelocityProperties <: JObject
    logUtil::Any
    velocityXBasicDecimal::Any
    velocityYBasicDecimal::Any
    velocityZBasicDecimal::Any
    axisMathVectorUtil::Any
    directionUtil::Any
    BasicVelocityProperties() = new()
end


function initFieldsBasicVelocityProperties(this::BasicVelocityProperties)
    this.logUtil = nothing
    this.velocityXBasicDecimal = nothing
    this.velocityYBasicDecimal = nothing
    this.velocityZBasicDecimal = nothing
    this.axisMathVectorUtil = nothing
    this.directionUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    
    
    this.axisMathVectorUtil = AllBinary.getInstance(AxisMathVectorUtil)
    this.directionUtil = AllBinary.getInstance(DirectionUtil)
    nothing
end


function initBasicVelocityProperties(this::BasicVelocityProperties)
        initFieldsBasicVelocityProperties(this)
        this.velocityXBasicDecimal = newBasicDecimal(Int32(0))
        this.velocityYBasicDecimal = newBasicDecimal(Int32(0))
        this.velocityZBasicDecimal = newBasicDecimal(Int32(0))
        nothing
end

function newBasicVelocityProperties()
    this = BasicVelocityProperties()
    initBasicVelocityProperties(this)
    this
end


function zero(this::BasicVelocityProperties)
        AllBinary.setint(this.velocityXBasicDecimal, Int32(0))
        AllBinary.setint(this.velocityYBasicDecimal, Int32(0))
        AllBinary.setint(this.velocityZBasicDecimal, Int32(0))
        nothing
end


function getVelocityXBasicDecimalP(this::BasicVelocityProperties)
        return this.velocityXBasicDecimal
end


function getVelocityYBasicDecimalP(this::BasicVelocityProperties)
        return this.velocityYBasicDecimal
end


function getVelocityZBasicDecimalP(this::BasicVelocityProperties)
        return this.velocityZBasicDecimal
end


function setVelocityWithBigDecimalAndDirection(this::BasicVelocityProperties, magnitudeBasicDecimal, direction, otherDirection)
        local angle = AllBinary.getAngle(this.directionUtil, direction)
        local otherAngle = AllBinary.getAngle(this.directionUtil, otherDirection)
        AllBinary.setVelocityWithBigDecimal(this, magnitudeBasicDecimal, angle, otherAngle)
        nothing
end


function setVelocityWithDirection(this::BasicVelocityProperties, magnitude, direction, otherDirection)
        local angle = AllBinary.getAngle(this.directionUtil, direction)
        local otherAngle = AllBinary.getAngle(this.directionUtil, otherDirection)
        AllBinary.setVelocity(this, magnitude, angle, otherAngle)
        nothing
end


function addVelocityWithBigDecimalAndDirection(this::BasicVelocityProperties, magnitudeBasicDecimal, direction, otherDirection)
        local angle = AllBinary.getAngle(this.directionUtil, direction)
        local otherAngle = AllBinary.getAngle(this.directionUtil, otherDirection)
        AllBinary.addVelocityWithBigDecimal(this, magnitudeBasicDecimal, angle, otherAngle)
        nothing
end


function addVelocityWithDirection(this::BasicVelocityProperties, magnitude, direction, otherDirection)
        local angle = AllBinary.getAngle(this.directionUtil, direction)
        local otherAngle = AllBinary.getAngle(this.directionUtil, otherDirection)
        AllBinary.addVelocity(this, magnitude, angle, otherAngle)
        nothing
end


function setVelocityWithBigDecimal(this::BasicVelocityProperties, magnitudeBasicDecimal, angle, otherAngle)
        local magnitude::Int64 = AllBinary.getUnscaled(magnitudeBasicDecimal)
        AllBinary.setVelocity(this, magnitude, angle, otherAngle)
        nothing
end


function addVelocityWithBigDecimal(this::BasicVelocityProperties, magnitudeBasicDecimal, angle, otherAngle)
        local magnitude::Int64 = AllBinary.getUnscaled(magnitudeBasicDecimal)
        AllBinary.addVelocity(this, magnitude, angle, otherAngle)
        nothing
end


function setVelocity(this::BasicVelocityProperties, magnitude, angle, otherAngle)
        AllBinary.setVelocityi(this, magnitude, ((AllBinary.getValue(angle)) % Int32), ((AllBinary.getValue(otherAngle)) % Int32))
        nothing
end


function addVelocity(this::BasicVelocityProperties, magnitude, angle, otherAngle)
        AllBinary.addVelocityi(this, magnitude, ((AllBinary.getValue(angle)) % Int32), ((AllBinary.getValue(otherAngle)) % Int32))
        nothing
end


function setVelocityi(this::BasicVelocityProperties, magnitude, angle, otherAngle)
        local xVector::Int64 = (AllBinary.calculateX(this.axisMathVectorUtil, magnitude, angle) / AllBinary.getScaledFactorValue(this.velocityXBasicDecimal))
        local yVector::Int64 = (AllBinary.calculateY(this.axisMathVectorUtil, magnitude, angle) / AllBinary.getScaledFactorValue(this.velocityYBasicDecimal))
        local zVector::Int64 = (AllBinary.calculateZ(this.axisMathVectorUtil, magnitude, otherAngle) / AllBinary.getScaledFactorValue(this.velocityZBasicDecimal))
        AllBinary.setlong(this.velocityXBasicDecimal, xVector)
        AllBinary.setlong(this.velocityYBasicDecimal, yVector)
        AllBinary.setlong(this.velocityZBasicDecimal, zVector)
        nothing
end


function addVelocityi(this::BasicVelocityProperties, magnitude, angle, otherAngle)
        local xVector::Int64 = (AllBinary.calculateX(this.axisMathVectorUtil, magnitude, angle) / AllBinary.getScaledFactorValue(this.velocityXBasicDecimal))
        local yVector::Int64 = (AllBinary.calculateY(this.axisMathVectorUtil, magnitude, angle) / AllBinary.getScaledFactorValue(this.velocityYBasicDecimal))
        local zVector::Int64 = (AllBinary.calculateZ(this.axisMathVectorUtil, magnitude, otherAngle) / AllBinary.getScaledFactorValue(this.velocityZBasicDecimal))
        AllBinary.addlong(this.velocityXBasicDecimal, xVector)
        AllBinary.addlong(this.velocityYBasicDecimal, yVector)
        AllBinary.addlong(this.velocityZBasicDecimal, zVector)
        nothing
end


function toString(this::BasicVelocityProperties)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local positionStrings = AllBinary.getInstance(PositionStrings)
        local stringBuffer = newStringMaker()
        local stringUtil = AllBinary.getInstance(StringUtil)
        AllBinary.append(stringBuffer, "Velocity ")
        AllBinary.append(stringBuffer, positionStrings.X_LABEL)
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, this.velocityXBasicDecimal))
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, positionStrings.Y_LABEL)
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, this.velocityYBasicDecimal))
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, positionStrings.Z_LABEL)
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, this.velocityZBasicDecimal))
        return AllBinary.toString(stringBuffer)
end

