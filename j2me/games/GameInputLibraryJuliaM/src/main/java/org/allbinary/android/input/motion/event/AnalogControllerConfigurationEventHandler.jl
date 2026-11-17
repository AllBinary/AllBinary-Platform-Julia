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
# package org.allbinary.android.input.motion.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AnalogControllerConfigurationEventHandler <: JObject
    list::Any
    AnalogControllerConfigurationEventHandler() = new()
end

const AnalogControllerConfigurationEventHandler_instanceValue = Ref{Any}(nothing)
const AnalogControllerConfigurationEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{AnalogControllerConfigurationEventHandler})
    if !AnalogControllerConfigurationEventHandler_instanceSet[]
        AnalogControllerConfigurationEventHandler_instanceSet[] = true
        AnalogControllerConfigurationEventHandler_instanceValue[] = newAnalogControllerConfigurationEventHandler()
    end
    AnalogControllerConfigurationEventHandler_instanceValue[]
end
function staticSet_instance(::Type{AnalogControllerConfigurationEventHandler}, value)
    AnalogControllerConfigurationEventHandler_instanceSet[] = true
    AnalogControllerConfigurationEventHandler_instanceValue[] = value
end

function initFieldsAnalogControllerConfigurationEventHandler(this::AnalogControllerConfigurationEventHandler)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{AnalogControllerConfigurationEventHandler})
        return staticGet_instance(AnalogControllerConfigurationEventHandler)
end


function initAnalogControllerConfigurationEventHandler(this::AnalogControllerConfigurationEventHandler)
        initBasicEventHandler(this)
        initFieldsAnalogControllerConfigurationEventHandler(this)
        nothing
        nothing
end

function newAnalogControllerConfigurationEventHandler()
    this = AnalogControllerConfigurationEventHandler()
    initAnalogControllerConfigurationEventHandler(this)
    this
end


function addListener(this::AnalogControllerConfigurationEventHandler, analogControllerConfigurationEventListenerInterface)
        if !AllBinary.contains(this.list, analogControllerConfigurationEventListenerInterface)
            AllBinary.add(this.list, analogControllerConfigurationEventListenerInterface)
        end
        nothing
end


function removeAllListeners(this::AnalogControllerConfigurationEventHandler)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListener(this::AnalogControllerConfigurationEventHandler, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEvent(this::AnalogControllerConfigurationEventHandler, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local playerGameInput = (this.list.objectArray[index + 1])
                AllBinary.onAnalogControllerConfigurationEvent(playerGameInput, (eventObject))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            finally
            end
            end
        end
        AllBinary.fireEvent(this, eventObject)
        nothing
end


function process(this::AnalogControllerConfigurationEventHandler, eventObject, eventListenerInterface)
        local analogControllerConfigurationEventListenerInterface = ((eventListenerInterface))
        AllBinary.onAnalogControllerConfigurationEvent(analogControllerConfigurationEventListenerInterface, (eventObject))
        nothing
end

