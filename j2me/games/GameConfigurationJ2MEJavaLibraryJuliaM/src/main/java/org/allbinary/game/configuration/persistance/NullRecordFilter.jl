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
# package org.allbinary.game.configuration.persistance

mutable struct NullRecordFilter <: JObject
    NullRecordFilter() = new()
end

const NullRecordFilter_NULL_RECORD_FILTERValue = Ref{Any}(nothing)
const NullRecordFilter_NULL_RECORD_FILTERSet = Ref(false)
function staticGet_NULL_RECORD_FILTER(::Type{NullRecordFilter})
    if !NullRecordFilter_NULL_RECORD_FILTERSet[]
        NullRecordFilter_NULL_RECORD_FILTERSet[] = true
        NullRecordFilter_NULL_RECORD_FILTERValue[] = newNullRecordFilter()
    end
    NullRecordFilter_NULL_RECORD_FILTERValue[]
end
function staticSet_NULL_RECORD_FILTER(::Type{NullRecordFilter}, value)
    NullRecordFilter_NULL_RECORD_FILTERSet[] = true
    NullRecordFilter_NULL_RECORD_FILTERValue[] = value
end

function initFieldsNullRecordFilter(this::NullRecordFilter)
    nothing
end

function initNullRecordFilter(this::NullRecordFilter)
    initFieldsNullRecordFilter(this)
end

function newNullRecordFilter()
    this = NullRecordFilter()
    initNullRecordFilter(this)
    this
end


function matches(this::NullRecordFilter, candidate)
        return true
end

