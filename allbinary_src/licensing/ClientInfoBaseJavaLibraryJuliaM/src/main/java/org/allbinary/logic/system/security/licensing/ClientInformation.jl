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
mutable struct ClientInformation <: JObject
    operatingSystemInterface::Any
    tsUtil::Any
    name::Any
    shortName::Any
    version::Any
    specialName::Any
    hardSale::Bool
    licenseId::Any
    licenseServers::Any
    ClientInformation() = new()
end


function initFieldsClientInformation(this::ClientInformation)
    this.operatingSystemInterface = nothing
    this.tsUtil = nothing
    this.name = nothing
    this.shortName = nothing
    this.version = nothing
    this.specialName = nothing
    this.hardSale = false
    this.licenseId = nothing
    this.licenseServers = nothing
    this.operatingSystemInterface = staticGet_NO_OPERATING_SYSTEM(NoOperatingSystem)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    
    
    
    
    this.hardSale = true
    this.licenseId = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.licenseServers = AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
    nothing
end


function initClientInformation(this::ClientInformation, name, version, specialName, shortName)
        initFieldsClientInformation(this)
        this.name = name
        this.version = version
        this.specialName = specialName
        this.shortName = AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), shortName), AllBinary.getInstance(CommonSeps).UNDERSCORE), version))
        AllBinary.init(this)
        nothing
end

function newClientInformation(name, version, specialName, shortName)
    this = ClientInformation()
    initClientInformation(this, name, version, specialName, shortName)
    this
end


function init(this::ClientInformation)
        nothing
        nothing
end


function getOperatingSystemInterface(this::ClientInformation)
        return this.operatingSystemInterface
end


function getName(this::ClientInformation)
        return this.name
end


function getSpecialName(this::ClientInformation)
        return this.specialName
end


function getVersion(this::ClientInformation)
        return this.version
end


function getLicenseId(this::ClientInformation)
        return this.licenseId
end


function getLicenseServers(this::ClientInformation)
        return this.licenseServers
end


function getLicenseServer(this::ClientInformation, index)
        return (this.licenseServers.objectArray[index + 1])
end


function getNumberOfLicenseServers(this::ClientInformation)
        return AllBinary.size(this.licenseServers)
end


function toHashtable(this::ClientInformation)
        local abeClientInformationData = AllBinary.getInstance(AbeClientInformationData)
        local genericOperatingSystem = AllBinary.getOperatingSystemInterface(this)
        local clientInfoHashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
        AllBinary.put(clientInfoHashtable, abeClientInformationData.NAME, this.name)
        AllBinary.put(clientInfoHashtable, abeClientInformationData.VERSION, this.version)
        AllBinary.put(clientInfoHashtable, abeClientInformationData.SPECIALNAME, this.specialName)
        AllBinary.put(clientInfoHashtable, abeClientInformationData.LICENSEID, AllBinary.getLicenseId(this))
        AllBinary.put(clientInfoHashtable, abeClientInformationData.OSNAME, AllBinary.getName(genericOperatingSystem))
        AllBinary.put(clientInfoHashtable, abeClientInformationData.OSARCH, AllBinary.getArch(genericOperatingSystem))
        AllBinary.put(clientInfoHashtable, abeClientInformationData.OSVERSION, AllBinary.getVersion(genericOperatingSystem))
        AllBinary.put(clientInfoHashtable, abeClientInformationData.OS, AllBinary.toString(genericOperatingSystem))
        local hardwareInterface = AllBinary.getInstance(AllBinary.getInstance(SystemHardwareFactory), genericOperatingSystem)
        local hardwareString = AllBinary.toString(hardwareInterface)
        AllBinary.put(clientInfoHashtable, abeClientInformationData.HARDWARE, hardwareString)
        return clientInfoHashtable
end


function isSameId(this::ClientInformation, alicenseId)
        if AllBinary.compareTo(this.tsUtil, AllBinary.getLicenseId(this), alicenseId) == Int32(0)
            return true
        else
            return false
        end
end


function isLargerOrDifferentServerList(this::ClientInformation, list)
        local size::Int32 = AllBinary.size(list) - Int32(1)
        local currentSize::Int32 = AllBinary.size(this.licenseServers) - Int32(1)
        if size > currentSize
            return true
        end
        let
            local index::Int32 = size
            while index >= Int32(0)
            try
            local newServerName = (list.objectArray[index + 1])
            let
                local index2::Int32 = currentSize
                while index2 >= Int32(0)
                try
                local nextOldServerName = (this.licenseServers.objectArray[index + 1])
                if AllBinary.compareTo(this.tsUtil, newServerName, nextOldServerName) != Int32(0)
                    return true
                end
                finally
                    index2 -= Int32(1)
                end
                end
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return false
end


function setHardSale(this::ClientInformation, hardSale)
        this.hardSale = hardSale
        nothing
end


function isHardSale(this::ClientInformation)
        return this.hardSale
end


function setOperatingSystemInterface(this::ClientInformation, operatingSystemInterface)
        this.operatingSystemInterface = operatingSystemInterface
        nothing
end


function setLicenseId(this::ClientInformation, licenseId)
        this.licenseId = licenseId
        nothing
end


function setLicenseServers(this::ClientInformation, licenseServers)
        this.licenseServers = licenseServers
        nothing
end


function toShortString(this::ClientInformation)
        return this.shortName
end

