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
# package org.allbinary.game.midlet

mutable struct LicenseLevelUtil <: JObject
    LicenseLevelUtil() = new()
end

const LicenseLevelUtil_instanceValue = Ref{Any}(nothing)
const LicenseLevelUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LicenseLevelUtil})
    if !LicenseLevelUtil_instanceSet[]
        LicenseLevelUtil_instanceSet[] = true
        LicenseLevelUtil_instanceValue[] = newLicenseLevelUtil()
    end
    LicenseLevelUtil_instanceValue[]
end
function staticSet_instance(::Type{LicenseLevelUtil}, value)
    LicenseLevelUtil_instanceSet[] = true
    LicenseLevelUtil_instanceValue[] = value
end

function initFieldsLicenseLevelUtil(this::LicenseLevelUtil)
    nothing
end

function initLicenseLevelUtil(this::LicenseLevelUtil)
    initFieldsLicenseLevelUtil(this)
end

function newLicenseLevelUtil()
    this = LicenseLevelUtil()
    initLicenseLevelUtil(this)
    this
end


function getInstance(::Type{LicenseLevelUtil})
        return staticGet_instance(LicenseLevelUtil)
end


function getMaxLevel(this::LicenseLevelUtil, maxLevel, demoLevel)
        return maxLevel
end

