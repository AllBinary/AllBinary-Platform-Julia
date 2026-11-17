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
# package org.allbinary.layer

mutable struct LayerInterfaceFactory <: JObject
    logUtil::Any
    list::Any
    HASHTABLE_LABEL::Any
    LayerInterfaceFactory() = new()
end

const LayerInterfaceFactory_SINGLETONValue = Ref{Any}(nothing)
const LayerInterfaceFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{LayerInterfaceFactory})
    if !LayerInterfaceFactory_SINGLETONSet[]
        LayerInterfaceFactory_SINGLETONSet[] = true
        LayerInterfaceFactory_SINGLETONValue[] = newLayerInterfaceFactory()
    end
    LayerInterfaceFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{LayerInterfaceFactory}, value)
    LayerInterfaceFactory_SINGLETONSet[] = true
    LayerInterfaceFactory_SINGLETONValue[] = value
end

function initFieldsLayerInterfaceFactory(this::LayerInterfaceFactory)
    this.logUtil = nothing
    this.list = nothing
    this.HASHTABLE_LABEL = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.list = AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
    this.HASHTABLE_LABEL = "Hashtable: "
    nothing
end

function initLayerInterfaceFactory(this::LayerInterfaceFactory)
    initFieldsLayerInterfaceFactory(this)
end

function newLayerInterfaceFactory()
    this = LayerInterfaceFactory()
    initLayerInterfaceFactory(this)
    this
end


function getInstance(::Type{LayerInterfaceFactory})
        return staticGet_SINGLETON(LayerInterfaceFactory)
end


function init(this::LayerInterfaceFactory)
        this.list = newBasicArrayListD()
        nothing
end


function getNexInstance(this::LayerInterfaceFactory, hashtable, x, y, z)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.HASHTABLE_LABEL), AllBinary.toString(AllBinary.getInstance(StringUtil), hashtable))), this, commonStrings.GET_INSTANCE)
        local typeInteger = (AllBinary.get(hashtable, (staticGet_ID(Layer))))
        local layerInterfaceFactoryInterface = (this.list.objectArray[AllBinary.intValue(typeInteger) - Int32(1) + 1])
        return AllBinary.getNextInstance(layerInterfaceFactoryInterface, hashtable, x, y, z)
end


function add(this::LayerInterfaceFactory, layerInterfaceFactoryInterface)
        AllBinary.add(this.list, layerInterfaceFactoryInterface)
        nothing
end

