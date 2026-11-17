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
# package org.allbinary.logic.string

mutable struct StringUtil <: JObject
    INIT_STRING::Any
    NULL_STRING::Any
    EMPTY_STRING::Any
    ONE_EMPTY_STRING_ARRAY::Any
    ONE_EMPTY_STRING_ARRAY_OF_ARRAYS::Any
    stringArray::Any
    StringUtil() = new()
end

const StringUtil_instanceValue = Ref{Any}(nothing)
const StringUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{StringUtil})
    if !StringUtil_instanceSet[]
        StringUtil_instanceSet[] = true
        StringUtil_instanceValue[] = newStringUtil()
    end
    StringUtil_instanceValue[]
end
function staticSet_instance(::Type{StringUtil}, value)
    StringUtil_instanceSet[] = true
    StringUtil_instanceValue[] = value
end

function initFieldsStringUtil(this::StringUtil)
    this.INIT_STRING = nothing
    this.NULL_STRING = nothing
    this.EMPTY_STRING = nothing
    this.ONE_EMPTY_STRING_ARRAY = nothing
    this.ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = nothing
    this.stringArray = nothing
    this.INIT_STRING = ""
    this.NULL_STRING = "null"
    this.EMPTY_STRING = ""
    this.ONE_EMPTY_STRING_ARRAY = Any[this.EMPTY_STRING]
    this.ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = jNewArrayOf(Vector{Any}, Int32(0), () -> jNewArray(Any, Int32(0), nothing))
    this.stringArray = jNewArray(Any, Int32(0), nothing)
    nothing
end


function getInstance(::Type{StringUtil})
        return staticGet_instance(StringUtil)
end


function initStringUtil(this::StringUtil)
        initFieldsStringUtil(this)
        nothing
        nothing
end

function newStringUtil()
    this = StringUtil()
    initStringUtil(this)
    this
end


function getNonNull(this::StringUtil, string)
        return string
end


function getArrayInstance(this::StringUtil)
        return this.stringArray
end


function count(this::StringUtil, string, aChar)
        local count::Int32 = Int32(0)
        local size::Int32 = jLength(string)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            if jCharAt(string, index) == aChar
                count += Int32(1)
            end
            finally
                index += Int32(1)
            end
            end
        end
        return count
end


function toString(this::StringUtil, anyType)
        if anyType !== nothing
            return AllBinary.toString(anyType)
        else
            return this.NULL_STRING
        end
end

