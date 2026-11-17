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

# extends Reader: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullReader <: JObject
    NullReader() = new()
end

const NullReader_NULL_READERValue = Ref{Any}(nothing)
const NullReader_NULL_READERSet = Ref(false)
function staticGet_NULL_READER(::Type{NullReader})
    if !NullReader_NULL_READERSet[]
        NullReader_NULL_READERSet[] = true
        NullReader_NULL_READERValue[] = newNullReader()
    end
    NullReader_NULL_READERValue[]
end
function staticSet_NULL_READER(::Type{NullReader}, value)
    NullReader_NULL_READERSet[] = true
    NullReader_NULL_READERValue[] = value
end

function initFieldsNullReader(this::NullReader)
    nothing
end

function initNullReader(this::NullReader)
    initReader(this)
    initFieldsNullReader(this)
end

function newNullReader()
    this = NullReader()
    initNullReader(this)
    this
end


function read(this::NullReader)
        return -Int32(1)
end


function read(this::NullReader, cbuf, off, len)
        return -Int32(1)
end


function ready(this::NullReader)
        return false
end


function skip(this::NullReader, n)
        return Int64(0)
end


function close(this::NullReader)
        nothing
        nothing
end

