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

mutable struct LicenseStrings <: JObject
    LOCKED::Any
    LicenseStrings() = new()
end

const LicenseStrings_instanceValue = Ref{Any}(nothing)
const LicenseStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{LicenseStrings})
    if !LicenseStrings_instanceSet[]
        LicenseStrings_instanceSet[] = true
        LicenseStrings_instanceValue[] = newLicenseStrings()
    end
    LicenseStrings_instanceValue[]
end
function staticSet_instance(::Type{LicenseStrings}, value)
    LicenseStrings_instanceSet[] = true
    LicenseStrings_instanceValue[] = value
end

function initFieldsLicenseStrings(this::LicenseStrings)
    this.LOCKED = nothing
    this.LOCKED = "Demo Locked Feature"
    nothing
end

function initLicenseStrings(this::LicenseStrings)
    initFieldsLicenseStrings(this)
end

function newLicenseStrings()
    this = LicenseStrings()
    initLicenseStrings(this)
    this
end


function getInstance(::Type{LicenseStrings})
        return staticGet_instance(LicenseStrings)
end

