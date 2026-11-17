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
# package org.allbinary.logic.system.os.linux

mutable struct LinuxOperatingSystemFactory <: JObject
    logUtil::Any
    LinuxOperatingSystemFactory() = new()
end

const LinuxOperatingSystemFactory_instanceValue = Ref{Any}(nothing)
const LinuxOperatingSystemFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{LinuxOperatingSystemFactory})
    if !LinuxOperatingSystemFactory_instanceSet[]
        LinuxOperatingSystemFactory_instanceSet[] = true
        LinuxOperatingSystemFactory_instanceValue[] = newLinuxOperatingSystemFactory()
    end
    LinuxOperatingSystemFactory_instanceValue[]
end
function staticSet_instance(::Type{LinuxOperatingSystemFactory}, value)
    LinuxOperatingSystemFactory_instanceSet[] = true
    LinuxOperatingSystemFactory_instanceValue[] = value
end

function initFieldsLinuxOperatingSystemFactory(this::LinuxOperatingSystemFactory)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function getInstance(::Type{LinuxOperatingSystemFactory})
        return staticGet_instance(LinuxOperatingSystemFactory)
end


function initLinuxOperatingSystemFactory(this::LinuxOperatingSystemFactory)
        initFieldsLinuxOperatingSystemFactory(this)
        nothing
        nothing
end

function newLinuxOperatingSystemFactory()
    this = LinuxOperatingSystemFactory()
    initLinuxOperatingSystemFactory(this)
    this
end


function getOperatingSystemInstance(this::LinuxOperatingSystemFactory)
        try
            local operatingSystems = AllBinary.getInstance(OperatingSystems)
            local osName = AllBinary.getName(AllBinary.getInstance(SystemProperties))
            local operatingSystemInterface = nothing
            if jCompareTo(osName, operatingSystems.LINUX) == Int32(0)
                operatingSystemInterface = newLinuxOS()
            else
                if AllBinary.isUnknownSpecificOSAllowed(operatingSystems)
                    operatingSystemInterface = newLinuxOS()
                else
                    throw(jNewException("Exception", jstr("Specific Linux OS Not Supported: ") * jstr(osName)))
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

