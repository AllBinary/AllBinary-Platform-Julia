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
# package org.allbinary.device

mutable struct NullGL10 <: JObject
    NullGL10() = new()
end

const NullGL10_NULL_GL10Value = Ref{Any}(nothing)
const NullGL10_NULL_GL10Set = Ref(false)
function staticGet_NULL_GL10(::Type{NullGL10})
    if !NullGL10_NULL_GL10Set[]
        NullGL10_NULL_GL10Set[] = true
        NullGL10_NULL_GL10Value[] = newNullGL10()
    end
    NullGL10_NULL_GL10Value[]
end
function staticSet_NULL_GL10(::Type{NullGL10}, value)
    NullGL10_NULL_GL10Set[] = true
    NullGL10_NULL_GL10Value[] = value
end

function initFieldsNullGL10(this::NullGL10)
    nothing
end

function initNullGL10(this::NullGL10)
    initFieldsNullGL10(this)
end

function newNullGL10()
    this = NullGL10()
    initNullGL10(this)
    this
end

