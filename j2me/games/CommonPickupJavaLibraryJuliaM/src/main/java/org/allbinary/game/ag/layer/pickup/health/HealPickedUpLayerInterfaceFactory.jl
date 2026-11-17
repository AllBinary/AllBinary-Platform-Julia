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
# package org.allbinary.game.ag.layer.pickup.health

# extends PickedUpLayerInterfaceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HealPickedUpLayerInterfaceFactory <: JObject
    pool::Any
    HealPickedUpLayerInterfaceFactory() = new()
end

const HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = Ref{Any}(nothing)
const HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = Ref(false)
function staticGet_pickedUpLayerInterfaceFactoryInterface(::Type{HealPickedUpLayerInterfaceFactory})
    if !HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[]
        HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
        HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory)
    end
    HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[]
end
function staticSet_pickedUpLayerInterfaceFactoryInterface(::Type{HealPickedUpLayerInterfaceFactory}, value)
    HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
    HealPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = value
end

function initFieldsHealPickedUpLayerInterfaceFactory(this::HealPickedUpLayerInterfaceFactory)
    this.pool = nothing
    this.pool = newHealLayerCircularStaticPool(newHealLayerFactory(), Int32(1))
    nothing
end


function init(::Type{HealPickedUpLayerInterfaceFactory})
        staticSet_pickedUpLayerInterfaceFactoryInterface(HealPickedUpLayerInterfaceFactory, newHealPickedUpLayerInterfaceFactory())
        nothing
end


function initHealPickedUpLayerInterfaceFactory(this::HealPickedUpLayerInterfaceFactory)
        initPickedUpLayerInterfaceFactory(this, AllBinary.getInstance(PickedUpLayerTypeFactory).HEAL, AllBinary.getInstance(IconLayerFactory, AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(HealthResources).RESOURCE), Int32(0)), Int32(10), Int32(10)), AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(HealthResources).RESOURCE), Int32(0)))
        initFieldsHealPickedUpLayerInterfaceFactory(this)
        nothing
end

function newHealPickedUpLayerInterfaceFactory()
    this = HealPickedUpLayerInterfaceFactory()
    initHealPickedUpLayerInterfaceFactory(this)
    this
end


function getTotal(this::HealPickedUpLayerInterfaceFactory)
        return Int32(1)
end


function getInstance(::Type{HealPickedUpLayerInterfaceFactory})
        return staticGet_pickedUpLayerInterfaceFactoryInterface(HealPickedUpLayerInterfaceFactory)
end


function process(this::HealPickedUpLayerInterfaceFactory, sourceLayerInterface)
        AllBinary.visit(this.pool, sourceLayerInterface)
        nothing
end

