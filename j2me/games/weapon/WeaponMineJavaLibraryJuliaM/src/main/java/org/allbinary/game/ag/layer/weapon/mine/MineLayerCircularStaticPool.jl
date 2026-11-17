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
# package org.allbinary.game.ag.layer.weapon.mine

mutable struct MineLayerCircularStaticPool <: JObject
    MineLayerCircularStaticPool() = new()
end

const MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLValue = Ref{Any}(nothing)
const MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLSet = Ref(false)
function staticGet_WEAPON_LAYER_CIRCULAR_STATIC_POOL(::Type{MineLayerCircularStaticPool})
    if !MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLSet[]
        MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLSet[] = true
        MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLValue[] = newWeaponLayerCircularPool()
    end
    MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLValue[]
end
function staticSet_WEAPON_LAYER_CIRCULAR_STATIC_POOL(::Type{MineLayerCircularStaticPool}, value)
    MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLSet[] = true
    MineLayerCircularStaticPool_WEAPON_LAYER_CIRCULAR_STATIC_POOLValue[] = value
end

function initFieldsMineLayerCircularStaticPool(this::MineLayerCircularStaticPool)
    nothing
end

function initMineLayerCircularStaticPool(this::MineLayerCircularStaticPool)
    initFieldsMineLayerCircularStaticPool(this)
end

function newMineLayerCircularStaticPool()
    this = MineLayerCircularStaticPool()
    initMineLayerCircularStaticPool(this)
    this
end


function init(::Type{MineLayerCircularStaticPool}, viewPositionFactoryInterface)
        AllBinary.init(MineCountedPickedUpLayerInterfaceFactory)
        AllBinary.initAllBinaryLayerCircularPool(staticGet_WEAPON_LAYER_CIRCULAR_STATIC_POOL(MineLayerCircularStaticPool), newMineLayerFactory(viewPositionFactoryInterface), Int32(20))
        nothing
end


function getInstance(::Type{MineLayerCircularStaticPool})
        return staticGet_WEAPON_LAYER_CIRCULAR_STATIC_POOL(MineLayerCircularStaticPool)
end

