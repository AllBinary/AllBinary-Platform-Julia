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
# package org.allbinary.logic

#ActualPlatform
mutable struct StdUtil <: JObject
    EMPTY_VECTOR::Any
    NULL_TABLE::Any
    StdUtil() = new()
end

const StdUtil_instanceValue = Ref{Any}(nothing)
const StdUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{StdUtil})
    if !StdUtil_instanceSet[]
        StdUtil_instanceSet[] = true
        StdUtil_instanceValue[] = newStdUtil()
    end
    StdUtil_instanceValue[]
end
function staticSet_instance(::Type{StdUtil}, value)
    StdUtil_instanceSet[] = true
    StdUtil_instanceValue[] = value
end

function initFieldsStdUtil(this::StdUtil)
    this.EMPTY_VECTOR = nothing
    this.NULL_TABLE = nothing
    this.EMPTY_VECTOR = AllBinary.createVector(this)
    this.NULL_TABLE = AllBinary.createHashtable(this)
    nothing
end

function initStdUtil(this::StdUtil)
    initFieldsStdUtil(this)
end

function newStdUtil()
    this = StdUtil()
    initStdUtil(this)
    this
end


function getInstance(::Type{StdUtil})
        return staticGet_instance(StdUtil)
end


function createStack(this::StdUtil)
        return newABStack()
end


function createVector(this::StdUtil)
        return newABVector()
end


function createHashtable(this::StdUtil)
        return newABHashtable()
end

