# Generated Code Do Not Modify
# package org.allbinary.animation

# extends RotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullRotationAnimation <: JObject
    NullRotationAnimation() = new()
end


function initFieldsNullRotationAnimation(this::NullRotationAnimation)
    nothing
end


function createTotalAngle(::Type{NullRotationAnimation}, angleInfo, totalAngle, animationBehavior)
        return newNullRotationAnimation(angleInfo, AllBinary.createInstance(CircularIndexUtil, totalAngle ÷ AllBinary.getAngleIncrement(AllBinary.getAngleIncrementInfo(angleInfo))), animationBehavior)
end


function createQuarter(::Type{NullRotationAnimation}, animationBehavior)
        return newNullRotationAnimation(AllBinary.getInstance(AngleInfo, AllBinary.getInstance(AngleFactory).QUARTER_TOTAL_ANGLE), AllBinary.createInstance(CircularIndexUtil, Int32(4)), animationBehavior)
end


function initNullRotationAnimation(this::NullRotationAnimation, angleInfo, circularIndexUtil, animationBehavior)
        initRotationAnimation(this, angleInfo, circularIndexUtil, animationBehavior)
        nothing
end

function newNullRotationAnimation(angleInfo, circularIndexUtil, animationBehavior)
    this = NullRotationAnimation()
    initNullRotationAnimation(this, angleInfo, circularIndexUtil, animationBehavior)
    this
end


function getAnimationSize(this::NullRotationAnimation)
        return Int32(0)
end

