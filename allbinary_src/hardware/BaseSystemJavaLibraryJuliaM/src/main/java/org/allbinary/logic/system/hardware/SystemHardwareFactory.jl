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
# package org.allbinary.logic.system.hardware

mutable struct SystemHardwareFactory <: JObject
    logUtil::Any
    commonStrings::Any
    hardwareInterface::Any
    SystemHardwareFactory() = new()
end

const SystemHardwareFactory_instanceValue = Ref{Any}(nothing)
const SystemHardwareFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{SystemHardwareFactory})
    if !SystemHardwareFactory_instanceSet[]
        SystemHardwareFactory_instanceSet[] = true
        SystemHardwareFactory_instanceValue[] = newSystemHardwareFactory()
    end
    SystemHardwareFactory_instanceValue[]
end
function staticSet_instance(::Type{SystemHardwareFactory}, value)
    SystemHardwareFactory_instanceSet[] = true
    SystemHardwareFactory_instanceValue[] = value
end

function initFieldsSystemHardwareFactory(this::SystemHardwareFactory)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.hardwareInterface = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.hardwareInterface = AllBinary.getInstance(NoHardware)
    nothing
end


function getInstance(::Type{SystemHardwareFactory})
        return staticGet_instance(SystemHardwareFactory)
end


function initSystemHardwareFactory(this::SystemHardwareFactory)
        initFieldsSystemHardwareFactory(this)
        nothing
        nothing
end

function newSystemHardwareFactory()
    this = SystemHardwareFactory()
    initSystemHardwareFactory(this)
    this
end


function getInstance(this::SystemHardwareFactory, operatingSystemInterface)
        try
            if this.hardwareInterface === AllBinary.getInstance(NoHardware)
                this.hardwareInterface = AllBinary.getInstance(AllBinary.getInstance(HardwareFactory), operatingSystemInterface)
            end
            AllBinary.putF(this.logUtil, "Found Hardware", this, this.commonStrings.CONSTRUCTOR)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e)
        end
        return this.hardwareInterface
end


function static_toString(::Type{SystemHardwareFactory})
        local systemHardwareFactory = AllBinary.getInstance(SystemHardwareFactory)
        local osBuffer = newStringMaker()
        AllBinary.append(osBuffer, "Hardware Info: \n")
        if systemHardwareFactory.hardwareInterface !== nothing
            AllBinary.append(osBuffer, AllBinary.toString(systemHardwareFactory.hardwareInterface))
        else
            AllBinary.append(osBuffer, AllBinary.getInstance(StringUtil).NULL_STRING)
        end
        return AllBinary.toString(osBuffer)
end

