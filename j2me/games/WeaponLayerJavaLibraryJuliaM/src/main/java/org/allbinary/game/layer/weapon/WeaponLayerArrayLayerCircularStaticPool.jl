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
# package org.allbinary.game.layer.weapon

mutable struct WeaponLayerArrayLayerCircularStaticPool <: JObject
    MAX::Int32
    circularIndexUtil::Any
    WEAPONLAYER_ARRAY::Any
    TWO_WEAPONLAYER_ARRAY::Any
    THREE_WEAPONLAYER_ARRAY::Any
    WeaponLayerArrayLayerCircularStaticPool() = new()
end

const WeaponLayerArrayLayerCircularStaticPool_instanceValue = Ref{Any}(nothing)
const WeaponLayerArrayLayerCircularStaticPool_instanceSet = Ref(false)
function staticGet_instance(::Type{WeaponLayerArrayLayerCircularStaticPool})
    if !WeaponLayerArrayLayerCircularStaticPool_instanceSet[]
        WeaponLayerArrayLayerCircularStaticPool_instanceSet[] = true
        WeaponLayerArrayLayerCircularStaticPool_instanceValue[] = newWeaponLayerArrayLayerCircularStaticPool()
    end
    WeaponLayerArrayLayerCircularStaticPool_instanceValue[]
end
function staticSet_instance(::Type{WeaponLayerArrayLayerCircularStaticPool}, value)
    WeaponLayerArrayLayerCircularStaticPool_instanceSet[] = true
    WeaponLayerArrayLayerCircularStaticPool_instanceValue[] = value
end

function initFieldsWeaponLayerArrayLayerCircularStaticPool(this::WeaponLayerArrayLayerCircularStaticPool)
    this.MAX = Int32(0)
    this.circularIndexUtil = nothing
    this.WEAPONLAYER_ARRAY = nothing
    this.TWO_WEAPONLAYER_ARRAY = nothing
    this.THREE_WEAPONLAYER_ARRAY = nothing
    this.MAX = Int32(5)
    this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, this.MAX)
    this.WEAPONLAYER_ARRAY = nothing
    this.TWO_WEAPONLAYER_ARRAY = nothing
    this.THREE_WEAPONLAYER_ARRAY = nothing
    nothing
end

function initWeaponLayerArrayLayerCircularStaticPool(this::WeaponLayerArrayLayerCircularStaticPool)
    initFieldsWeaponLayerArrayLayerCircularStaticPool(this)
end

function newWeaponLayerArrayLayerCircularStaticPool()
    this = WeaponLayerArrayLayerCircularStaticPool()
    initWeaponLayerArrayLayerCircularStaticPool(this)
    this
end


function getInstance(::Type{WeaponLayerArrayLayerCircularStaticPool})
        return staticGet_instance(WeaponLayerArrayLayerCircularStaticPool)
end


function init(this::WeaponLayerArrayLayerCircularStaticPool)
        local WEAPONLAYER_ARRAY = jNewArray(Any, this.MAX * Int32(2), nothing)
        local TWO_WEAPONLAYER_ARRAY = jNewArray(Any, this.MAX, nothing)
        local THREE_WEAPONLAYER_ARRAY = jNewArray(Any, this.MAX, nothing)
        let
            local index::Int32 = Int32(0)
            while index < this.MAX
            try
            WEAPONLAYER_ARRAY[index + 1] = jNewArray(Any, Int32(1), nothing)
            TWO_WEAPONLAYER_ARRAY[index + 1] = jNewArray(Any, Int32(2), nothing)
            THREE_WEAPONLAYER_ARRAY[index + 1] = jNewArray(Any, Int32(3), nothing)
            finally
                index += Int32(1)
            end
            end
        end
        this.WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY
        this.TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY
        this.THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY
        nothing
end


function getWeaponLayerArrays(this::WeaponLayerArrayLayerCircularStaticPool, size)
        if size == Int32(1)
            return this.WEAPONLAYER_ARRAY
        elseif size == Int32(2)
            return this.TWO_WEAPONLAYER_ARRAY
        elseif size == Int32(3)
            return this.THREE_WEAPONLAYER_ARRAY
        end
        throw(jNewException("RuntimeException", ""))
end


function getInstanceArray(this::WeaponLayerArrayLayerCircularStaticPool, size)
        local weaponLayerArray = AllBinary.getWeaponLayerArrays(this, size)[AllBinary.getIndex(this.circularIndexUtil) + 1]
        AllBinary.next(this.circularIndexUtil)
        return weaponLayerArray
end

