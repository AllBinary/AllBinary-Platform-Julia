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
# package org.allbinary.logic.system

mutable struct PlatformAssetManager <: JObject
    PlatformAssetManager() = new()
end

const PlatformAssetManager_instanceValue = Ref{Any}(nothing)
const PlatformAssetManager_instanceSet = Ref(false)
function staticGet_instance(::Type{PlatformAssetManager})
    if !PlatformAssetManager_instanceSet[]
        PlatformAssetManager_instanceSet[] = true
        PlatformAssetManager_instanceValue[] = newPlatformAssetManager()
    end
    PlatformAssetManager_instanceValue[]
end
function staticSet_instance(::Type{PlatformAssetManager}, value)
    PlatformAssetManager_instanceSet[] = true
    PlatformAssetManager_instanceValue[] = value
end

function initFieldsPlatformAssetManager(this::PlatformAssetManager)
    nothing
end

function initPlatformAssetManager(this::PlatformAssetManager)
    initFieldsPlatformAssetManager(this)
end

function newPlatformAssetManager()
    this = PlatformAssetManager()
    initPlatformAssetManager(this)
    this
end


function getInstance(::Type{PlatformAssetManager})
        return staticGet_instance(PlatformAssetManager)
end


function getResourceAsStream(this::PlatformAssetManager, resource)
        local resourceUtil = AllBinary.getInstance(ResourceUtil)
        local inputStream = AllBinary.getResourceAsStream(resourceUtil, resource)
        return inputStream
end

