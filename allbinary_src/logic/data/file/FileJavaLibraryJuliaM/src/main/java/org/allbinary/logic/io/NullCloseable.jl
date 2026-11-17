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
# package org.allbinary.logic.io

mutable struct NullCloseable <: JObject
    NullCloseable() = new()
end

const NullCloseable_NULL_CLOSEABLEValue = Ref{Any}(nothing)
const NullCloseable_NULL_CLOSEABLESet = Ref(false)
function staticGet_NULL_CLOSEABLE(::Type{NullCloseable})
    if !NullCloseable_NULL_CLOSEABLESet[]
        NullCloseable_NULL_CLOSEABLESet[] = true
        NullCloseable_NULL_CLOSEABLEValue[] = newNullCloseable()
    end
    NullCloseable_NULL_CLOSEABLEValue[]
end
function staticSet_NULL_CLOSEABLE(::Type{NullCloseable}, value)
    NullCloseable_NULL_CLOSEABLESet[] = true
    NullCloseable_NULL_CLOSEABLEValue[] = value
end

function initFieldsNullCloseable(this::NullCloseable)
    nothing
end

function initNullCloseable(this::NullCloseable)
    initFieldsNullCloseable(this)
end

function newNullCloseable()
    this = NullCloseable()
    initNullCloseable(this)
    this
end


function close(this::NullCloseable)
        nothing
        nothing
end

