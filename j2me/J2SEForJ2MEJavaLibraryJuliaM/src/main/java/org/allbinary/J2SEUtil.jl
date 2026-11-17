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

#J2SEForJ2ME
mutable struct J2SEUtil <: JObject
    J2SEUtil() = new()
end

const J2SEUtil_instanceValue = Ref{Any}(nothing)
const J2SEUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{J2SEUtil})
    if !J2SEUtil_instanceSet[]
        J2SEUtil_instanceSet[] = true
        J2SEUtil_instanceValue[] = newJ2SEUtil()
    end
    J2SEUtil_instanceValue[]
end
function staticSet_instance(::Type{J2SEUtil}, value)
    J2SEUtil_instanceSet[] = true
    J2SEUtil_instanceValue[] = value
end

function initFieldsJ2SEUtil(this::J2SEUtil)
    nothing
end

function initJ2SEUtil(this::J2SEUtil)
    initFieldsJ2SEUtil(this)
end

function newJ2SEUtil()
    this = J2SEUtil()
    initJ2SEUtil(this)
    this
end


function getInstance(::Type{J2SEUtil})
        return staticGet_instance(J2SEUtil)
end


function getHashMapAsArray(this::J2SEUtil, hashMap)
        local objectArray = AllBinary.toArray(AllBinary.keySet(hashMap))
        return objectArray
end


function getMapAsArray(this::J2SEUtil, map)
        local objectArray = AllBinary.toArray(AllBinary.keySet(map))
        return objectArray
end


function getSetAsArray(this::J2SEUtil, set)
        local objectArray = AllBinary.toArray(set)
        return objectArray
end

