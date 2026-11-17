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

# extends PickedUpLayerInterfaceFactoryBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PickedUpLayerInterfaceFactory <: JObject
    pickedUpLayerType::Any
    iconLayer::Any
    animationInterface::Any
    PickedUpLayerInterfaceFactory() = new()
end


function initFieldsPickedUpLayerInterfaceFactory(this::PickedUpLayerInterfaceFactory)
    this.pickedUpLayerType = nothing
    this.iconLayer = nothing
    this.animationInterface = nothing
    
    
    
    nothing
end


function initPickedUpLayerInterfaceFactory(this::PickedUpLayerInterfaceFactory, pickeUpLayerType, iconLayer, animationInterface)
        initPickedUpLayerInterfaceFactoryBase(this)
        initFieldsPickedUpLayerInterfaceFactory(this)
        this.pickedUpLayerType = pickeUpLayerType
        this.animationInterface = animationInterface
        this.iconLayer = iconLayer
        nothing
end

function newPickedUpLayerInterfaceFactory(pickeUpLayerType, iconLayer, animationInterface)
    this = PickedUpLayerInterfaceFactory()
    initPickedUpLayerInterfaceFactory(this, pickeUpLayerType, iconLayer, animationInterface)
    this
end


function getIconLayer(this::PickedUpLayerInterfaceFactory)
        return this.iconLayer
end


function getAnimationInterface(this::PickedUpLayerInterfaceFactory)
        return this.animationInterface
end


function getPickedUpLayerType(this::PickedUpLayerInterfaceFactory)
        return this.pickedUpLayerType
end

