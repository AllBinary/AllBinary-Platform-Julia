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
# package org.allbinary.logic.system.os.windows

mutable struct WindowsOperatingSystemFactory <: JObject
    logUtil::Any
    WindowsOperatingSystemFactory() = new()
end

const WindowsOperatingSystemFactory_instanceValue = Ref{Any}(nothing)
const WindowsOperatingSystemFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{WindowsOperatingSystemFactory})
    if !WindowsOperatingSystemFactory_instanceSet[]
        WindowsOperatingSystemFactory_instanceSet[] = true
        WindowsOperatingSystemFactory_instanceValue[] = newWindowsOperatingSystemFactory()
    end
    WindowsOperatingSystemFactory_instanceValue[]
end
function staticSet_instance(::Type{WindowsOperatingSystemFactory}, value)
    WindowsOperatingSystemFactory_instanceSet[] = true
    WindowsOperatingSystemFactory_instanceValue[] = value
end

function initFieldsWindowsOperatingSystemFactory(this::WindowsOperatingSystemFactory)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function getInstance(::Type{WindowsOperatingSystemFactory})
        return staticGet_instance(WindowsOperatingSystemFactory)
end


function initWindowsOperatingSystemFactory(this::WindowsOperatingSystemFactory)
        initFieldsWindowsOperatingSystemFactory(this)
        nothing
        nothing
end

function newWindowsOperatingSystemFactory()
    this = WindowsOperatingSystemFactory()
    initWindowsOperatingSystemFactory(this)
    this
end


function getOperatingSystemInstance(this::WindowsOperatingSystemFactory)
        try
            local operatingSystems = AllBinary.getInstance(OperatingSystems)
            local osName = AllBinary.getName(AllBinary.getInstance(SystemProperties))
            local operatingSystemInterface = nothing
            if jCompareTo(osName, operatingSystems.WINDOWS_NT) == Int32(0)
                operatingSystemInterface = newWindowsOS()
            elseif jCompareTo(osName, operatingSystems.WINDOWS_10) == Int32(0)
                operatingSystemInterface = newWindowsOS()
            elseif jCompareTo(osName, operatingSystems.WINDOWS_11) == Int32(0)
                operatingSystemInterface = newWindowsOS()
            elseif jCompareTo(osName, operatingSystems.WINDOWS2000) == Int32(0)
                operatingSystemInterface = newWindowsOS()
            elseif jCompareTo(osName, operatingSystems.WINDOWS_XP) == Int32(0)
                operatingSystemInterface = newWindowsOS()
            elseif jCompareTo(osName, operatingSystems.WINDOWS_VISTA) == Int32(0)
                operatingSystemInterface = newWindowsOS()
            else
                if AllBinary.isUnknownSpecificOSAllowed(operatingSystems)
                    operatingSystemInterface = newWindowsOS()
                else
                    throw(jNewException("Exception", jstr("Specific Windows OS Not Supported: ") * jstr(osName)))
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

