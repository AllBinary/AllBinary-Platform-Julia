#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.layer.pickup

mutable struct PickedUpLayerInterfaceFactoryBase <: JObject
    PickedUpLayerInterfaceFactoryBase() = new()
end

const PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASEValue = Ref{Any}(nothing)
const PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASESet = Ref(false)
function staticGet_NULL_PICKED_UP_LAYER_FACTORY_BASE(::Type{PickedUpLayerInterfaceFactoryBase})
    if !PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASESet[]
        PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASESet[] = true
        PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASEValue[] = newPickedUpLayerInterfaceFactoryBase()
    end
    PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASEValue[]
end
function staticSet_NULL_PICKED_UP_LAYER_FACTORY_BASE(::Type{PickedUpLayerInterfaceFactoryBase}, value)
    PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASESet[] = true
    PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASEValue[] = value
end

function initFieldsPickedUpLayerInterfaceFactoryBase(this::PickedUpLayerInterfaceFactoryBase)
    nothing
end

function initPickedUpLayerInterfaceFactoryBase(this::PickedUpLayerInterfaceFactoryBase)
    initFieldsPickedUpLayerInterfaceFactoryBase(this)
end

function newPickedUpLayerInterfaceFactoryBase()
    this = PickedUpLayerInterfaceFactoryBase()
    initPickedUpLayerInterfaceFactoryBase(this)
    this
end


function getIconLayer(this::PickedUpLayerInterfaceFactoryBase)
        throw(jNewException("RuntimeException", ""))
end


function getAnimationInterface(this::PickedUpLayerInterfaceFactoryBase)
        throw(jNewException("RuntimeException", ""))
end


function getPickedUpLayerType(this::PickedUpLayerInterfaceFactoryBase)
        throw(jNewException("RuntimeException", ""))
end

