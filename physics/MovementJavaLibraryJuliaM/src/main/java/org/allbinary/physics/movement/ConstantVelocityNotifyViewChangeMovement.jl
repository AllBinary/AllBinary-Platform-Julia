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
mutable struct ConstantVelocityNotifyViewChangeMovement <: JObject
    basicVelocityProperties::Any
    speedBasicDecimal::Any
    axisMathVectorUtil::Any
    ConstantVelocityNotifyViewChangeMovement() = new()
end


function initFieldsConstantVelocityNotifyViewChangeMovement(this::ConstantVelocityNotifyViewChangeMovement)
    this.basicVelocityProperties = nothing
    this.speedBasicDecimal = nothing
    this.axisMathVectorUtil = nothing
    
    
    this.axisMathVectorUtil = AllBinary.getInstance(AxisMathVectorUtil)
    nothing
end


function initConstantVelocityNotifyViewChangeMovement(this::ConstantVelocityNotifyViewChangeMovement)
        initMovement(this)
        initFieldsConstantVelocityNotifyViewChangeMovement(this)
        this.speedBasicDecimal = staticGet_ZERO_BIGDECIMAL(BasicDecimal)
        this.basicVelocityProperties = newBasicVelocityProperties()
        nothing
end

function newConstantVelocityNotifyViewChangeMovement()
    this = ConstantVelocityNotifyViewChangeMovement()
    initConstantVelocityNotifyViewChangeMovement(this)
    this
end


function init(this::ConstantVelocityNotifyViewChangeMovement, speedBasicDecimal, angle, otherAngle)
        this.speedBasicDecimal = speedBasicDecimal
        local angleFactory = AllBinary.getInstance(AngleFactory)
        AllBinary.setVelocityWithBigDecimal(this.basicVelocityProperties, speedBasicDecimal, AllBinary.getAt(angleFactory, angle), AllBinary.getAt(angleFactory, otherAngle))
        nothing
end


function moveOutsideRadius(this::ConstantVelocityNotifyViewChangeMovement, layer, radius, angle, otherAngle)
        local scaleFactorValue::Int32 = AllBinary.getScaledFactorValue(this.speedBasicDecimal)
        local xVector::Int32 = (((AllBinary.calculateX(this.axisMathVectorUtil, radius, angle) ÷ scaleFactorValue)) % Int32)
        local yVector::Int32 = (((AllBinary.calculateY(this.axisMathVectorUtil, radius, angle) ÷ scaleFactorValue)) % Int32)
        local zVector::Int32 = (((AllBinary.calculateZ(this.axisMathVectorUtil, radius, otherAngle) ÷ scaleFactorValue)) % Int32)
        AllBinary.moveDXYZ(layer, xVector, yVector, zVector)
        nothing
end


function process(this::ConstantVelocityNotifyViewChangeMovement, layer)
        local x::Int32 = AllBinary.getScaled(AllBinary.getVelocityXBasicDecimalP(this.basicVelocityProperties))
        local y::Int32 = AllBinary.getScaled(AllBinary.getVelocityYBasicDecimalP(this.basicVelocityProperties))
        local z::Int32 = AllBinary.getScaled(AllBinary.getVelocityZBasicDecimalP(this.basicVelocityProperties))
        AllBinary.moveDXYZ(layer, x, y, z)
        if x != Int32(0) || y != Int32(0) || z != Int32(0)
            AllBinary.onViewPositionChangeEvent(layer)
        end
        nothing
end


function stop(this::ConstantVelocityNotifyViewChangeMovement)
        AllBinary.zero(this.basicVelocityProperties)
        nothing
end

