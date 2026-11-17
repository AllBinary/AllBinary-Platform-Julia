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

mutable struct MathData <: JObject
    EQUALS::Any
    PLUS::Any
    GREATER_THAN::Any
    MINUS::Any
    DIVIDE::Any
    MULTIPLY::Any
    MathData() = new()
end

const MathData_instanceValue = Ref{Any}(nothing)
const MathData_instanceSet = Ref(false)
function staticGet_instance(::Type{MathData})
    if !MathData_instanceSet[]
        MathData_instanceSet[] = true
        MathData_instanceValue[] = newMathData()
    end
    MathData_instanceValue[]
end
function staticSet_instance(::Type{MathData}, value)
    MathData_instanceSet[] = true
    MathData_instanceValue[] = value
end

function initFieldsMathData(this::MathData)
    this.EQUALS = nothing
    this.PLUS = nothing
    this.GREATER_THAN = nothing
    this.MINUS = nothing
    this.DIVIDE = nothing
    this.MULTIPLY = nothing
    
    this.PLUS = "+"
    this.GREATER_THAN = ">"
    
    
    
    nothing
end


function getInstance(::Type{MathData})
        return staticGet_instance(MathData)
end


function initMathData(this::MathData)
        initFieldsMathData(this)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        this.EQUALS = commonSeps.EQUALS
        this.MINUS = commonSeps.DASH
        this.DIVIDE = commonSeps.FORWARD_SLASH
        this.MULTIPLY = AllBinary.getInstance(CommonPhoneStrings).STAR
        nothing
end

function newMathData()
    this = MathData()
    initMathData(this)
    this
end

