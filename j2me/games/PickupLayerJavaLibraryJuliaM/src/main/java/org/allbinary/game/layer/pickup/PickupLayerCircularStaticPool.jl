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
# package org.allbinary.game.layer.pickup

# extends AllBinaryLayerCircularPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PickupLayerCircularStaticPool <: JObject
    PickupLayerCircularStaticPool() = new()
end

const PickupLayerCircularStaticPool_SINGLETONValue = Ref{Any}(nothing)
const PickupLayerCircularStaticPool_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{PickupLayerCircularStaticPool})
    if !PickupLayerCircularStaticPool_SINGLETONSet[]
        PickupLayerCircularStaticPool_SINGLETONSet[] = true
        PickupLayerCircularStaticPool_SINGLETONValue[] = newPickupLayerCircularStaticPool()
    end
    PickupLayerCircularStaticPool_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{PickupLayerCircularStaticPool}, value)
    PickupLayerCircularStaticPool_SINGLETONSet[] = true
    PickupLayerCircularStaticPool_SINGLETONValue[] = value
end

function initFieldsPickupLayerCircularStaticPool(this::PickupLayerCircularStaticPool)
    nothing
end


function initPickupLayerCircularStaticPool(this::PickupLayerCircularStaticPool)
        initAllBinaryLayerCircularPool(this)
        initFieldsPickupLayerCircularStaticPool(this)
        nothing
        nothing
end

function newPickupLayerCircularStaticPool()
    this = PickupLayerCircularStaticPool()
    initPickupLayerCircularStaticPool(this)
    this
end


function getInstance(::Type{PickupLayerCircularStaticPool})
        return staticGet_SINGLETON(PickupLayerCircularStaticPool)
end


function getInstanceXYZ(this::PickupLayerCircularStaticPool, pickedUpLayerInterfaceFactoryInterface, x, y, z)
        local pickupLayer = (AllBinary.getNextInstance(this))
        AllBinary.initXYZ(pickupLayer, x, y, z)
        AllBinary.init(pickupLayer, pickedUpLayerInterfaceFactoryInterface, AllBinary.getAnimationInterface(pickedUpLayerInterfaceFactoryInterface))
        return pickupLayer
end

