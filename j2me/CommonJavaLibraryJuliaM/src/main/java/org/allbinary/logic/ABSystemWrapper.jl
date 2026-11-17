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

mutable struct ABSystemWrapper <: JObject
    ABSystemWrapper() = new()
end

const ABSystemWrapper_instanceValue = Ref{Any}(nothing)
const ABSystemWrapper_instanceSet = Ref(false)
function staticGet_instance(::Type{ABSystemWrapper})
    if !ABSystemWrapper_instanceSet[]
        ABSystemWrapper_instanceSet[] = true
        ABSystemWrapper_instanceValue[] = newABSystemWrapper()
    end
    ABSystemWrapper_instanceValue[]
end
function staticSet_instance(::Type{ABSystemWrapper}, value)
    ABSystemWrapper_instanceSet[] = true
    ABSystemWrapper_instanceValue[] = value
end

function initFieldsABSystemWrapper(this::ABSystemWrapper)
    nothing
end

function initABSystemWrapper(this::ABSystemWrapper)
    initFieldsABSystemWrapper(this)
end

function newABSystemWrapper()
    this = ABSystemWrapper()
    initABSystemWrapper(this)
    this
end


function getInstance(::Type{ABSystemWrapper})
        return staticGet_instance(ABSystemWrapper)
end


function arraycopy(this::ABSystemWrapper, src, srcPos, dest, destPos, length)
        jArraycopy(src, srcPos, dest, destPos, length)
        nothing
end


function currentTimeMillis(this::ABSystemWrapper)
        return jCurrentTimeMillis()
end

