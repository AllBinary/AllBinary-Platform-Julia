#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.math

mutable struct J2SEMath <: JObject
    J2SEMath() = new()
end

const J2SEMath_instanceValue = Ref{Any}(nothing)
const J2SEMath_instanceSet = Ref(false)
function staticGet_instance(::Type{J2SEMath})
    if !J2SEMath_instanceSet[]
        J2SEMath_instanceSet[] = true
        J2SEMath_instanceValue[] = newJ2SEMath()
    end
    J2SEMath_instanceValue[]
end
function staticSet_instance(::Type{J2SEMath}, value)
    J2SEMath_instanceSet[] = true
    J2SEMath_instanceValue[] = value
end

function initFieldsJ2SEMath(this::J2SEMath)
    nothing
end

function initJ2SEMath(this::J2SEMath)
    initFieldsJ2SEMath(this)
end

function newJ2SEMath()
    this = J2SEMath()
    initJ2SEMath(this)
    this
end


function getInstance(::Type{J2SEMath})
        return staticGet_instance(J2SEMath)
end


function round(this::J2SEMath, value)
        return (jToInt32(value) % Int32)
end


function abs(this::J2SEMath, value)
        return ((value < 0.0f0) ? -value : value)
end


function absdouble(this::J2SEMath, value)
        return ((value < 0.0) ? -value : value)
end

