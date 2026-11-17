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

mutable struct LicenseUtil <: JObject
    LicenseUtil() = new()
end

const LicenseUtil_instanceValue = Ref{Any}(nothing)
const LicenseUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LicenseUtil})
    if !LicenseUtil_instanceSet[]
        LicenseUtil_instanceSet[] = true
        LicenseUtil_instanceValue[] = newLicenseUtil()
    end
    LicenseUtil_instanceValue[]
end
function staticSet_instance(::Type{LicenseUtil}, value)
    LicenseUtil_instanceSet[] = true
    LicenseUtil_instanceValue[] = value
end

function initFieldsLicenseUtil(this::LicenseUtil)
    nothing
end

function initLicenseUtil(this::LicenseUtil)
    initFieldsLicenseUtil(this)
end

function newLicenseUtil()
    this = LicenseUtil()
    initLicenseUtil(this)
    this
end


function getInstance(::Type{LicenseUtil})
        return staticGet_instance(LicenseUtil)
end


function init(this::LicenseUtil)
        nothing
        nothing
end


function isRunning(this::LicenseUtil)
        return false
end


function setRunning(this::LicenseUtil, running)
        nothing
        nothing
end


function shouldWait(this::LicenseUtil, commandListener)
        return AllBinary.isRunning(this)
end

