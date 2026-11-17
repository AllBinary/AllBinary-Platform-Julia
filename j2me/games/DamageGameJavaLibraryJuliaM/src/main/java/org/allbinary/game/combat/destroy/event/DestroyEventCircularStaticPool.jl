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
# package org.allbinary.game.combat.destroy.event

mutable struct DestroyEventCircularStaticPool <: JObject
    EVENT_POOL::Any
    DestroyEventCircularStaticPool() = new()
end

const DestroyEventCircularStaticPool_instanceValue = Ref{Any}(nothing)
const DestroyEventCircularStaticPool_instanceSet = Ref(false)
function staticGet_instance(::Type{DestroyEventCircularStaticPool})
    if !DestroyEventCircularStaticPool_instanceSet[]
        DestroyEventCircularStaticPool_instanceSet[] = true
        DestroyEventCircularStaticPool_instanceValue[] = newDestroyEventCircularStaticPool()
    end
    DestroyEventCircularStaticPool_instanceValue[]
end
function staticSet_instance(::Type{DestroyEventCircularStaticPool}, value)
    DestroyEventCircularStaticPool_instanceSet[] = true
    DestroyEventCircularStaticPool_instanceValue[] = value
end

function initFieldsDestroyEventCircularStaticPool(this::DestroyEventCircularStaticPool)
    this.EVENT_POOL = nothing
    this.EVENT_POOL = newAllBinaryEventCircularPool(Int32(20))
    nothing
end


function getInstance(::Type{DestroyEventCircularStaticPool})
        return staticGet_instance(DestroyEventCircularStaticPool)
end


function initDestroyEventCircularStaticPool(this::DestroyEventCircularStaticPool)
        initFieldsDestroyEventCircularStaticPool(this)
        nothing
        nothing
end

function newDestroyEventCircularStaticPool()
    this = DestroyEventCircularStaticPool()
    initDestroyEventCircularStaticPool(this)
    this
end


function init(this::DestroyEventCircularStaticPool, combatGameCanvas)
        AllBinary.initAllBinaryEventCircularPool(this.EVENT_POOL, newDestroyEventFactory(combatGameCanvas))
        nothing
end


function getInstanceForLayer(this::DestroyEventCircularStaticPool, layerInterface)
        local destroyedEvent = (AllBinary.getNextInstance(this.EVENT_POOL))
        AllBinary.setLayerInterfaceForCircularStaticPool(destroyedEvent, layerInterface)
        return destroyedEvent
end

