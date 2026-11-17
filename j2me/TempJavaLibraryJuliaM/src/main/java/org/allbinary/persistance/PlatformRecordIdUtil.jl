#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.persistance

mutable struct PlatformRecordIdUtil <: JObject
    PLATFORM_SHORT_NAME::Any
    PlatformRecordIdUtil() = new()
end

const PlatformRecordIdUtil_instanceValue = Ref{Any}(nothing)
const PlatformRecordIdUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{PlatformRecordIdUtil})
    if !PlatformRecordIdUtil_instanceSet[]
        PlatformRecordIdUtil_instanceSet[] = true
        PlatformRecordIdUtil_instanceValue[] = newPlatformRecordIdUtil()
    end
    PlatformRecordIdUtil_instanceValue[]
end
function staticSet_instance(::Type{PlatformRecordIdUtil}, value)
    PlatformRecordIdUtil_instanceSet[] = true
    PlatformRecordIdUtil_instanceValue[] = value
end

function initFieldsPlatformRecordIdUtil(this::PlatformRecordIdUtil)
    this.PLATFORM_SHORT_NAME = nothing
    this.PLATFORM_SHORT_NAME = "AVN"
    nothing
end

function initPlatformRecordIdUtil(this::PlatformRecordIdUtil)
    initFieldsPlatformRecordIdUtil(this)
end

function newPlatformRecordIdUtil()
    this = PlatformRecordIdUtil()
    initPlatformRecordIdUtil(this)
    this
end


function getInstance(::Type{PlatformRecordIdUtil})
        return staticGet_instance(PlatformRecordIdUtil)
end


function getRecordId(this::PlatformRecordIdUtil, abeClientInformation, baseRecordId)
        return AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toShortString(abeClientInformation)), AllBinary.getInstance(CommonSeps).UNDERSCORE), this.PLATFORM_SHORT_NAME), baseRecordId))
end

