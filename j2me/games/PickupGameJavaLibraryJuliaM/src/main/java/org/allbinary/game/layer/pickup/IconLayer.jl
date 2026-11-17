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

# extends AllBinaryLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct IconLayer <: JObject
    animationInterface::Any
    IconLayer() = new()
end

const IconLayer_NULL_ICON_LAYERValue = Ref{Any}(nothing)
const IconLayer_NULL_ICON_LAYERSet = Ref(false)
function staticGet_NULL_ICON_LAYER(::Type{IconLayer})
    if !IconLayer_NULL_ICON_LAYERSet[]
        IconLayer_NULL_ICON_LAYERSet[] = true
        IconLayer_NULL_ICON_LAYERValue[] = newIconLayer(AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0)), Int32(0), Int32(0))
    end
    IconLayer_NULL_ICON_LAYERValue[]
end
function staticSet_NULL_ICON_LAYER(::Type{IconLayer}, value)
    IconLayer_NULL_ICON_LAYERSet[] = true
    IconLayer_NULL_ICON_LAYERValue[] = value
end

function initFieldsIconLayer(this::IconLayer)
    this.animationInterface = nothing
    
    nothing
end


function initIconLayer(this::IconLayer, animationInterface, width, height)
        initAllBinaryLayer(this, AllBinary.getInstance(StringUtil).EMPTY_STRING, newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, width, height), AllBinary.getInstanceD(ViewPosition))
        initFieldsIconLayer(this)
        this.animationInterface = animationInterface
        nothing
end

function newIconLayer(animationInterface, width, height)
    this = IconLayer()
    initIconLayer(this, animationInterface, width, height)
    this
end


function paint(this::IconLayer, graphics)
        AllBinary.paintXY(this.animationInterface, graphics, this.x, this.y)
        nothing
end


function paintThreed(this::IconLayer, graphics)
        AllBinary.paintThreedXYZ(this.animationInterface, graphics, this.x, this.y, this.z)
        nothing
end


function getAnimationInterface(this::IconLayer)
        return this.animationInterface
end

