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

# This is the information sent to the license server
# extends ClientInformation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AbeClientInformation <: JObject
    logUtil::Any
    AbeClientInformation() = new()
end


function initFieldsAbeClientInformation(this::AbeClientInformation)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function initAbeClientInformation(this::AbeClientInformation, name, version, specialName, shortName)
        initClientInformation(this, name, version, specialName, shortName)
        initFieldsAbeClientInformation(this)
        nothing
end

function newAbeClientInformation(name, version, specialName, shortName)
    this = AbeClientInformation()
    initAbeClientInformation(this, name, version, specialName, shortName)
    this
end


function init(this::AbeClientInformation)
        try
            AllBinary.setOperatingSystemInterface(this, AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory)))
            local licenseInitInfo = AllBinary.read(AllBinary.getInstance(LicenseInitInfoUtil))
            AllBinary.setLicenseId(this, AllBinary.getLicenseId(licenseInitInfo))
            AllBinary.setLicenseServers(this, AllBinary.getServerList(licenseInitInfo))
            local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
            if AllBinary.isEmpty(stringValidationUtil, AllBinary.getLicenseId(this))
                local NONE = "No License Id"
                AllBinary.setLicenseId(this, NONE)
            end
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Special Name: "), AllBinary.getSpecialName(this))), this, commonStrings.CONSTRUCTOR)
        catch e
            local logUtil = AllBinary.getInstance(LogUtil)
            commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(logUtil, commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        end
        nothing
end

