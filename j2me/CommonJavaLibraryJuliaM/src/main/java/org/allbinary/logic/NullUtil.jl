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
mutable struct NullUtil <: JObject
    NULL_OBJECT::Any
    NULL_CLASS::Any
    NULL_OBJECT_ARRAY::Any
    NULL_CHAR_ARRAY::Any
    NULL_BYTE_ARRAY::Any
    NULL_SHORT_ARRAY_ARRAY::Any
    NULL_INT_ARRAY::Any
    NULL_INT_ARRAY_ARRAY::Any
    NULL_INT_ARRAY_ARRAY_ARRAY::Any
    NULL_FLOAT_ARRAY::Any
    NullUtil() = new()
end

const NullUtil_instanceValue = Ref{Any}(nothing)
const NullUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{NullUtil})
    if !NullUtil_instanceSet[]
        NullUtil_instanceSet[] = true
        NullUtil_instanceValue[] = newNullUtil()
    end
    NullUtil_instanceValue[]
end
function staticSet_instance(::Type{NullUtil}, value)
    NullUtil_instanceSet[] = true
    NullUtil_instanceValue[] = value
end

function initFieldsNullUtil(this::NullUtil)
    this.NULL_OBJECT = nothing
    this.NULL_CLASS = nothing
    this.NULL_OBJECT_ARRAY = nothing
    this.NULL_CHAR_ARRAY = nothing
    this.NULL_BYTE_ARRAY = nothing
    this.NULL_SHORT_ARRAY_ARRAY = nothing
    this.NULL_INT_ARRAY = nothing
    this.NULL_INT_ARRAY_ARRAY = nothing
    this.NULL_INT_ARRAY_ARRAY_ARRAY = nothing
    this.NULL_FLOAT_ARRAY = nothing
    this.NULL_OBJECT = JBaseObject()
    this.NULL_CLASS = jClassName(this.NULL_OBJECT)
    this.NULL_OBJECT_ARRAY = jNewArray(Any, Int32(0), nothing)
    this.NULL_CHAR_ARRAY = jNewArray(UInt16, Int32(0), UInt16(0))
    this.NULL_BYTE_ARRAY = jNewArray(Int8, Int32(0), Int8(0))
    this.NULL_SHORT_ARRAY_ARRAY = jNewArrayOf(Vector{Int16}, Int32(0), () -> jNewArray(Int16, Int32(0), Int16(0)))
    this.NULL_INT_ARRAY = jNewArray(Int32, Int32(0), Int32(0))
    this.NULL_INT_ARRAY_ARRAY = jNewArrayOf(Vector{Int32}, Int32(0), () -> jNewArray(Int32, Int32(0), Int32(0)))
    this.NULL_INT_ARRAY_ARRAY_ARRAY = jNewArrayOf(Vector{Vector{Int32}}, Int32(0), () -> jNewArrayOf(Vector{Int32}, Int32(0), () -> jNewArray(Int32, Int32(0), Int32(0))))
    this.NULL_FLOAT_ARRAY = jNewArray(Float32, Int32(0), 0.0f0)
    nothing
end

function initNullUtil(this::NullUtil)
    initFieldsNullUtil(this)
end

function newNullUtil()
    this = NullUtil()
    initNullUtil(this)
    this
end


function getInstance(::Type{NullUtil})
        return staticGet_instance(NullUtil)
end

