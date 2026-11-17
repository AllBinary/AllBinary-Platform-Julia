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

# extends MultiPlayerGameLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PickupLayer <: JObject
    pickedUpLayerInterfaceFactoryInterface::Any
    destroyed::Bool
    animationInterface::Any
    PickupLayer() = new()
end


function initFieldsPickupLayer(this::PickupLayer)
    this.pickedUpLayerInterfaceFactoryInterface = nothing
    this.destroyed = false
    this.animationInterface = nothing
    this.pickedUpLayerInterfaceFactoryInterface = staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory)
    this.destroyed = false
    this.animationInterface = AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
    nothing
end


function initPickupLayer(this::PickupLayer, name, remoteInfo, total, pickedUpLayerInterfaceFactoryInterface, animationInterface, rectangle, viewPosition)
        initMultiPlayerGameLayer(this, remoteInfo, AllBinary.getInstance(BasicGroupFactory).NONE_ARRAY, name, rectangle, viewPosition)
        initFieldsPickupLayer(this)
        AllBinary.setCollidableInferface(this, AllBinary.createBehavior(AllBinary.getInstance(CollidableAlwaysPickupNeverCollideBehaviorFactory)))
        AllBinary.setLayerWidth(this, Int32(10))
        AllBinary.setLayerHeight(this, Int32(10))
        AllBinary.init(this, pickedUpLayerInterfaceFactoryInterface, animationInterface)
        nothing
end

function newPickupLayer(name, remoteInfo, total, pickedUpLayerInterfaceFactoryInterface, animationInterface, rectangle, viewPosition)
    this = PickupLayer()
    initPickupLayer(this, name, remoteInfo, total, pickedUpLayerInterfaceFactoryInterface, animationInterface, rectangle, viewPosition)
    this
end


function init(this::PickupLayer, pickedUpLayerInterfaceFactoryInterface, animationInterface)
        this.pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface
        this.animationInterface = animationInterface
        AllBinary.setDestroyed(this, false)
        nothing
end


function initXYZ(this::PickupLayer, x, y, z)
        AllBinary.setPosition(this, x, y, z)
        nothing
end


function paint(this::PickupLayer, graphics)
        local viewPosition = AllBinary.getViewPosition(this)
        local viewX::Int32 = AllBinary.getX(viewPosition)
        local viewY::Int32 = AllBinary.getY(viewPosition)
        AllBinary.paintXY(this.animationInterface, graphics, viewX, viewY)
        nothing
end


function paintThreed(this::PickupLayer, graphics)
        local viewPosition = AllBinary.getViewPosition(this)
        local viewX::Int32 = AllBinary.getX(viewPosition)
        local viewY::Int32 = AllBinary.getY(viewPosition)
        AllBinary.paintThreedXYZ(this.animationInterface, graphics, viewX, viewY, Int32(3))
        nothing
end


function getPickedUpLayerInterfaceFactoryInterface(this::PickupLayer)
        return this.pickedUpLayerInterfaceFactoryInterface
end


function setPickedUp(this::PickupLayer)
        AllBinary.setDestroyed(this, true)
        nothing
end


function isDestroyed(this::PickupLayer)
        return this.destroyed
end


function setDestroyed(this::PickupLayer, destroyed)
        this.destroyed = destroyed
        if AllBinary.isDestroyed(this)
            AllBinary.add(AllBinary.getInstance(DestroyedLayerProcessor), this)
        end
        nothing
end


function damage(this::PickupLayer, damage, damageType)
        nothing
        nothing
end


function getDamage(this::PickupLayer, damageType)
        return Int32(0)
end


function set(this::PickupLayer, gl)
        local openGLSurfaceChangedInterface = (this.animationInterface)
        AllBinary.set(openGLSurfaceChangedInterface, gl)
        nothing
end

