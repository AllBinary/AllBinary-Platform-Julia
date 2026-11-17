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
# package org.allbinary.game.tracking

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TrackingEventHandler <: JObject
    TrackingEventHandler() = new()
end

const TrackingEventHandler_instanceValue = Ref{Any}(nothing)
const TrackingEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{TrackingEventHandler})
    if !TrackingEventHandler_instanceSet[]
        TrackingEventHandler_instanceSet[] = true
        TrackingEventHandler_instanceValue[] = newTrackingEventHandler()
    end
    TrackingEventHandler_instanceValue[]
end
function staticSet_instance(::Type{TrackingEventHandler}, value)
    TrackingEventHandler_instanceSet[] = true
    TrackingEventHandler_instanceValue[] = value
end

function initFieldsTrackingEventHandler(this::TrackingEventHandler)
    nothing
end


function getInstance(::Type{TrackingEventHandler})
        return staticGet_instance(TrackingEventHandler)
end


function initTrackingEventHandler(this::TrackingEventHandler)
        initBasicEventHandler(this)
        initFieldsTrackingEventHandler(this)
        nothing
        nothing
end

function newTrackingEventHandler()
    this = TrackingEventHandler()
    initTrackingEventHandler(this)
    this
end


function process(this::TrackingEventHandler, eventObject, eventListenerInterface)
        local trackingEventListenerInterface = (eventListenerInterface)
        AllBinary.onMovement(trackingEventListenerInterface, (eventObject))
        nothing
end

