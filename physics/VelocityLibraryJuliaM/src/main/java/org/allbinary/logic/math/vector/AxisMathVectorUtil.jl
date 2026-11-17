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
# package org.allbinary.logic.math.vector

mutable struct AxisMathVectorUtil <: JObject
    noDecimalTrigTable::Any
    AxisMathVectorUtil() = new()
end

const AxisMathVectorUtil_instanceValue = Ref{Any}(nothing)
const AxisMathVectorUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{AxisMathVectorUtil})
    if !AxisMathVectorUtil_instanceSet[]
        AxisMathVectorUtil_instanceSet[] = true
        AxisMathVectorUtil_instanceValue[] = newAxisMathVectorUtil()
    end
    AxisMathVectorUtil_instanceValue[]
end
function staticSet_instance(::Type{AxisMathVectorUtil}, value)
    AxisMathVectorUtil_instanceSet[] = true
    AxisMathVectorUtil_instanceValue[] = value
end

function initFieldsAxisMathVectorUtil(this::AxisMathVectorUtil)
    this.noDecimalTrigTable = nothing
    this.noDecimalTrigTable = AllBinary.getInstance(NoDecimalTrigTable)
    nothing
end

function initAxisMathVectorUtil(this::AxisMathVectorUtil)
    initFieldsAxisMathVectorUtil(this)
end

function newAxisMathVectorUtil()
    this = AxisMathVectorUtil()
    initAxisMathVectorUtil(this)
    this
end


function getInstance(::Type{AxisMathVectorUtil})
        return staticGet_instance(AxisMathVectorUtil)
end


function calculateX(this::AxisMathVectorUtil, magnitude, angle)
        return magnitude * AllBinary.cos(this.noDecimalTrigTable, angle) ÷ Int32(10)
end


function calculateY(this::AxisMathVectorUtil, magnitude, angle)
        return magnitude * AllBinary.sin(this.noDecimalTrigTable, angle) ÷ Int32(10)
end


function calculateZ(this::AxisMathVectorUtil, magnitude, otherAngle)
        return magnitude * AllBinary.sin(this.noDecimalTrigTable, otherAngle) ÷ Int32(10)
end

