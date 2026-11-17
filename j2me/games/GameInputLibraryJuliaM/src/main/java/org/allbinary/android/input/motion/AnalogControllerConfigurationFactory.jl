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
# package org.allbinary.android.input.motion

mutable struct AnalogControllerConfigurationFactory <: JObject
    SCALE_FACTOR::Int32
    SCALE_VALUE::Int32
    available::Bool
    analogControllerConfigurationEvent::Any
    AnalogControllerConfigurationFactory() = new()
end

const AnalogControllerConfigurationFactory_instanceValue = Ref{Any}(nothing)
const AnalogControllerConfigurationFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{AnalogControllerConfigurationFactory})
    if !AnalogControllerConfigurationFactory_instanceSet[]
        AnalogControllerConfigurationFactory_instanceSet[] = true
        AnalogControllerConfigurationFactory_instanceValue[] = newAnalogControllerConfigurationFactory()
    end
    AnalogControllerConfigurationFactory_instanceValue[]
end
function staticSet_instance(::Type{AnalogControllerConfigurationFactory}, value)
    AnalogControllerConfigurationFactory_instanceSet[] = true
    AnalogControllerConfigurationFactory_instanceValue[] = value
end

function initFieldsAnalogControllerConfigurationFactory(this::AnalogControllerConfigurationFactory)
    this.SCALE_FACTOR = Int32(0)
    this.SCALE_VALUE = Int32(0)
    this.available = false
    this.analogControllerConfigurationEvent = nothing
    this.SCALE_FACTOR = AllBinary.getInstance(ScaleFactorFactory).DEFAULT_SCALE_FACTOR
    this.SCALE_VALUE = AllBinary.getInstance(ScaleFactorFactory).DEFAULT_SCALE_VALUE
    this.available = false
    this.analogControllerConfigurationEvent = newAnalogControllerConfigurationEvent(this)
    nothing
end


function getInstance(::Type{AnalogControllerConfigurationFactory})
        return staticGet_instance(AnalogControllerConfigurationFactory)
end


function initAnalogControllerConfigurationFactory(this::AnalogControllerConfigurationFactory)
        initFieldsAnalogControllerConfigurationFactory(this)
        nothing
        nothing
end

function newAnalogControllerConfigurationFactory()
    this = AnalogControllerConfigurationFactory()
    initAnalogControllerConfigurationFactory(this)
    this
end


function isAvailable(this::AnalogControllerConfigurationFactory)
        return this.available
end


function setAvailable(this::AnalogControllerConfigurationFactory, available)
        this.available = available
        AllBinary.fireEvent(AllBinary.getInstance(AnalogControllerConfigurationEventHandler), this.analogControllerConfigurationEvent)
        nothing
end

