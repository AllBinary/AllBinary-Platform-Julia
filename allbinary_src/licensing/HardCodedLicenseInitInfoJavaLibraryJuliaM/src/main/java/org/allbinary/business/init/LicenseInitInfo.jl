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

mutable struct LicenseInitInfo <: JObject
    id::Any
    serverList::Any
    LicenseInitInfo() = new()
end


function initFieldsLicenseInitInfo(this::LicenseInitInfo)
    this.id = nothing
    this.serverList = nothing
    this.id = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.serverList = newBasicArrayListD()
    nothing
end


function initLicenseInitInfo(this::LicenseInitInfo)
        initFieldsLicenseInitInfo(this)
        nothing
        nothing
end

function newLicenseInitInfo()
    this = LicenseInitInfo()
    initLicenseInitInfo(this)
    this
end


function getLicenseId(this::LicenseInitInfo)
        return this.id
end


function getServer(this::LicenseInitInfo, index)
        return (AllBinary.get(this.serverList, index))
end


function getNumberOfServers(this::LicenseInitInfo)
        return AllBinary.size(this.serverList)
end


function setLicenseId(this::LicenseInitInfo, value)
        this.id = value
        nothing
end


function clearServers(this::LicenseInitInfo)
        AllBinary.clear(this.serverList)
        nothing
end


function setServer(this::LicenseInitInfo, value, index)
        AllBinary.addAt(this.serverList, index, value)
        nothing
end


function addServer(this::LicenseInitInfo, value)
        AllBinary.add(this.serverList, value)
        nothing
end


function getServerList(this::LicenseInitInfo)
        return this.serverList
end


function setServerList(this::LicenseInitInfo, servers)
        if AllBinary.getInstance(DebugFactory) == AllBinary.getInstance(NoDebug)
            this.serverList = servers
        end
        nothing
end

