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

mutable struct TrackingEventCircularStaticPool <: JObject
    EVENT_POOL::Any
    TrackingEventCircularStaticPool() = new()
end

const TrackingEventCircularStaticPool_instanceValue = Ref{Any}(nothing)
const TrackingEventCircularStaticPool_instanceSet = Ref(false)
function staticGet_instance(::Type{TrackingEventCircularStaticPool})
    if !TrackingEventCircularStaticPool_instanceSet[]
        TrackingEventCircularStaticPool_instanceSet[] = true
        TrackingEventCircularStaticPool_instanceValue[] = newTrackingEventCircularStaticPool()
    end
    TrackingEventCircularStaticPool_instanceValue[]
end
function staticSet_instance(::Type{TrackingEventCircularStaticPool}, value)
    TrackingEventCircularStaticPool_instanceSet[] = true
    TrackingEventCircularStaticPool_instanceValue[] = value
end

function initFieldsTrackingEventCircularStaticPool(this::TrackingEventCircularStaticPool)
    this.EVENT_POOL = nothing
    this.EVENT_POOL = newAllBinaryEventCircularPool(Int32(20))
    nothing
end

function initTrackingEventCircularStaticPool(this::TrackingEventCircularStaticPool)
    initFieldsTrackingEventCircularStaticPool(this)
end

function newTrackingEventCircularStaticPool()
    this = TrackingEventCircularStaticPool()
    initTrackingEventCircularStaticPool(this)
    this
end


function getInstance(::Type{TrackingEventCircularStaticPool})
        return staticGet_instance(TrackingEventCircularStaticPool)
end


function init(this::TrackingEventCircularStaticPool)
        AllBinary.initAllBinaryEventCircularPool(this.EVENT_POOL, newTrackingEventFactory())
        nothing
end


function getNextInstance(this::TrackingEventCircularStaticPool, layerInterface)
        local trackingEvent = (AllBinary.getNextInstance(this.EVENT_POOL))
        AllBinary.setLayerInterfaceForCircularStaticPool(trackingEvent, layerInterface)
        return trackingEvent
end

