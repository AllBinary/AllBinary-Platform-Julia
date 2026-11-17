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
# package org.allbinary.game.layer

mutable struct BasicLayerPlacement <: JObject
    layerType::Any
    width::Int32
    height::Int32
    BasicLayerPlacement() = new()
end


function initFieldsBasicLayerPlacement(this::BasicLayerPlacement)
    this.layerType = nothing
    this.width = Int32(0)
    this.height = Int32(0)
    
    
    
    nothing
end


function initBasicLayerPlacement(this::BasicLayerPlacement, layerType, width, height)
        initFieldsBasicLayerPlacement(this)
        this.layerType = layerType
        this.width = width
        this.height = height
        nothing
end

function newBasicLayerPlacement(layerType, width, height)
    this = BasicLayerPlacement()
    initBasicLayerPlacement(this, layerType, width, height)
    this
end


function getWidth(this::BasicLayerPlacement)
        return this.width
end


function getHeight(this::BasicLayerPlacement)
        return this.height
end


function getLayerType(this::BasicLayerPlacement)
        return this.layerType
end


function setLayerType(this::BasicLayerPlacement, layerType)
        this.layerType = layerType
        nothing
end

