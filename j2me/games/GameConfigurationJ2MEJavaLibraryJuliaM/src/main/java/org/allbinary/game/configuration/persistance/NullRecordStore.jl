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

# extends RecordStore: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullRecordStore <: JObject
    NullRecordStore() = new()
end

const NullRecordStore_NULL_RECORD_STOREValue = Ref{Any}(nothing)
const NullRecordStore_NULL_RECORD_STORESet = Ref(false)
function staticGet_NULL_RECORD_STORE(::Type{NullRecordStore})
    if !NullRecordStore_NULL_RECORD_STORESet[]
        NullRecordStore_NULL_RECORD_STORESet[] = true
        NullRecordStore_NULL_RECORD_STOREValue[] = newNullRecordStore()
    end
    NullRecordStore_NULL_RECORD_STOREValue[]
end
function staticSet_NULL_RECORD_STORE(::Type{NullRecordStore}, value)
    NullRecordStore_NULL_RECORD_STORESet[] = true
    NullRecordStore_NULL_RECORD_STOREValue[] = value
end

function initFieldsNullRecordStore(this::NullRecordStore)
    nothing
end

function initNullRecordStore(this::NullRecordStore)
    initRecordStore(this)
    initFieldsNullRecordStore(this)
end

function newNullRecordStore()
    this = NullRecordStore()
    initNullRecordStore(this)
    this
end

