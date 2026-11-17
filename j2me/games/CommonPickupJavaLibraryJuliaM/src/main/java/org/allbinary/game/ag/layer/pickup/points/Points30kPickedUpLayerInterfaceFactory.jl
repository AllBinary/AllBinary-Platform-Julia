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
mutable struct Points30kPickedUpLayerInterfaceFactory <: JObject
    pool::Any
    Points30kPickedUpLayerInterfaceFactory() = new()
end

const Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue = Ref{Any}(nothing)
const Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet = Ref(false)
function staticGet_pickedUpLayerInterfaceFactoryInterface(::Type{Points30kPickedUpLayerInterfaceFactory})
    if !Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[]
        Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
        Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory)
    end
    Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[]
end
function staticSet_pickedUpLayerInterfaceFactoryInterface(::Type{Points30kPickedUpLayerInterfaceFactory}, value)
    Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceSet[] = true
    Points30kPickedUpLayerInterfaceFactory_pickedUpLayerInterfaceFactoryInterfaceValue[] = value
end

function initFieldsPoints30kPickedUpLayerInterfaceFactory(this::Points30kPickedUpLayerInterfaceFactory)
    this.pool = nothing
    this.pool = newPointsLayerCircularStaticPool(newPointsLayerFactory(AllBinary.getCompetitionValue(AllBinary.getInstance(GameConfigurationUtil)) * Int32(30000)), Int32(1))
    nothing
end


function init(::Type{Points30kPickedUpLayerInterfaceFactory})
        staticSet_pickedUpLayerInterfaceFactoryInterface(Points30kPickedUpLayerInterfaceFactory, newPoints30kPickedUpLayerInterfaceFactory())
        nothing
end


function initPoints30kPickedUpLayerInterfaceFactory(this::Points30kPickedUpLayerInterfaceFactory)
        initPickedUpLayerInterfaceFactory(this, AllBinary.getInstance(PickedUpLayerTypeFactory).POINTS, AllBinary.getInstance(IconLayerFactory, AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(PointsResources).RESOURCE_3), Int32(0)), Int32(10), Int32(10)), AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(PointsResources).RESOURCE_3), Int32(0)))
        initFieldsPoints30kPickedUpLayerInterfaceFactory(this)
        nothing
end

function newPoints30kPickedUpLayerInterfaceFactory()
    this = Points30kPickedUpLayerInterfaceFactory()
    initPoints30kPickedUpLayerInterfaceFactory(this)
    this
end


function getTotal(this::Points30kPickedUpLayerInterfaceFactory)
        return Int32(1)
end


function getInstance(::Type{Points30kPickedUpLayerInterfaceFactory})
        return staticGet_pickedUpLayerInterfaceFactoryInterface(Points30kPickedUpLayerInterfaceFactory)
end


function process(this::Points30kPickedUpLayerInterfaceFactory, sourceLayerInterface)
        AllBinary.visit(this.pool, sourceLayerInterface)
        nothing
end

