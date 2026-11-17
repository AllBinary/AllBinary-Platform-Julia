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

# extends GenericOperatingSystem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoOperatingSystem <: JObject
    NoOperatingSystem() = new()
end

const NoOperatingSystem_NO_OPERATING_SYSTEMValue = Ref{Any}(nothing)
const NoOperatingSystem_NO_OPERATING_SYSTEMSet = Ref(false)
function staticGet_NO_OPERATING_SYSTEM(::Type{NoOperatingSystem})
    if !NoOperatingSystem_NO_OPERATING_SYSTEMSet[]
        NoOperatingSystem_NO_OPERATING_SYSTEMSet[] = true
        NoOperatingSystem_NO_OPERATING_SYSTEMValue[] = newGenericOperatingSystem()
    end
    NoOperatingSystem_NO_OPERATING_SYSTEMValue[]
end
function staticSet_NO_OPERATING_SYSTEM(::Type{NoOperatingSystem}, value)
    NoOperatingSystem_NO_OPERATING_SYSTEMSet[] = true
    NoOperatingSystem_NO_OPERATING_SYSTEMValue[] = value
end

function initFieldsNoOperatingSystem(this::NoOperatingSystem)
    nothing
end


function initNoOperatingSystem(this::NoOperatingSystem)
        initGenericOperatingSystem(this)
        initFieldsNoOperatingSystem(this)
        nothing
        nothing
end

function newNoOperatingSystem()
    this = NoOperatingSystem()
    initNoOperatingSystem(this)
    this
end

