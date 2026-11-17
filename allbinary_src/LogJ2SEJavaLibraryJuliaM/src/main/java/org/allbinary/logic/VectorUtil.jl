#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic

mutable struct VectorUtil <: JObject
    VectorUtil() = new()
end

const VectorUtil_instanceValue = Ref{Any}(nothing)
const VectorUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{VectorUtil})
    if !VectorUtil_instanceSet[]
        VectorUtil_instanceSet[] = true
        VectorUtil_instanceValue[] = newVectorUtil()
    end
    VectorUtil_instanceValue[]
end
function staticSet_instance(::Type{VectorUtil}, value)
    VectorUtil_instanceSet[] = true
    VectorUtil_instanceValue[] = value
end

function initFieldsVectorUtil(this::VectorUtil)
    nothing
end

function initVectorUtil(this::VectorUtil)
    initFieldsVectorUtil(this)
end

function newVectorUtil()
    this = VectorUtil()
    initVectorUtil(this)
    this
end


function getInstance(::Type{VectorUtil})
        return staticGet_instance(VectorUtil)
end


function getSize(this::VectorUtil, anyType)
        local vector = (anyType)
        return AllBinary.size(vector)
end


function elementAt(this::VectorUtil, anyType, index)
        local vector = (anyType)
        return AllBinary.elementAt(vector, index)
end

