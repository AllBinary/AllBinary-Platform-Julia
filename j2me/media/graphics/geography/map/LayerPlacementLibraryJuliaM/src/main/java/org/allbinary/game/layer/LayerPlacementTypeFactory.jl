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
# package org.allbinary.game.layer

mutable struct LayerPlacementTypeFactory <: JObject
    MAP::Any
    LEFT::Any
    DOWN::Any
    UP::Any
    RIGHT::Any
    LayerPlacementTypeFactory() = new()
end

const LayerPlacementTypeFactory_instanceValue = Ref{Any}(nothing)
const LayerPlacementTypeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{LayerPlacementTypeFactory})
    if !LayerPlacementTypeFactory_instanceSet[]
        LayerPlacementTypeFactory_instanceSet[] = true
        LayerPlacementTypeFactory_instanceValue[] = newLayerPlacementTypeFactory()
    end
    LayerPlacementTypeFactory_instanceValue[]
end
function staticSet_instance(::Type{LayerPlacementTypeFactory}, value)
    LayerPlacementTypeFactory_instanceSet[] = true
    LayerPlacementTypeFactory_instanceValue[] = value
end

function initFieldsLayerPlacementTypeFactory(this::LayerPlacementTypeFactory)
    this.MAP = nothing
    this.LEFT = nothing
    this.DOWN = nothing
    this.UP = nothing
    this.RIGHT = nothing
    this.MAP = newLayerPlacementType(staticGet_MAX_VALUE(Integer))
    this.LEFT = newLayerPlacementType(AllBinary.getValue(AllBinary.getInstance(DirectionFactory).LEFT))
    this.DOWN = newLayerPlacementType(AllBinary.getValue(AllBinary.getInstance(DirectionFactory).DOWN))
    this.UP = newLayerPlacementType(AllBinary.getValue(AllBinary.getInstance(DirectionFactory).UP))
    this.RIGHT = newLayerPlacementType(AllBinary.getValue(AllBinary.getInstance(DirectionFactory).RIGHT))
    nothing
end

function initLayerPlacementTypeFactory(this::LayerPlacementTypeFactory)
    initFieldsLayerPlacementTypeFactory(this)
end

function newLayerPlacementTypeFactory()
    this = LayerPlacementTypeFactory()
    initLayerPlacementTypeFactory(this)
    this
end


function getInstance(::Type{LayerPlacementTypeFactory})
        return staticGet_instance(LayerPlacementTypeFactory)
end

