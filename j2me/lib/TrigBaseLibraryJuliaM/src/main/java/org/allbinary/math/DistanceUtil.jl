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
# package org.allbinary.math

mutable struct DistanceUtil <: JObject
    mathUtil::Any
    DistanceUtil() = new()
end

const DistanceUtil_instanceValue = Ref{Any}(nothing)
const DistanceUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{DistanceUtil})
    if !DistanceUtil_instanceSet[]
        DistanceUtil_instanceSet[] = true
        DistanceUtil_instanceValue[] = newDistanceUtil()
    end
    DistanceUtil_instanceValue[]
end
function staticSet_instance(::Type{DistanceUtil}, value)
    DistanceUtil_instanceSet[] = true
    DistanceUtil_instanceValue[] = value
end

function initFieldsDistanceUtil(this::DistanceUtil)
    this.mathUtil = nothing
    this.mathUtil = AllBinary.getInstance(MathUtil)
    nothing
end

function initDistanceUtil(this::DistanceUtil)
    initFieldsDistanceUtil(this)
end

function newDistanceUtil()
    this = DistanceUtil()
    initDistanceUtil(this)
    this
end


function getInstance(::Type{DistanceUtil})
        return staticGet_instance(DistanceUtil)
end


function getDistance(this::DistanceUtil, x1, y1, x2, y2)
        local dx::Int32 = x1 - x2
        local dy::Int32 = y1 - y2
        return ((AllBinary.sqrt(this.mathUtil, (dx * dx) + (dy * dy))) % Int32)
end

