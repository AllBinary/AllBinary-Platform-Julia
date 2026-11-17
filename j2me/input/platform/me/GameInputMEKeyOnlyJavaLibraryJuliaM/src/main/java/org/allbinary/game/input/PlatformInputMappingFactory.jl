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
# package org.allbinary.game.input

mutable struct PlatformInputMappingFactory <: JObject
    logUtil::Any
    inputToGameKeyMapping::Any
    PlatformInputMappingFactory() = new()
end

const PlatformInputMappingFactory_instanceValue = Ref{Any}(nothing)
const PlatformInputMappingFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{PlatformInputMappingFactory})
    if !PlatformInputMappingFactory_instanceSet[]
        PlatformInputMappingFactory_instanceSet[] = true
        PlatformInputMappingFactory_instanceValue[] = newPlatformInputMappingFactory()
    end
    PlatformInputMappingFactory_instanceValue[]
end
function staticSet_instance(::Type{PlatformInputMappingFactory}, value)
    PlatformInputMappingFactory_instanceSet[] = true
    PlatformInputMappingFactory_instanceValue[] = value
end

function initFieldsPlatformInputMappingFactory(this::PlatformInputMappingFactory)
    this.logUtil = nothing
    this.inputToGameKeyMapping = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.inputToGameKeyMapping = AllBinary.getNullInstance(PersistentInputMapping)
    nothing
end

function initPlatformInputMappingFactory(this::PlatformInputMappingFactory)
    initFieldsPlatformInputMappingFactory(this)
end

function newPlatformInputMappingFactory()
    this = PlatformInputMappingFactory()
    initPlatformInputMappingFactory(this)
    this
end


function getInstance(::Type{PlatformInputMappingFactory})
        return staticGet_instance(PlatformInputMappingFactory)
end


function getPersistentInputMappingInstance(this::PlatformInputMappingFactory)
        try
            if this.inputToGameKeyMapping === AllBinary.getNullInstance(PersistentInputMapping)
                this.inputToGameKeyMapping = newNormalJ2MEGameInputMapping()
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
        end
        return this.inputToGameKeyMapping
end

