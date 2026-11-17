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
# package org.allbinary.business.init

mutable struct LicenseInitInfoUtil <: JObject
    INITFILENAME::Any
    ABOUT::Any
    PRIVACY_POLICY::Any
    OFFICIAL_ALLBINARY_SERVICES_SERVER::Any
    LicenseInitInfoUtil() = new()
end

const LicenseInitInfoUtil_instanceValue = Ref{Any}(nothing)
const LicenseInitInfoUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LicenseInitInfoUtil})
    if !LicenseInitInfoUtil_instanceSet[]
        LicenseInitInfoUtil_instanceSet[] = true
        LicenseInitInfoUtil_instanceValue[] = newLicenseInitInfoUtil()
    end
    LicenseInitInfoUtil_instanceValue[]
end
function staticSet_instance(::Type{LicenseInitInfoUtil}, value)
    LicenseInitInfoUtil_instanceSet[] = true
    LicenseInitInfoUtil_instanceValue[] = value
end

function initFieldsLicenseInitInfoUtil(this::LicenseInitInfoUtil)
    this.INITFILENAME = nothing
    this.ABOUT = nothing
    this.PRIVACY_POLICY = nothing
    this.OFFICIAL_ALLBINARY_SERVICES_SERVER = nothing
    this.INITFILENAME = "licenseinitdata.dat"
    this.ABOUT = "about"
    this.PRIVACY_POLICY = "privacy_policy"
    this.OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php"
    nothing
end


function getInstance(::Type{LicenseInitInfoUtil})
        return staticGet_instance(LicenseInitInfoUtil)
end


function setFilePath(this::LicenseInitInfoUtil, filePath)
        nothing
        nothing
end


function initLicenseInitInfoUtil(this::LicenseInitInfoUtil)
        initFieldsLicenseInitInfoUtil(this)
        nothing
        nothing
end

function newLicenseInitInfoUtil()
    this = LicenseInitInfoUtil()
    initLicenseInitInfoUtil(this)
    this
end


function write(this::LicenseInitInfoUtil, initData)
        nothing
        nothing
end


function read(this::LicenseInitInfoUtil)
        return AllBinary.readAgain(this, Int32(0))
end


function readAgain(this::LicenseInitInfoUtil, initializeCounter)
        local licenseInitInfo = newLicenseInitInfo()
        AllBinary.clearServers(licenseInitInfo)
        AllBinary.addServer(licenseInitInfo, this.OFFICIAL_ALLBINARY_SERVICES_SERVER)
        return licenseInitInfo
end

