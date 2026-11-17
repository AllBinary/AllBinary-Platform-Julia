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
# package org.allbinary.logic.system.os

mutable struct GenericOperatingSystem <: JObject
    osName::Any
    osArch::Any
    osVersion::Any
    characterSet::Any
    scalable::Bool
    GenericOperatingSystem() = new()
end


function initFieldsGenericOperatingSystem(this::GenericOperatingSystem)
    this.osName = nothing
    this.osArch = nothing
    this.osVersion = nothing
    this.characterSet = nothing
    this.scalable = false
    this.osName = nothing
    this.osArch = nothing
    this.osVersion = nothing
    this.characterSet = newCharacterSet()
    this.scalable = false
    nothing
end


function initGenericOperatingSystem(this::GenericOperatingSystem)
        initFieldsGenericOperatingSystem(this)
        local systemProperties = AllBinary.getInstance(SystemProperties)
        local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
        local EMPTY_STRING = AllBinary.getInstance(StringUtil).EMPTY_STRING
        if AllBinary.isEmpty(stringValidationUtil, AllBinary.getName(systemProperties))
            this.osName = EMPTY_STRING
        else
            this.osName = AllBinary.getName(systemProperties)
        end
        if AllBinary.isEmpty(stringValidationUtil, AllBinary.getArch(systemProperties))
            this.osArch = EMPTY_STRING
        else
            this.osArch = AllBinary.getArch(systemProperties)
        end
        if AllBinary.isEmpty(stringValidationUtil, AllBinary.getVersion(systemProperties))
            this.osVersion = EMPTY_STRING
        else
            this.osVersion = AllBinary.getVersion(systemProperties)
        end
        nothing
end

function newGenericOperatingSystem()
    this = GenericOperatingSystem()
    initGenericOperatingSystem(this)
    this
end


function getName(this::GenericOperatingSystem)
        return this.osName
end


function getVersion(this::GenericOperatingSystem)
        return this.osVersion
end


function getArch(this::GenericOperatingSystem)
        return this.osArch
end


function getCharacterSet(this::GenericOperatingSystem)
        return this.characterSet
end


function isOverScan(this::GenericOperatingSystem)
        return false
end


function getOverScanXPercent(this::GenericOperatingSystem)
        return Int32(100)
end


function getOverScanYPercent(this::GenericOperatingSystem)
        return Int32(100)
end


function isScalable(this::GenericOperatingSystem)
        return this.scalable
end


function isAutoHide(this::GenericOperatingSystem)
        return false
end


function toString(this::GenericOperatingSystem)
        local NEW_LINE = AllBinary.getInstance(CommonSeps).NEW_LINE
        local osBuffer = newStringMaker()
        AllBinary.append(osBuffer, "Operating System Info: \n")
        AllBinary.append(osBuffer, AllBinary.getName(this))
        AllBinary.append(osBuffer, NEW_LINE)
        AllBinary.append(osBuffer, AllBinary.getArch(this))
        AllBinary.append(osBuffer, NEW_LINE)
        AllBinary.append(osBuffer, AllBinary.getVersion(this))
        AllBinary.append(osBuffer, NEW_LINE)
        AllBinary.append(osBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), AllBinary.getCharacterSet(this)))
        AllBinary.append(osBuffer, NEW_LINE)
        return AllBinary.toString(osBuffer)
end

