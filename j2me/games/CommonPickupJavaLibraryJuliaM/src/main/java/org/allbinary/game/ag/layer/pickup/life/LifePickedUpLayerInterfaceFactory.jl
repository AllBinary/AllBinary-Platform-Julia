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
# package org.allbinary.game.ag.layer.pickup.life

# extends PickedUpLayerInterfaceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LifePickedUpLayerInterfaceFactory <: JObject
    pool::Any
    LifePickedUpLayerInterfaceFactory() = new()
end

const LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = Ref{Any}(nothing)
const LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = Ref(false)
function staticGet_pickedUpLayerInterfaceFactoryInterface(::Type{LifePickedUpLayerInterfaceFactory})
    if !LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[]
        LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
        LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory)
    end
    LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[]
end
function staticSet_pickedUpLayerInterfaceFactoryInterface(::Type{LifePickedUpLayerInterfaceFactory}, value)
    LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
    LifePickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = value
end

function initFieldsLifePickedUpLayerInterfaceFactory(this::LifePickedUpLayerInterfaceFactory)
    this.pool = nothing
    this.pool = newLifeLayerCircularStaticPool(newLifeLayerFactory(), Int32(1))
    nothing
end


function init(::Type{LifePickedUpLayerInterfaceFactory})
        staticSet_pickedUpLayerInterfaceFactoryInterface(LifePickedUpLayerInterfaceFactory, newLifePickedUpLayerInterfaceFactory())
        nothing
end


function initLifePickedUpLayerInterfaceFactory(this::LifePickedUpLayerInterfaceFactory)
        initPickedUpLayerInterfaceFactory(this, AllBinary.getInstance(PickedUpLayerTypeFactory).LIFE, AllBinary.getInstance(IconLayerFactory, AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(LifeResources).RESOURCE), Int32(0)), Int32(10), Int32(10)), AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(LifeResources).RESOURCE), Int32(0)))
        initFieldsLifePickedUpLayerInterfaceFactory(this)
        nothing
end

function newLifePickedUpLayerInterfaceFactory()
    this = LifePickedUpLayerInterfaceFactory()
    initLifePickedUpLayerInterfaceFactory(this)
    this
end


function getTotal(this::LifePickedUpLayerInterfaceFactory)
        return Int32(1)
end


function getInstance(::Type{LifePickedUpLayerInterfaceFactory})
        return staticGet_pickedUpLayerInterfaceFactoryInterface(LifePickedUpLayerInterfaceFactory)
end


function process(this::LifePickedUpLayerInterfaceFactory, sourceLayerInterface)
        AllBinary.visit(this.pool, sourceLayerInterface)
        nothing
end

