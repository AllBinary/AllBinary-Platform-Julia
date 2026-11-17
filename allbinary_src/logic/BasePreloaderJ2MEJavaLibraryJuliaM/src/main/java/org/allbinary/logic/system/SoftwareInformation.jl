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
# package org.allbinary.logic.system

mutable struct SoftwareInformation <: JObject
    name::Any
    shortName::Any
    version::Any
    SoftwareInformation() = new()
end


function initFieldsSoftwareInformation(this::SoftwareInformation)
    this.name = nothing
    this.shortName = nothing
    this.version = nothing
    
    
    
    nothing
end


function initSoftwareInformation(this::SoftwareInformation, name, version, shortName)
        initFieldsSoftwareInformation(this)
        this.name = name
        this.version = version
        this.shortName = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), shortName), AllBinary.getShortName(KotlinUtil)))
        nothing
end

function newSoftwareInformation(name, version, shortName)
    this = SoftwareInformation()
    initSoftwareInformation(this, name, version, shortName)
    this
end


function getName(this::SoftwareInformation)
        return this.name
end


function getVersion(this::SoftwareInformation)
        return this.version
end


function toShortString(this::SoftwareInformation)
        return this.shortName
end


function toString(this::SoftwareInformation)
        local NAME = "Name: "
        local VERSION = "Version: "
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, NAME)
        AllBinary.append(stringBuffer, AllBinary.getName(this))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, VERSION)
        AllBinary.append(stringBuffer, AllBinary.getVersion(this))
        return AllBinary.toString(stringBuffer)
end

