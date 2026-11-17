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

mutable struct AbeClientInformationData <: JObject
    KEY::Any
    NAME::Any
    VERSION::Any
    SPECIALNAME::Any
    LICENSEID::Any
    LICENSE_TYPE::Any
    PREVIOUSLICENSEID::Any
    OSNAME::Any
    OSARCH::Any
    OSVERSION::Any
    OS::Any
    HARDWARE::Any
    LICENSESERVERS::Any
    NEWLICENSE::Any
    ISNEW::Any
    SPECIAL::Any
    AbeClientInformationData() = new()
end

const AbeClientInformationData_instanceValue = Ref{Any}(nothing)
const AbeClientInformationData_instanceSet = Ref(false)
function staticGet_instance(::Type{AbeClientInformationData})
    if !AbeClientInformationData_instanceSet[]
        AbeClientInformationData_instanceSet[] = true
        AbeClientInformationData_instanceValue[] = newAbeClientInformationData()
    end
    AbeClientInformationData_instanceValue[]
end
function staticSet_instance(::Type{AbeClientInformationData}, value)
    AbeClientInformationData_instanceSet[] = true
    AbeClientInformationData_instanceValue[] = value
end

function initFieldsAbeClientInformationData(this::AbeClientInformationData)
    this.KEY = nothing
    this.NAME = nothing
    this.VERSION = nothing
    this.SPECIALNAME = nothing
    this.LICENSEID = nothing
    this.LICENSE_TYPE = nothing
    this.PREVIOUSLICENSEID = nothing
    this.OSNAME = nothing
    this.OSARCH = nothing
    this.OSVERSION = nothing
    this.OS = nothing
    this.HARDWARE = nothing
    this.LICENSESERVERS = nothing
    this.NEWLICENSE = nothing
    this.ISNEW = nothing
    this.SPECIAL = nothing
    this.KEY = "KEY"
    this.NAME = "NAME"
    this.VERSION = "VERSION"
    this.SPECIALNAME = "SPECIALNAME"
    this.LICENSEID = "LICENSEID"
    this.LICENSE_TYPE = "LICENSETYPE"
    this.PREVIOUSLICENSEID = "PREVIOUSLICENSEID"
    this.OSNAME = "OSNAME"
    this.OSARCH = "OSARCH"
    this.OSVERSION = "OSVERSION"
    this.OS = "OS"
    this.HARDWARE = "HARDWARE"
    this.LICENSESERVERS = "LICENSESERVERS"
    this.NEWLICENSE = "NEWLICENSE"
    this.ISNEW = "ISNEW"
    this.SPECIAL = "SPECIAL"
    nothing
end


function getInstance(::Type{AbeClientInformationData})
        return staticGet_instance(AbeClientInformationData)
end


function initAbeClientInformationData(this::AbeClientInformationData)
        initFieldsAbeClientInformationData(this)
        nothing
        nothing
end

function newAbeClientInformationData()
    this = AbeClientInformationData()
    initAbeClientInformationData(this)
    this
end

