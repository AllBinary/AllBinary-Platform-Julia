# Generated Code Do Not Modify
# package org.allbinary.game.layer.drop

mutable struct PlacedLayerFactory <: JObject
    list::Any
    basicArrayListUtil::Any
    PlacedLayerFactory() = new()
end

const PlacedLayerFactory_instanceValue = Ref{Any}(nothing)
const PlacedLayerFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{PlacedLayerFactory})
    if !PlacedLayerFactory_instanceSet[]
        PlacedLayerFactory_instanceSet[] = true
        PlacedLayerFactory_instanceValue[] = newPlacedLayerFactory()
    end
    PlacedLayerFactory_instanceValue[]
end
function staticSet_instance(::Type{PlacedLayerFactory}, value)
    PlacedLayerFactory_instanceSet[] = true
    PlacedLayerFactory_instanceValue[] = value
end

function initFieldsPlacedLayerFactory(this::PlacedLayerFactory)
    this.list = nothing
    this.basicArrayListUtil = nothing
    this.list = newBasicArrayListD()
    this.basicArrayListUtil = AllBinary.getInstance(BasicArrayListUtil)
    nothing
end


function initPlacedLayerFactory(this::PlacedLayerFactory)
        initFieldsPlacedLayerFactory(this)
        nothing
        nothing
end

function newPlacedLayerFactory()
    this = PlacedLayerFactory()
    initPlacedLayerFactory(this)
    this
end


function clear(this::PlacedLayerFactory)
        AllBinary.clear(this.list)
        nothing
end


function getInstance(::Type{PlacedLayerFactory})
        return staticGet_instance(PlacedLayerFactory)
end


function getSize(this::PlacedLayerFactory)
        return AllBinary.size(this.list)
end


function getRandomInstance(this::PlacedLayerFactory)
        return (AllBinary.getRandom(this.basicArrayListUtil, this.list))
end


function add(this::PlacedLayerFactory, layerInterfaceFactoryInterface)
        AllBinary.add(this.list, layerInterfaceFactoryInterface)
        nothing
end

