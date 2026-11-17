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
# package org.allbinary

#TempBase
mutable struct TsUtil <: JObject
    TsUtil() = new()
end

const TsUtil_instanceValue = Ref{Any}(nothing)
const TsUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{TsUtil})
    if !TsUtil_instanceSet[]
        TsUtil_instanceSet[] = true
        TsUtil_instanceValue[] = newTsUtil()
    end
    TsUtil_instanceValue[]
end
function staticSet_instance(::Type{TsUtil}, value)
    TsUtil_instanceSet[] = true
    TsUtil_instanceValue[] = value
end

function initFieldsTsUtil(this::TsUtil)
    nothing
end

function initTsUtil(this::TsUtil)
    initFieldsTsUtil(this)
end

function newTsUtil()
    this = TsUtil()
    initTsUtil(this)
    this
end


function getInstance(::Type{TsUtil})
        return staticGet_instance(TsUtil)
end


function longBitsToDouble(this::TsUtil, bits)
        return AllBinary.longBitsToDouble(Double, bits)
end


function intBitsToFloat(this::TsUtil, bits)
        return AllBinary.intBitsToFloat(Float, bits)
end


function hashCode(this::TsUtil, anyType)
        return AllBinary.hashCode(anyType)
end


function waitFor(this::TsUtil, any, timeoutMillis)
        local anyType = (any)
        AllBinary.wait(anyType, timeoutMillis)
        nothing
end


function compareTo(this::TsUtil, a, b)
        return jCompareTo(a, b)
end

