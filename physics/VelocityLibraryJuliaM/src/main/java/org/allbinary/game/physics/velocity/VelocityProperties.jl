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

# extends BasicVelocityProperties: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct VelocityProperties <: JObject
    maxForwardVelocity::Int32
    maxReverseVelocity::Int32
    VelocityProperties() = new()
end

const VelocityProperties_NULL_VELOCITY_PROPERTIESValue = Ref{Any}(nothing)
const VelocityProperties_NULL_VELOCITY_PROPERTIESSet = Ref(false)
function staticGet_NULL_VELOCITY_PROPERTIES(::Type{VelocityProperties})
    if !VelocityProperties_NULL_VELOCITY_PROPERTIESSet[]
        VelocityProperties_NULL_VELOCITY_PROPERTIESSet[] = true
        VelocityProperties_NULL_VELOCITY_PROPERTIESValue[] = newVelocityProperties(Int32(0), Int32(0))
    end
    VelocityProperties_NULL_VELOCITY_PROPERTIESValue[]
end
function staticSet_NULL_VELOCITY_PROPERTIES(::Type{VelocityProperties}, value)
    VelocityProperties_NULL_VELOCITY_PROPERTIESSet[] = true
    VelocityProperties_NULL_VELOCITY_PROPERTIESValue[] = value
end

function initFieldsVelocityProperties(this::VelocityProperties)
    this.maxForwardVelocity = Int32(0)
    this.maxReverseVelocity = Int32(0)
    this.maxForwardVelocity = Int32(0)
    this.maxReverseVelocity = Int32(0)
    nothing
end


function initVelocityProperties(this::VelocityProperties, maxForwardVelocity, maxReverseVelocity)
        initBasicVelocityProperties(this)
        initFieldsVelocityProperties(this)
        AllBinary.setMaxForwardVelocity(this, maxForwardVelocity)
        AllBinary.setMaxReverseVelocity(this, maxReverseVelocity)
        nothing
end

function newVelocityProperties(maxForwardVelocity, maxReverseVelocity)
    this = VelocityProperties()
    initVelocityProperties(this, maxForwardVelocity, maxReverseVelocity)
    this
end


function getMaxForwardVelocity(this::VelocityProperties)
        return this.maxForwardVelocity
end


function setMaxForwardVelocity(this::VelocityProperties, maxForwardVelocity)
        this.maxForwardVelocity = maxForwardVelocity
        nothing
end


function getMaxReverseVelocity(this::VelocityProperties)
        return this.maxReverseVelocity
end


function setMaxReverseVelocity(this::VelocityProperties, maxReverseVelocity)
        this.maxReverseVelocity = maxReverseVelocity
        nothing
end


function limitMaxXYForwardVelocity(this::VelocityProperties)
        AllBinary.limitMaxXYVelocity(this, AllBinary.getMaxForwardVelocity(this))
        nothing
end


function limitMaxXYReverseVelocity(this::VelocityProperties)
        AllBinary.limitMaxXYVelocity(this, AllBinary.getMaxReverseVelocity(this))
        nothing
end


function limitMaxYForwardVelocity(this::VelocityProperties)
        AllBinary.limitMaxYVelocity(this, AllBinary.getMaxForwardVelocity(this))
        nothing
end


function limitMaxYReverseVelocity(this::VelocityProperties)
        AllBinary.limitMaxYVelocity(this, AllBinary.getMaxReverseVelocity(this))
        nothing
end


function limitMaxXForwardVelocity(this::VelocityProperties)
        AllBinary.limitMaxXVelocity(this, AllBinary.getMaxForwardVelocity(this))
        nothing
end


function limitMaxXReverseVelocity(this::VelocityProperties)
        AllBinary.limitMaxXVelocity(this, AllBinary.getMaxReverseVelocity(this))
        nothing
end


function isOverXYMaxForwardVelocity(this::VelocityProperties)
        return AllBinary.isOverXYMaxVelocity(this, AllBinary.getMaxForwardVelocity(this))
end


function isOverXYMaxReverseVelocity(this::VelocityProperties)
        return AllBinary.isOverXYMaxVelocity(this, AllBinary.getMaxReverseVelocity(this))
end


function limitXYToForwardAndReverseMaxVelocity(this::VelocityProperties)
        AllBinary.limitMaxXYForwardVelocity(this)
        AllBinary.limitMaxXYReverseVelocity(this)
        nothing
end


function limitMaxXYVelocity(this::VelocityProperties, maxVelocity)
        AllBinary.limitMaxXVelocity(this, maxVelocity)
        AllBinary.limitMaxYVelocity(this, maxVelocity)
        nothing
end


function limitMaxPositiveYVelocity(this::VelocityProperties, maxVelocity)
        if AllBinary.getUnscaled(this.velocityYBasicDecimal) > maxVelocity
            AllBinary.setint(this.velocityYBasicDecimal, maxVelocity)
        end
        nothing
end


function limitMaxNegativeYVelocity(this::VelocityProperties, maxVelocity)
        if AllBinary.getUnscaled(this.velocityYBasicDecimal) < -maxVelocity
            AllBinary.setint(this.velocityYBasicDecimal, -maxVelocity)
        end
        nothing
end


function limitMaxYVelocity(this::VelocityProperties, maxVelocity)
        AllBinary.limitMaxPositiveYVelocity(this, maxVelocity)
        AllBinary.limitMaxNegativeYVelocity(this, maxVelocity)
        nothing
end


function limitMaxXVelocity(this::VelocityProperties, maxVelocity)
        if AllBinary.getUnscaled(this.velocityXBasicDecimal) > maxVelocity
            AllBinary.setint(this.velocityXBasicDecimal, maxVelocity)
        end
        if AllBinary.getUnscaled(this.velocityXBasicDecimal) < -maxVelocity
            AllBinary.setint(this.velocityXBasicDecimal, -maxVelocity)
        end
        nothing
end


function isOverXYMaxVelocity(this::VelocityProperties, maxVelocity)
        if AllBinary.getUnscaled(this.velocityXBasicDecimal) > maxVelocity
            return true
        end
        if AllBinary.getUnscaled(this.velocityXBasicDecimal) < -maxVelocity
            return true
        end
        if AllBinary.getUnscaled(this.velocityYBasicDecimal) > maxVelocity
            return true
        end
        if AllBinary.getUnscaled(this.velocityYBasicDecimal) < -maxVelocity
            return true
        end
        return false
end


function setVelocityi(this::VelocityProperties, magnitude, angle, otherAngle)
        AllBinary.setVelocityi(this, magnitude, angle, otherAngle)
        AllBinary.limitXYToForwardAndReverseMaxVelocity(this)
        nothing
end


function addVelocityi(this::VelocityProperties, magnitude, angle, otherAngle)
        AllBinary.addVelocityi(this, magnitude, angle, otherAngle)
        AllBinary.limitXYToForwardAndReverseMaxVelocity(this)
        nothing
end

