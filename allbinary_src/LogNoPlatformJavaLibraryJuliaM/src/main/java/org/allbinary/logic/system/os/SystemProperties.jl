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
# package org.allbinary.logic.system.os

#NoPlatform
mutable struct SystemProperties <: JObject
    SystemProperties() = new()
end

const SystemProperties_instanceValue = Ref{Any}(nothing)
const SystemProperties_instanceSet = Ref(false)
function staticGet_instance(::Type{SystemProperties})
    if !SystemProperties_instanceSet[]
        SystemProperties_instanceSet[] = true
        SystemProperties_instanceValue[] = newSystemProperties()
    end
    SystemProperties_instanceValue[]
end
function staticSet_instance(::Type{SystemProperties}, value)
    SystemProperties_instanceSet[] = true
    SystemProperties_instanceValue[] = value
end

function initFieldsSystemProperties(this::SystemProperties)
    nothing
end


function getInstance(::Type{SystemProperties})
        return staticGet_instance(SystemProperties)
end


function initSystemProperties(this::SystemProperties)
        initFieldsSystemProperties(this)
        nothing
        nothing
end

function newSystemProperties()
    this = SystemProperties()
    initSystemProperties(this)
    this
end


function getName(this::SystemProperties)
        throw(jNewException("RuntimeException", ""))
end


function getArch(this::SystemProperties)
        throw(jNewException("RuntimeException", ""))
end


function getVersion(this::SystemProperties)
        throw(jNewException("RuntimeException", ""))
end


function getUserHomePath(this::SystemProperties)
        throw(jNewException("RuntimeException", ""))
end

