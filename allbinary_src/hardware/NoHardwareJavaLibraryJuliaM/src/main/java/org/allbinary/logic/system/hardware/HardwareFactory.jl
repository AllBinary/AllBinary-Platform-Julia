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

mutable struct HardwareFactory <: JObject
    SINGLETON::Any
    HardwareFactory() = new()
end

const HardwareFactory_instanceValue = Ref{Any}(nothing)
const HardwareFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{HardwareFactory})
    if !HardwareFactory_instanceSet[]
        HardwareFactory_instanceSet[] = true
        HardwareFactory_instanceValue[] = newHardwareFactory()
    end
    HardwareFactory_instanceValue[]
end
function staticSet_instance(::Type{HardwareFactory}, value)
    HardwareFactory_instanceSet[] = true
    HardwareFactory_instanceValue[] = value
end

function initFieldsHardwareFactory(this::HardwareFactory)
    this.SINGLETON = nothing
    this.SINGLETON = AllBinary.getInstance(NoHardware)
    nothing
end


function getInstance(::Type{HardwareFactory})
        return staticGet_instance(HardwareFactory)
end


function initHardwareFactory(this::HardwareFactory)
        initFieldsHardwareFactory(this)
        nothing
        nothing
end

function newHardwareFactory()
    this = HardwareFactory()
    initHardwareFactory(this)
    this
end


function getInstance(this::HardwareFactory, os)
        try
            return this.SINGLETON
        catch e
            throw(e)
        end
end

