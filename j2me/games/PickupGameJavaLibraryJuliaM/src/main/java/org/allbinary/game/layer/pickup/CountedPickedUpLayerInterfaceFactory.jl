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
# package org.allbinary.game.layer.pickup

# extends PickedUpLayerInterfaceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CountedPickedUpLayerInterfaceFactory <: JObject
    id::Int32
    CountedPickedUpLayerInterfaceFactory() = new()
end

const CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYValue = Ref{Any}(nothing)
const CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYSet = Ref(false)
function staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(::Type{CountedPickedUpLayerInterfaceFactory})
    if !CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYSet[]
        CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYSet[] = true
        CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYValue[] = newCountedPickedUpLayerInterfaceFactory(AllBinary.getInstance(PickedUpLayerTypeFactory).NONE, staticGet_NULL_ICON_LAYER(IconLayer), AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0)))
    end
    CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYValue[]
end
function staticSet_NULL_COUNTED_PICKUP_LAYER_FACTORY(::Type{CountedPickedUpLayerInterfaceFactory}, value)
    CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYSet[] = true
    CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORYValue[] = value
end

function initFieldsCountedPickedUpLayerInterfaceFactory(this::CountedPickedUpLayerInterfaceFactory)
    this.id = Int32(0)
    
    nothing
end


function initCountedPickedUpLayerInterfaceFactory(this::CountedPickedUpLayerInterfaceFactory, pickeUpLayerType, iconLayer, animationInterface)
        initPickedUpLayerInterfaceFactory(this, pickeUpLayerType, iconLayer, animationInterface)
        initFieldsCountedPickedUpLayerInterfaceFactory(this)
        local list = AllBinary.getList(AllBinary.getInstance(CountedPickedUpLayerInterfaceFactoryPool))
        this.id = AllBinary.size(list)
        AllBinary.add(list, this)
        nothing
end

function newCountedPickedUpLayerInterfaceFactory(pickeUpLayerType, iconLayer, animationInterface)
    this = CountedPickedUpLayerInterfaceFactory()
    initCountedPickedUpLayerInterfaceFactory(this, pickeUpLayerType, iconLayer, animationInterface)
    this
end


function getNextInstance(this::CountedPickedUpLayerInterfaceFactory, hashtable, x, y, z)
        throw(jNewException("Exception", AllBinary.getInstance(CommonStrings).NOT_IMPLEMENTED))
end


function getTotal(this::CountedPickedUpLayerInterfaceFactory)
        return -Int32(1)
end


function getId(this::CountedPickedUpLayerInterfaceFactory)
        return this.id
end

