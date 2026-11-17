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

# extends OutputStream: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullOutputStream <: JObject
    NullOutputStream() = new()
end

const NullOutputStream_NULL_OUTPUT_STREAMValue = Ref{Any}(nothing)
const NullOutputStream_NULL_OUTPUT_STREAMSet = Ref(false)
function staticGet_NULL_OUTPUT_STREAM(::Type{NullOutputStream})
    if !NullOutputStream_NULL_OUTPUT_STREAMSet[]
        NullOutputStream_NULL_OUTPUT_STREAMSet[] = true
        NullOutputStream_NULL_OUTPUT_STREAMValue[] = newNullOutputStream()
    end
    NullOutputStream_NULL_OUTPUT_STREAMValue[]
end
function staticSet_NULL_OUTPUT_STREAM(::Type{NullOutputStream}, value)
    NullOutputStream_NULL_OUTPUT_STREAMSet[] = true
    NullOutputStream_NULL_OUTPUT_STREAMValue[] = value
end

function initFieldsNullOutputStream(this::NullOutputStream)
    nothing
end

function initNullOutputStream(this::NullOutputStream)
    initOutputStream(this)
    initFieldsNullOutputStream(this)
end

function newNullOutputStream()
    this = NullOutputStream()
    initNullOutputStream(this)
    this
end


function write(this::NullOutputStream, b)
        nothing
        nothing
end


function write(this::NullOutputStream, b, off, len)
        nothing
        nothing
end


function close(this::NullOutputStream)
        nothing
        nothing
end

