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
# package org.allbinary.time

mutable struct LicenseStupidTimerFactory <: JObject
    LicenseStupidTimerFactory() = new()
end

const LicenseStupidTimerFactory_instanceValue = Ref{Any}(nothing)
const LicenseStupidTimerFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{LicenseStupidTimerFactory})
    if !LicenseStupidTimerFactory_instanceSet[]
        LicenseStupidTimerFactory_instanceSet[] = true
        LicenseStupidTimerFactory_instanceValue[] = newStupidTimer()
    end
    LicenseStupidTimerFactory_instanceValue[]
end
function staticSet_instance(::Type{LicenseStupidTimerFactory}, value)
    LicenseStupidTimerFactory_instanceSet[] = true
    LicenseStupidTimerFactory_instanceValue[] = value
end

function initFieldsLicenseStupidTimerFactory(this::LicenseStupidTimerFactory)
    nothing
end

function initLicenseStupidTimerFactory(this::LicenseStupidTimerFactory)
    initFieldsLicenseStupidTimerFactory(this)
end

function newLicenseStupidTimerFactory()
    this = LicenseStupidTimerFactory()
    initLicenseStupidTimerFactory(this)
    this
end


function getInstance(::Type{LicenseStupidTimerFactory})
        return staticGet_instance(LicenseStupidTimerFactory)
end

