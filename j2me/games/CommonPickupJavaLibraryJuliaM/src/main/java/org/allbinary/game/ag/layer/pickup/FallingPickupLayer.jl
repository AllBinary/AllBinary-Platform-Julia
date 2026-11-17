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
# package org.allbinary.game.ag.layer.pickup

# extends PickupLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct FallingPickupLayer <: JObject
    FallingPickupLayer() = new()
end

const FallingPickupLayer_NAMEValue = Ref{Any}(nothing)
const FallingPickupLayer_NAMESet = Ref(false)
function staticGet_NAME(::Type{FallingPickupLayer})
    if !FallingPickupLayer_NAMESet[]
        FallingPickupLayer_NAMESet[] = true
        FallingPickupLayer_NAMEValue[] = "FallingPickupLayer"
    end
    FallingPickupLayer_NAMEValue[]
end
function staticSet_NAME(::Type{FallingPickupLayer}, value)
    FallingPickupLayer_NAMESet[] = true
    FallingPickupLayer_NAMEValue[] = value
end

function initFieldsFallingPickupLayer(this::FallingPickupLayer)
    nothing
end


function initFallingPickupLayer(this::FallingPickupLayer, remoteInfo)
        initPickupLayer(this, staticGet_NAME(FallingPickupLayer), remoteInfo, Int32(0), staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory), AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0)), newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, Int32(0), Int32(0)), AllBinary.getInstanceD(ViewPosition))
        nothing
end

function newFallingPickupLayer(remoteInfo)
    this = FallingPickupLayer()
    initFallingPickupLayer(this, remoteInfo)
    this
end


function processTick(this::FallingPickupLayer, allBinaryLayerManager)
        AllBinary.setPosition(this, this.x, this.y + Int32(1), this.z)
        nothing
end


function implmentsTickableInterface(this::FallingPickupLayer)
        return true
end

