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

# extends CountedPickedUpLayerInterfaceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MineCountedPickedUpLayerInterfaceFactory <: JObject
    weaponLayerCircularStaticPool::Any
    weaponProperties::Any
    smallIntegerSingletonFactory::Any
    MineCountedPickedUpLayerInterfaceFactory() = new()
end

const MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = Ref{Any}(nothing)
const MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = Ref(false)
function staticGet_pickedUpLayerInterfaceFactoryInterface(::Type{MineCountedPickedUpLayerInterfaceFactory})
    if !MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[]
        MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
        MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory)
    end
    MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[]
end
function staticSet_pickedUpLayerInterfaceFactoryInterface(::Type{MineCountedPickedUpLayerInterfaceFactory}, value)
    MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
    MineCountedPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = value
end

function initFieldsMineCountedPickedUpLayerInterfaceFactory(this::MineCountedPickedUpLayerInterfaceFactory)
    this.weaponLayerCircularStaticPool = nothing
    this.weaponProperties = nothing
    this.smallIntegerSingletonFactory = nothing
    this.weaponLayerCircularStaticPool = AllBinary.getInstance(MineLayerCircularStaticPool)
    this.weaponProperties = newWeaponProperties(-Int64(1), -Int64(1), Int32(0), Int32(8000), ((Int32(10)) % Int16))
    this.smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
    nothing
end


function init(::Type{MineCountedPickedUpLayerInterfaceFactory})
        staticSet_pickedUpLayerInterfaceFactoryInterface(MineCountedPickedUpLayerInterfaceFactory, newMineCountedPickedUpLayerInterfaceFactory())
        nothing
end


function initMineCountedPickedUpLayerInterfaceFactory(this::MineCountedPickedUpLayerInterfaceFactory)
        initCountedPickedUpLayerInterfaceFactory(this, AllBinary.getInstance(PickedUpLayerTypeFactory).MINE, AllBinary.getInstance(IconLayerFactory, AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(MineWeaponResources).DROP_ICON_RESOURCE), Int32(0)), Int32(10), Int32(10)), AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(MineWeaponResources).DROP_RESOURCE), Int32(0)))
        initFieldsMineCountedPickedUpLayerInterfaceFactory(this)
        nothing
end

function newMineCountedPickedUpLayerInterfaceFactory()
    this = MineCountedPickedUpLayerInterfaceFactory()
    initMineCountedPickedUpLayerInterfaceFactory(this)
    this
end


function getInstance(::Type{MineCountedPickedUpLayerInterfaceFactory})
        return staticGet_pickedUpLayerInterfaceFactoryInterface(MineCountedPickedUpLayerInterfaceFactory)
end


function getTotal(this::MineCountedPickedUpLayerInterfaceFactory)
        return Int32(3)
end


function getNextInstance(this::MineCountedPickedUpLayerInterfaceFactory, hashtable, x, y, z)
        local sourceLayerInterface = (AllBinary.get(hashtable, (AllBinary.getAt(this.smallIntegerSingletonFactory, Int32(0)))))
        local angle = (AllBinary.get(hashtable, (AllBinary.getAt(this.smallIntegerSingletonFactory, Int32(1)))))
        local scoreableInterface = (sourceLayerInterface)
        return AllBinary.getInstanceWeaponLayer(this.weaponLayerCircularStaticPool, sourceLayerInterface, x, y, z, ((AllBinary.intValue(angle)) % Int32), Int32(0), this.weaponProperties, scoreableInterface)
end

