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
# package org.allbinary.util

mutable struct HashtableUtil <: JObject
    enumerationUtil::Any
    HashtableUtil() = new()
end

const HashtableUtil_instanceValue = Ref{Any}(nothing)
const HashtableUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{HashtableUtil})
    if !HashtableUtil_instanceSet[]
        HashtableUtil_instanceSet[] = true
        HashtableUtil_instanceValue[] = newHashtableUtil()
    end
    HashtableUtil_instanceValue[]
end
function staticSet_instance(::Type{HashtableUtil}, value)
    HashtableUtil_instanceSet[] = true
    HashtableUtil_instanceValue[] = value
end

function initFieldsHashtableUtil(this::HashtableUtil)
    this.enumerationUtil = nothing
    this.enumerationUtil = AllBinary.getInstance(EnumerationUtil)
    nothing
end

function initHashtableUtil(this::HashtableUtil)
    initFieldsHashtableUtil(this)
end

function newHashtableUtil()
    this = HashtableUtil()
    initHashtableUtil(this)
    this
end


function getInstance(::Type{HashtableUtil})
        return staticGet_instance(HashtableUtil)
end


function putAll(this::HashtableUtil, fromHashtable, hashtable)
        local enumeration = AllBinary.keys(fromHashtable)
        local keyCanBeNull = nothing
        local valueCanBeNull = nothing
        while AllBinary.hasMoreElements(this.enumerationUtil, enumeration)
            keyCanBeNull = AllBinary.nextElement(this.enumerationUtil, enumeration)
            valueCanBeNull = AllBinary.get(hashtable, keyCanBeNull)
            if valueCanBeNull === nothing
                nothing
            else
                AllBinary.put(hashtable, keyCanBeNull, valueCanBeNull)
            end
        end
        nothing
end


function getKeysAsArray(this::HashtableUtil, hashtable)
        local objectArray = jNewArray(Any, AllBinary.size(hashtable), nothing)
        local index::Int32 = Int32(0)
        local enumeration = AllBinary.keys(hashtable)
        while AllBinary.hasMoreElements(this.enumerationUtil, enumeration)
            objectArray[(let old = index; index += Int32(1); old end) + 1] = AllBinary.nextElement(this.enumerationUtil, enumeration)
        end
        return objectArray
end


function getKeysAsList(this::HashtableUtil, hashtable)
        local list = newBasicArrayListS(AllBinary.size(hashtable))
        local enumeration = AllBinary.keys(hashtable)
        while AllBinary.hasMoreElements(this.enumerationUtil, enumeration)
            AllBinary.add(list, AllBinary.nextElement(this.enumerationUtil, enumeration))
        end
        return list
end

