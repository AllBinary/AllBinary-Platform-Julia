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
# package org.allbinary.logic.system.security.licensing

mutable struct LockedUtil <: JObject
    LockedUtil() = new()
end

const LockedUtil_instanceValue = Ref{Any}(nothing)
const LockedUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LockedUtil})
    if !LockedUtil_instanceSet[]
        LockedUtil_instanceSet[] = true
        LockedUtil_instanceValue[] = newLockedUtil()
    end
    LockedUtil_instanceValue[]
end
function staticSet_instance(::Type{LockedUtil}, value)
    LockedUtil_instanceSet[] = true
    LockedUtil_instanceValue[] = value
end

function initFieldsLockedUtil(this::LockedUtil)
    nothing
end

function initLockedUtil(this::LockedUtil)
    initFieldsLockedUtil(this)
end

function newLockedUtil()
    this = LockedUtil()
    initLockedUtil(this)
    this
end


function getInstance(::Type{LockedUtil})
        return staticGet_instance(LockedUtil)
end


function isLocked(this::LockedUtil)
        return false
end


function isLockedFeature(this::LockedUtil, lockableFeatrue)
        return false
end

