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
# package org.allbinary

#J2ME
mutable struct TsUtil <: JObject
    TsUtil() = new()
end

const TsUtil_instanceValue = Ref{Any}(nothing)
const TsUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{TsUtil})
    if !TsUtil_instanceSet[]
        TsUtil_instanceSet[] = true
        TsUtil_instanceValue[] = newTsUtil()
    end
    TsUtil_instanceValue[]
end
function staticSet_instance(::Type{TsUtil}, value)
    TsUtil_instanceSet[] = true
    TsUtil_instanceValue[] = value
end

function initFieldsTsUtil(this::TsUtil)
    nothing
end

function initTsUtil(this::TsUtil)
    initFieldsTsUtil(this)
end

function newTsUtil()
    this = TsUtil()
    initTsUtil(this)
    this
end


function getInstance(::Type{TsUtil})
        return staticGet_instance(TsUtil)
end


function hashCode(this::TsUtil, anyType)
        return AllBinary.hashCode(anyType)
end


function waitFor(this::TsUtil, any, timeoutMillis)
        local anyType = (any)
        AllBinary.wait(anyType, timeoutMillis)
        nothing
end


function getRecord(this::TsUtil, anyType, recordId)
        local recordStore = (anyType)
        local data = nothing
        begin
            data = jNewArray(Int8, AllBinary.getRecordSize(recordStore, recordId), Int8(0))
            AllBinary.getRecord(recordStore, recordId, data, Int32(0))
        end
        return (Int32(Base.length(data)) < Int32(1) ? AllBinary.getInstance(NullUtil).NULL_BYTE_ARRAY : data)
end


function compareTo(this::TsUtil, a, b)
        return jCompareTo(a, b)
end


function equalIgnoreCase(this::TsUtil, a, b)
        return jEqualsIgnoreCase(a, b)
end


function equalsNotstring(this::TsUtil, anyType, object2)
        return AllBinary.equals(anyType, object2)
end


function toNumberFromChar(this::TsUtil, value)
        return ((value) % Int32)
end


function toNumber(this::TsUtil, value)
        return value
end


function getByteArray(this::TsUtil, string)
        return jGetBytes(string)
end


function isItemListener(this::TsUtil, owner)
        if Base.isa(owner, Form)
            return true
        else
            return false
        end
end


function printAvailableMethods(this::TsUtil, anyType)
        nothing
        nothing
end


function gc(this::TsUtil)
        AllBinary.gc(System)
        nothing
end

