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
# package org.allbinary.logic.system.os.solaris

mutable struct SolarisOperatingSystemFactory <: JObject
    logUtil::Any
    SolarisOperatingSystemFactory() = new()
end

const SolarisOperatingSystemFactory_instanceValue = Ref{Any}(nothing)
const SolarisOperatingSystemFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{SolarisOperatingSystemFactory})
    if !SolarisOperatingSystemFactory_instanceSet[]
        SolarisOperatingSystemFactory_instanceSet[] = true
        SolarisOperatingSystemFactory_instanceValue[] = newSolarisOperatingSystemFactory()
    end
    SolarisOperatingSystemFactory_instanceValue[]
end
function staticSet_instance(::Type{SolarisOperatingSystemFactory}, value)
    SolarisOperatingSystemFactory_instanceSet[] = true
    SolarisOperatingSystemFactory_instanceValue[] = value
end

function initFieldsSolarisOperatingSystemFactory(this::SolarisOperatingSystemFactory)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function getInstance(::Type{SolarisOperatingSystemFactory})
        return staticGet_instance(SolarisOperatingSystemFactory)
end


function initSolarisOperatingSystemFactory(this::SolarisOperatingSystemFactory)
        initFieldsSolarisOperatingSystemFactory(this)
        nothing
        nothing
end

function newSolarisOperatingSystemFactory()
    this = SolarisOperatingSystemFactory()
    initSolarisOperatingSystemFactory(this)
    this
end


function getOperatingSystemInstance(this::SolarisOperatingSystemFactory)
        try
            local operatingSystems = AllBinary.getInstance(OperatingSystems)
            local osName = AllBinary.getName(AllBinary.getInstance(SystemProperties))
            local operatingSystemInterface = nothing
            if jCompareTo(osName, operatingSystems.SOLARIS) == Int32(0)
                operatingSystemInterface = newSolarisOS()
            else
                if AllBinary.isUnknownSpecificOSAllowed(operatingSystems)
                    operatingSystemInterface = newSolarisOS()
                else
                    throw(jNewException("Exception", jstr("Specific Solaris OS Not Supported: ") * jstr(osName)))
                end
            end
            return operatingSystemInterface
        catch e
            if AllBinary.contains(staticGet_LOGGING(LogConfigTypes), AllBinary.getInstance(LogConfigTypeFactory).FACTORYERROR)
                local commonStrings = AllBinary.getInstance(CommonStrings)
                AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            end
            return staticGet_NO_OPERATING_SYSTEM(NoOperatingSystem)
        end
end

