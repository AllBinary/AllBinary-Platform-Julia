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

mutable struct NullRecordComparator <: JObject
    NullRecordComparator() = new()
end

const NullRecordComparator_NULL_RECORD_COMPARATORValue = Ref{Any}(nothing)
const NullRecordComparator_NULL_RECORD_COMPARATORSet = Ref(false)
function staticGet_NULL_RECORD_COMPARATOR(::Type{NullRecordComparator})
    if !NullRecordComparator_NULL_RECORD_COMPARATORSet[]
        NullRecordComparator_NULL_RECORD_COMPARATORSet[] = true
        NullRecordComparator_NULL_RECORD_COMPARATORValue[] = newNullRecordComparator()
    end
    NullRecordComparator_NULL_RECORD_COMPARATORValue[]
end
function staticSet_NULL_RECORD_COMPARATOR(::Type{NullRecordComparator}, value)
    NullRecordComparator_NULL_RECORD_COMPARATORSet[] = true
    NullRecordComparator_NULL_RECORD_COMPARATORValue[] = value
end

function initFieldsNullRecordComparator(this::NullRecordComparator)
    nothing
end

function initNullRecordComparator(this::NullRecordComparator)
    initFieldsNullRecordComparator(this)
end

function newNullRecordComparator()
    this = NullRecordComparator()
    initNullRecordComparator(this)
    this
end


function compare(this::NullRecordComparator, rec1, rec2)
        return Int32(0)
end

