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
    commonStrings::Any
    genericOperatingSystem::Any
    hasDetected::Bool
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
    this.commonStrings = nothing
    this.genericOperatingSystem = nothing
    this.hasDetected = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.genericOperatingSystem = staticGet_NO_OPERATING_SYSTEM(NoOperatingSystem)
    this.hasDetected = false
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
        try
            local operatingSystems = AllBinary.getInstance(OperatingSystems)
            local systemProperties = AllBinary.getInstance(SystemProperties)
            local osName = AllBinary.getName(systemProperties)
            local osArch = AllBinary.getArch(systemProperties)
            local osVersion = AllBinary.getVersion(systemProperties)
            if !this.hasDetected
                AllBinary.putF(this.logUtil, jstr("osName: ") * jstr(osName), this, this.commonStrings.GET_INSTANCE)
                this.hasDetected = true
                if jIndexOf(osName, operatingSystems.LINUX) >= Int32(0)
                    if AllBinary.contains(staticGet_LOGGING(LogConfigTypes), AllBinary.getInstance(LogConfigTypeFactory).FACTORYERROR)
                        AllBinary.putF(this.logUtil, "Found a Linux OS", this, this.commonStrings.GET_INSTANCE)
                    end
                    this.genericOperatingSystem = AllBinary.getOperatingSystemInstance(AllBinary.getInstance(LinuxOperatingSystemFactory))
                elseif jIndexOf(osName, operatingSystems.WINDOWS) >= Int32(0)
                    if AllBinary.contains(staticGet_LOGGING(LogConfigTypes), AllBinary.getInstance(LogConfigTypeFactory).FACTORYERROR)
                        AllBinary.putF(this.logUtil, "Found a Windows OS", this, this.commonStrings.GET_INSTANCE)
                    end
                    this.genericOperatingSystem = AllBinary.getOperatingSystemInstance(AllBinary.getInstance(WindowsOperatingSystemFactory))
                elseif jIndexOf(osName, operatingSystems.SOLARIS) >= Int32(0)
                    if AllBinary.contains(staticGet_LOGGING(LogConfigTypes), AllBinary.getInstance(LogConfigTypeFactory).FACTORYERROR)
                        AllBinary.putF(this.logUtil, "Found a Solaris OS", this, this.commonStrings.GET_INSTANCE)
                    end
                    this.genericOperatingSystem = AllBinary.getOperatingSystemInstance(AllBinary.getInstance(SolarisOperatingSystemFactory))
                else
                    throw(jNewException("Exception", AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "OS Not Supported: "), osName))))
                end
                local log = AllBinary.getInstanceF(LogFactory, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "OperatingSystem Info: "), AllBinary.toString(AllBinary.getInstance(StringUtil), this.genericOperatingSystem))), this, this.commonStrings.GET_INSTANCE)
                Base.println(jstr(AllBinary.toString(log)))
                AllBinary.putL(this.logUtil, log)
            end
            return this.genericOperatingSystem
        catch e
            if AllBinary.contains(staticGet_LOGGING(LogConfigTypes), AllBinary.getInstance(LogConfigTypeFactory).FACTORYERROR)
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.GET_INSTANCE, e)
            end
            return staticGet_NO_OPERATING_SYSTEM(NoOperatingSystem)
        end
end

