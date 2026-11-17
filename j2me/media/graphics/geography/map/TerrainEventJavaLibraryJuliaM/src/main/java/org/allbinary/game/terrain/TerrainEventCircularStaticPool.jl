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
# package org.allbinary.game.terrain

mutable struct TerrainEventCircularStaticPool <: JObject
    EVENT_POOL::Any
    TerrainEventCircularStaticPool() = new()
end

const TerrainEventCircularStaticPool_instanceValue = Ref{Any}(nothing)
const TerrainEventCircularStaticPool_instanceSet = Ref(false)
function staticGet_instance(::Type{TerrainEventCircularStaticPool})
    if !TerrainEventCircularStaticPool_instanceSet[]
        TerrainEventCircularStaticPool_instanceSet[] = true
        TerrainEventCircularStaticPool_instanceValue[] = newTerrainEventCircularStaticPool()
    end
    TerrainEventCircularStaticPool_instanceValue[]
end
function staticSet_instance(::Type{TerrainEventCircularStaticPool}, value)
    TerrainEventCircularStaticPool_instanceSet[] = true
    TerrainEventCircularStaticPool_instanceValue[] = value
end

function initFieldsTerrainEventCircularStaticPool(this::TerrainEventCircularStaticPool)
    this.EVENT_POOL = nothing
    this.EVENT_POOL = newAllBinaryEventCircularPool(Int32(20))
    nothing
end

function initTerrainEventCircularStaticPool(this::TerrainEventCircularStaticPool)
    initFieldsTerrainEventCircularStaticPool(this)
end

function newTerrainEventCircularStaticPool()
    this = TerrainEventCircularStaticPool()
    initTerrainEventCircularStaticPool(this)
    this
end


function getInstance(::Type{TerrainEventCircularStaticPool})
        return staticGet_instance(TerrainEventCircularStaticPool)
end


function init(this::TerrainEventCircularStaticPool)
        AllBinary.initAllBinaryEventCircularPool(this.EVENT_POOL, newTerrainEventFactory())
        nothing
end


function getNext(this::TerrainEventCircularStaticPool, basicTerrainInfo)
        local trackingEvent = (AllBinary.getNextInstance(this.EVENT_POOL))
        AllBinary.setBasicTerrainInfoForCircularStaticPool(trackingEvent, basicTerrainInfo)
        return trackingEvent
end

