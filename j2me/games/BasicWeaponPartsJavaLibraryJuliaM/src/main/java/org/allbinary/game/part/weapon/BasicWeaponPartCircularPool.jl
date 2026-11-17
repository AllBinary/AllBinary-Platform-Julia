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
# package org.allbinary.game.part.weapon

mutable struct BasicWeaponPartCircularPool <: JObject
    basicWeaponPart::Any
    BasicWeaponPartCircularPool() = new()
end

const BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue = Ref{Any}(nothing)
const BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet = Ref(false)
function staticGet_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL(::Type{BasicWeaponPartCircularPool})
    if !BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet[]
        BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet[] = true
        BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue[] = newBasicWeaponPartCircularPool()
    end
    BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue[]
end
function staticSet_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL(::Type{BasicWeaponPartCircularPool}, value)
    BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet[] = true
    BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue[] = value
end

function initFieldsBasicWeaponPartCircularPool(this::BasicWeaponPartCircularPool)
    this.basicWeaponPart = nothing
    this.basicWeaponPart = staticGet_NULL_BASIC_WEAPON_PART(BasicWeaponPart)
    nothing
end

function initBasicWeaponPartCircularPool(this::BasicWeaponPartCircularPool)
    initFieldsBasicWeaponPartCircularPool(this)
end

function newBasicWeaponPartCircularPool()
    this = BasicWeaponPartCircularPool()
    initBasicWeaponPartCircularPool(this)
    this
end


function init(this::BasicWeaponPartCircularPool, basicWeaponPartFactoryInterface)
        this.basicWeaponPart = AllBinary.getInstance(basicWeaponPartFactoryInterface)
        nothing
end


function getInstance(this::BasicWeaponPartCircularPool, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        AllBinary.init(this.basicWeaponPart, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        return this.basicWeaponPart
end

