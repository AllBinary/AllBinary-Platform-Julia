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
# package org.allbinary.logic.math

mutable struct BasicDecimal <: JObject
    units::Int64
    scaled::Int32
    factor::Int32
    factorValue::Int32
    BasicDecimal() = new()
end

const BasicDecimal_ZERO_BIGDECIMALValue = Ref{Any}(nothing)
const BasicDecimal_ZERO_BIGDECIMALSet = Ref(false)
function staticGet_ZERO_BIGDECIMAL(::Type{BasicDecimal})
    if !BasicDecimal_ZERO_BIGDECIMALSet[]
        BasicDecimal_ZERO_BIGDECIMALSet[] = true
        BasicDecimal_ZERO_BIGDECIMALValue[] = newBasicDecimal(Int32(0))
    end
    BasicDecimal_ZERO_BIGDECIMALValue[]
end
function staticSet_ZERO_BIGDECIMAL(::Type{BasicDecimal}, value)
    BasicDecimal_ZERO_BIGDECIMALSet[] = true
    BasicDecimal_ZERO_BIGDECIMALValue[] = value
end

function initFieldsBasicDecimal(this::BasicDecimal)
    this.units = Int64(0)
    this.scaled = Int32(0)
    this.factor = Int32(0)
    this.factorValue = Int32(0)
    
    this.scaled = Int32(0)
    this.factor = AllBinary.getInstance(ScaleFactorFactory).DEFAULT_SCALE_FACTOR
    this.factorValue = AllBinary.getInstance(ScaleFactorFactory).DEFAULT_SCALE_VALUE
    nothing
end


function createBigDecimal(::Type{BasicDecimal}, bigDecimal)
        return newBasicDecimal(AllBinary.getUnscaled(bigDecimal))
end


function initBasicDecimal(this::BasicDecimal, units)
        initFieldsBasicDecimal(this)
        this.units = units
        AllBinary.updateScaled(this)
        nothing
end

function newBasicDecimal(units)
    this = BasicDecimal()
    initBasicDecimal(this, units)
    this
end


function setint(this::BasicDecimal, value)
        this.units = ((value) % Int64)
        AllBinary.updateScaled(this)
        nothing
end


function setlong(this::BasicDecimal, value)
        this.units = value
        AllBinary.updateScaled(this)
        nothing
end


function set(this::BasicDecimal, bigDecimal)
        this.units = AllBinary.getUnscaled(bigDecimal)
        AllBinary.updateScaled(this)
        nothing
end


function addint(this::BasicDecimal, value)
        this.units = this.units + ((value) % Int64)
        AllBinary.updateScaled(this)
        nothing
end


function addlong(this::BasicDecimal, value)
        this.units = this.units + value
        AllBinary.updateScaled(this)
        nothing
end


function add(this::BasicDecimal, bigDecimal)
        this.units = this.units + AllBinary.getUnscaled(bigDecimal)
        AllBinary.updateScaled(this)
        nothing
end


function subtractint(this::BasicDecimal, value)
        this.units = this.units - ((value) % Int64)
        AllBinary.updateScaled(this)
        nothing
end


function subtractlong(this::BasicDecimal, value)
        this.units = this.units - value
        AllBinary.updateScaled(this)
        nothing
end


function subtract(this::BasicDecimal, bigDecimal)
        this.units = this.units - AllBinary.getUnscaled(bigDecimal)
        AllBinary.updateScaled(this)
        nothing
end


function multiplyint(this::BasicDecimal, value)
        this.units = this.units * ((value) % Int64)
        AllBinary.updateScaled(this)
        nothing
end


function multiplylong(this::BasicDecimal, value)
        this.units = this.units * value
        AllBinary.updateScaled(this)
        nothing
end


function multiply(this::BasicDecimal, bigDecimal)
        this.units = this.units * AllBinary.getUnscaled(bigDecimal)
        AllBinary.updateScaled(this)
        nothing
end


function divideint(this::BasicDecimal, value)
        this.units = this.units ÷ ((value) % Int64)
        AllBinary.updateScaled(this)
        nothing
end


function dividelong(this::BasicDecimal, value)
        this.units = this.units ÷ value
        AllBinary.updateScaled(this)
        nothing
end


function divide(this::BasicDecimal, bigDecimal)
        this.units = this.units ÷ AllBinary.getUnscaled(bigDecimal)
        AllBinary.updateScaled(this)
        nothing
end


function getUnscaled(this::BasicDecimal)
        return this.units
end


function updateScaled(this::BasicDecimal)
        this.scaled = (((this.units ÷ ((this.factorValue) % Int64))) % Int32)
        nothing
end


function getScaled(this::BasicDecimal)
        return this.scaled
end


function toString(this::BasicDecimal)
        return jstr(this.units)
end


function getScaledFactor(this::BasicDecimal)
        return this.factor
end


function getScaledFactorValue(this::BasicDecimal)
        return this.factorValue
end

