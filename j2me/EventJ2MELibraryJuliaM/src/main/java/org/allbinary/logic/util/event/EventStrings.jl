#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.util.event

mutable struct EventStrings <: JObject
    PERFORMANCE_MESSAGE::Any
    TOTAL_LISTENERS::Any
    LISTENER_LABEL::Any
    FIRE_EVENT::Any
    EventStrings() = new()
end

const EventStrings_instanceValue = Ref{Any}(nothing)
const EventStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{EventStrings})
    if !EventStrings_instanceSet[]
        EventStrings_instanceSet[] = true
        EventStrings_instanceValue[] = newEventStrings()
    end
    EventStrings_instanceValue[]
end
function staticSet_instance(::Type{EventStrings}, value)
    EventStrings_instanceSet[] = true
    EventStrings_instanceValue[] = value
end

function initFieldsEventStrings(this::EventStrings)
    this.PERFORMANCE_MESSAGE = nothing
    this.TOTAL_LISTENERS = nothing
    this.LISTENER_LABEL = nothing
    this.FIRE_EVENT = nothing
    this.PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization"
    this.TOTAL_LISTENERS = "Total Listeners: "
    this.LISTENER_LABEL = " Listener: "
    this.FIRE_EVENT = "fireEvent"
    nothing
end

function initEventStrings(this::EventStrings)
    initFieldsEventStrings(this)
end

function newEventStrings()
    this = EventStrings()
    initEventStrings(this)
    this
end


function getInstance(::Type{EventStrings})
        return staticGet_instance(EventStrings)
end

