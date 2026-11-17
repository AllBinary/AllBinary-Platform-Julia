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
# package org.allbinary.game.ag.layer.pickup.points

# extends PickedUpLayerInterfaceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct Points20kPickedUpLayerInterfaceFactory <: JObject
    pool::Any
    Points20kPickedUpLayerInterfaceFactory() = new()
end

const Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = Ref{Any}(nothing)
const Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = Ref(false)
function staticGet_pickedUpLayerInterfaceFactoryInterface(::Type{Points20kPickedUpLayerInterfaceFactory})
    if !Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[]
        Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
        Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory)
    end
    Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[]
end
function staticSet_pickedUpLayerInterfaceFactoryInterface(::Type{Points20kPickedUpLayerInterfaceFactory}, value)
    Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
    Points20kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = value
end

function initFieldsPoints20kPickedUpLayerInterfaceFactory(this::Points20kPickedUpLayerInterfaceFactory)
    this.pool = nothing
    this.pool = newPointsLayerCircularStaticPool(newPointsLayerFactory(AllBinary.getCompetitionValue(AllBinary.getInstance(GameConfigurationUtil)) * Int32(20000)), Int32(1))
    nothing
end


function init(::Type{Points20kPickedUpLayerInterfaceFactory})
        staticSet_pickedUpLayerInterfaceFactoryInterface(Points20kPickedUpLayerInterfaceFactory, newPoints20kPickedUpLayerInterfaceFactory())
        nothing
end


function initPoints20kPickedUpLayerInterfaceFactory(this::Points20kPickedUpLayerInterfaceFactory)
        initPickedUpLayerInterfaceFactory(this, AllBinary.getInstance(PickedUpLayerTypeFactory).POINTS, AllBinary.getInstance(IconLayerFactory, AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(PointsResources).RESOURCE_2), Int32(0)), Int32(10), Int32(10)), AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(PointsResources).RESOURCE_2), Int32(0)))
        initFieldsPoints20kPickedUpLayerInterfaceFactory(this)
        nothing
end

function newPoints20kPickedUpLayerInterfaceFactory()
    this = Points20kPickedUpLayerInterfaceFactory()
    initPoints20kPickedUpLayerInterfaceFactory(this)
    this
end


function getTotal(this::Points20kPickedUpLayerInterfaceFactory)
        return Int32(1)
end


function getInstance(::Type{Points20kPickedUpLayerInterfaceFactory})
        return staticGet_pickedUpLayerInterfaceFactoryInterface(Points20kPickedUpLayerInterfaceFactory)
end


function process(this::Points20kPickedUpLayerInterfaceFactory, sourceLayerInterface)
        AllBinary.visit(this.pool, sourceLayerInterface)
        nothing
end

