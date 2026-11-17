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

# extends Writer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullWriter <: JObject
    NullWriter() = new()
end

const NullWriter_NULL_WRITERValue = Ref{Any}(nothing)
const NullWriter_NULL_WRITERSet = Ref(false)
function staticGet_NULL_WRITER(::Type{NullWriter})
    if !NullWriter_NULL_WRITERSet[]
        NullWriter_NULL_WRITERSet[] = true
        NullWriter_NULL_WRITERValue[] = newNullWriter()
    end
    NullWriter_NULL_WRITERValue[]
end
function staticSet_NULL_WRITER(::Type{NullWriter}, value)
    NullWriter_NULL_WRITERSet[] = true
    NullWriter_NULL_WRITERValue[] = value
end

function initFieldsNullWriter(this::NullWriter)
    nothing
end

function initNullWriter(this::NullWriter)
    initWriter(this)
    initFieldsNullWriter(this)
end

function newNullWriter()
    this = NullWriter()
    initNullWriter(this)
    this
end


function write(this::NullWriter, c)
        nothing
        nothing
end


function write(this::NullWriter, cbuf, off, len)
        nothing
        nothing
end


function write(this::NullWriter, str)
        nothing
        nothing
end


function write(this::NullWriter, str, off, len)
        nothing
        nothing
end


function flush(this::NullWriter)
        nothing
        nothing
end


function close(this::NullWriter)
        nothing
        nothing
end

