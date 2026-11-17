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
# package org.allbinary.util

#ArkTs does not have this.  So this is for the ArkTs build.
mutable struct EnumerationUtil <: JObject
    EnumerationUtil() = new()
end

const EnumerationUtil_instanceValue = Ref{Any}(nothing)
const EnumerationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{EnumerationUtil})
    if !EnumerationUtil_instanceSet[]
        EnumerationUtil_instanceSet[] = true
        EnumerationUtil_instanceValue[] = newEnumerationUtil()
    end
    EnumerationUtil_instanceValue[]
end
function staticSet_instance(::Type{EnumerationUtil}, value)
    EnumerationUtil_instanceSet[] = true
    EnumerationUtil_instanceValue[] = value
end

function initFieldsEnumerationUtil(this::EnumerationUtil)
    nothing
end

function initEnumerationUtil(this::EnumerationUtil)
    initFieldsEnumerationUtil(this)
end

function newEnumerationUtil()
    this = EnumerationUtil()
    initEnumerationUtil(this)
    this
end


function getInstance(::Type{EnumerationUtil})
        return staticGet_instance(EnumerationUtil)
end


function hasMoreElements(this::EnumerationUtil, enumeration)
        return AllBinary.hasMoreElements(enumeration)
end


function nextElement(this::EnumerationUtil, enumeration)
        return AllBinary.nextElement(enumeration)
end


function getAsArray(this::EnumerationUtil, enumeration)
        local basicArrayList = newBasicArrayListD()
        while AllBinary.hasMoreElements(this, enumeration)
            AllBinary.add(basicArrayList, AllBinary.nextElement(this, enumeration))
        end
        return AllBinary.toArray(basicArrayList)
end

