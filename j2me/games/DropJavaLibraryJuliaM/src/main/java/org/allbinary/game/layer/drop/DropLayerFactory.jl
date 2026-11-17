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
# package org.allbinary.game.layer.drop

mutable struct DropLayerFactory <: JObject
    list::Any
    basicArrayListUtil::Any
    DropLayerFactory() = new()
end

const DropLayerFactory_DROP_LAYER_FACTORYValue = Ref{Any}(nothing)
const DropLayerFactory_DROP_LAYER_FACTORYSet = Ref(false)
function staticGet_DROP_LAYER_FACTORY(::Type{DropLayerFactory})
    if !DropLayerFactory_DROP_LAYER_FACTORYSet[]
        DropLayerFactory_DROP_LAYER_FACTORYSet[] = true
        DropLayerFactory_DROP_LAYER_FACTORYValue[] = newDropLayerFactory()
    end
    DropLayerFactory_DROP_LAYER_FACTORYValue[]
end
function staticSet_DROP_LAYER_FACTORY(::Type{DropLayerFactory}, value)
    DropLayerFactory_DROP_LAYER_FACTORYSet[] = true
    DropLayerFactory_DROP_LAYER_FACTORYValue[] = value
end

function initFieldsDropLayerFactory(this::DropLayerFactory)
    this.list = nothing
    this.basicArrayListUtil = nothing
    this.list = newBasicArrayListD()
    this.basicArrayListUtil = AllBinary.getInstance(BasicArrayListUtil)
    nothing
end


function initDropLayerFactory(this::DropLayerFactory)
        initFieldsDropLayerFactory(this)
        nothing
        nothing
end

function newDropLayerFactory()
    this = DropLayerFactory()
    initDropLayerFactory(this)
    this
end


function clear(this::DropLayerFactory)
        AllBinary.clear(this.list)
        nothing
end


function getInstance(::Type{DropLayerFactory})
        return staticGet_DROP_LAYER_FACTORY(DropLayerFactory)
end


function getSize(this::DropLayerFactory)
        return AllBinary.size(this.list)
end


function getRandomInstance(this::DropLayerFactory)
        return (AllBinary.getRandom(this.basicArrayListUtil, this.list))
end


function add(this::DropLayerFactory, layerInterfaceFactoryInterface)
        AllBinary.add(this.list, layerInterfaceFactoryInterface)
        nothing
end


function getList(this::DropLayerFactory)
        return this.list
end

