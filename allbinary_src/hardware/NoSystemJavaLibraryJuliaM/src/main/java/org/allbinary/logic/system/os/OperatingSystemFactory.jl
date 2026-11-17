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

mutable struct OperatingSystemFactory <: JObject
    logUtil::Any
    genericOperatingSystem::Any
    OperatingSystemFactory() = new()
end

const OperatingSystemFactory_instanceValue = Ref{Any}(nothing)
const OperatingSystemFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{OperatingSystemFactory})
    if !OperatingSystemFactory_instanceSet[]
        OperatingSystemFactory_instanceSet[] = true
        OperatingSystemFactory_instanceValue[] = newOperatingSystemFactory()
    end
    OperatingSystemFactory_instanceValue[]
end
function staticSet_instance(::Type{OperatingSystemFactory}, value)
    OperatingSystemFactory_instanceSet[] = true
    OperatingSystemFactory_instanceValue[] = value
end

function initFieldsOperatingSystemFactory(this::OperatingSystemFactory)
    this.logUtil = nothing
    this.genericOperatingSystem = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.genericOperatingSystem = staticGet_NO_OPERATING_SYSTEM(NoOperatingSystem)
    nothing
end


function getInstance(::Type{OperatingSystemFactory})
        return staticGet_instance(OperatingSystemFactory)
end


function initOperatingSystemFactory(this::OperatingSystemFactory)
        initFieldsOperatingSystemFactory(this)
        nothing
        nothing
end

function newOperatingSystemFactory()
    this = OperatingSystemFactory()
    initOperatingSystemFactory(this)
    this
end


function getOperatingSystemInstance(this::OperatingSystemFactory)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        try
            local osString = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "OperatingSystem Info: "), AllBinary.toString(this.genericOperatingSystem)))
            Base.println(jstr(osString))
            AllBinary.putF(this.logUtil, osString, this, commonStrings.GET_INSTANCE)
        catch e
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
        end
        return this.genericOperatingSystem
end

