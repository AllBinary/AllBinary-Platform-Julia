# Generated Code Do Not Modify
# package org.allbinary.physics.movement

# extends BasicConstantVelocityMovement: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PreciseConstantVelocityMovement <: JObject
    accumulatedX::Int32
    accumulatedY::Int32
    accumulatedZ::Int32
    factorValue::Int32
    PreciseConstantVelocityMovement() = new()
end


function initFieldsPreciseConstantVelocityMovement(this::PreciseConstantVelocityMovement)
    this.accumulatedX = Int32(0)
    this.accumulatedY = Int32(0)
    this.accumulatedZ = Int32(0)
    this.factorValue = Int32(0)
    this.accumulatedX = Int32(0)
    this.accumulatedY = Int32(0)
    this.accumulatedZ = Int32(0)
    this.factorValue = AllBinary.getInstance(ScaleFactorFactory).DEFAULT_SCALE_VALUE
    nothing
end


function initPreciseConstantVelocityMovement(this::PreciseConstantVelocityMovement, basicDecimal, velocityProperties)
        initBasicConstantVelocityMovement(this, basicDecimal, velocityProperties)
        initFieldsPreciseConstantVelocityMovement(this)
        nothing
end

function newPreciseConstantVelocityMovement(basicDecimal, velocityProperties)
    this = PreciseConstantVelocityMovement()
    initPreciseConstantVelocityMovement(this, basicDecimal, velocityProperties)
    this
end


function init(this::PreciseConstantVelocityMovement, speedBasicDecimal, angle, otherAngle)
        nothing
        nothing
end


function process(this::PreciseConstantVelocityMovement, layer)
        local mathUtil = AllBinary.getInstance(MathUtil)
        local velocityProperties = AllBinary.getVelocityProperties(this)
        this.accumulatedX = (((this.accumulatedX + AllBinary.getUnscaled(AllBinary.getVelocityXBasicDecimalP(velocityProperties)))) % Int32)
        this.accumulatedY = (((this.accumulatedY + AllBinary.getUnscaled(AllBinary.getVelocityYBasicDecimalP(velocityProperties)))) % Int32)
        this.accumulatedZ = (((this.accumulatedZ + AllBinary.getUnscaled(AllBinary.getVelocityZBasicDecimalP(velocityProperties)))) % Int32)
        AllBinary.moveDXYZ(layer, this.accumulatedX ÷ this.factorValue, this.accumulatedY ÷ this.factorValue, this.accumulatedZ ÷ this.factorValue)
        if AllBinary.abs(mathUtil, this.accumulatedX) > this.factorValue
            this.accumulatedX = Int32(0)
        end
        if AllBinary.abs(mathUtil, this.accumulatedY) > this.factorValue
            this.accumulatedY = Int32(0)
        end
        if AllBinary.abs(mathUtil, this.accumulatedZ) > this.factorValue
            this.accumulatedZ = Int32(0)
        end
        nothing
end

