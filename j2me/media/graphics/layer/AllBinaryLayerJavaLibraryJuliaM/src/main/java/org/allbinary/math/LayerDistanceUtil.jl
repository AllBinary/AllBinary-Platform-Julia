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
# package org.allbinary.math

mutable struct LayerDistanceUtil <: JObject
    mathUtil::Any
    LayerDistanceUtil() = new()
end

const LayerDistanceUtil_instanceValue = Ref{Any}(nothing)
const LayerDistanceUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LayerDistanceUtil})
    if !LayerDistanceUtil_instanceSet[]
        LayerDistanceUtil_instanceSet[] = true
        LayerDistanceUtil_instanceValue[] = newLayerDistanceUtil()
    end
    LayerDistanceUtil_instanceValue[]
end
function staticSet_instance(::Type{LayerDistanceUtil}, value)
    LayerDistanceUtil_instanceSet[] = true
    LayerDistanceUtil_instanceValue[] = value
end

function initFieldsLayerDistanceUtil(this::LayerDistanceUtil)
    this.mathUtil = nothing
    this.mathUtil = AllBinary.getInstance(MathUtil)
    nothing
end

function initLayerDistanceUtil(this::LayerDistanceUtil)
    initFieldsLayerDistanceUtil(this)
end

function newLayerDistanceUtil()
    this = LayerDistanceUtil()
    initLayerDistanceUtil(this)
    this
end


function getInstance(::Type{LayerDistanceUtil})
        return staticGet_instance(LayerDistanceUtil)
end


function getDistance(this::LayerDistanceUtil, layerInterface, layerInterface2)
        local dx::Int32 = (AllBinary.getXP(layerInterface) + AllBinary.getHalfWidth(layerInterface)) - (AllBinary.getXP(layerInterface2) + AllBinary.getHalfWidth(layerInterface2))
        local dy::Int32 = (AllBinary.getYP(layerInterface) + AllBinary.getHalfHeight(layerInterface)) - (AllBinary.getYP(layerInterface2) + AllBinary.getHalfHeight(layerInterface2))
        return ((AllBinary.sqrt(this.mathUtil, (dx * dx) + (dy * dy))) % Int32)
end


function getDistance3D(this::LayerDistanceUtil, layerInterface, layerInterface2)
        local dx::Int32 = (AllBinary.getXP(layerInterface) + AllBinary.getHalfWidth(layerInterface)) - (AllBinary.getXP(layerInterface2) + AllBinary.getHalfWidth(layerInterface2))
        local dy::Int32 = (AllBinary.getYP(layerInterface) + AllBinary.getHalfHeight(layerInterface)) - (AllBinary.getYP(layerInterface2) + AllBinary.getHalfHeight(layerInterface2))
        local dz::Int32 = (AllBinary.getZP(layerInterface) + AllBinary.getHalfDepth(layerInterface)) - (AllBinary.getZP(layerInterface2) + AllBinary.getHalfDepth(layerInterface2))
        return ((AllBinary.sqrt(this.mathUtil, (dx * dx) + (dy * dy) + (dz * dz))) % Int32)
end


function getDistanceAt(this::LayerDistanceUtil, layerInterface, point)
        local dx::Int32 = AllBinary.getXP(layerInterface) - AllBinary.getX(point)
        local dy::Int32 = AllBinary.getYP(layerInterface) - AllBinary.getY(point)
        return ((AllBinary.sqrt(this.mathUtil, (dx * dx) + (dy * dy))) % Int32)
end

