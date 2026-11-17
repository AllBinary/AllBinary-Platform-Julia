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
# package org.allbinary.game.configuration.feature

mutable struct GraphicsFeatureFactory <: JObject
    NONE::Any
    TRANSPARENT_IMAGE_CREATION::Any
    IMAGE_GRAPHICS::Any
    IMAGE_ROTATION_ON_THE_FLY::Any
    IMAGE_TO_ARRAY_GRAPHICS::Any
    SPRITE_QUARTER_ROTATION_GRAPHICS::Any
    SPRITE_FULL_GRAPHICS::Any
    VECTOR_GRAPHICS::Any
    VECTOR_TO_IMAGE_GRAPHICS::Any
    GraphicsFeatureFactory() = new()
end

const GraphicsFeatureFactory_instanceValue = Ref{Any}(nothing)
const GraphicsFeatureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GraphicsFeatureFactory})
    if !GraphicsFeatureFactory_instanceSet[]
        GraphicsFeatureFactory_instanceSet[] = true
        GraphicsFeatureFactory_instanceValue[] = newGraphicsFeatureFactory()
    end
    GraphicsFeatureFactory_instanceValue[]
end
function staticSet_instance(::Type{GraphicsFeatureFactory}, value)
    GraphicsFeatureFactory_instanceSet[] = true
    GraphicsFeatureFactory_instanceValue[] = value
end

function initFieldsGraphicsFeatureFactory(this::GraphicsFeatureFactory)
    this.NONE = nothing
    this.TRANSPARENT_IMAGE_CREATION = nothing
    this.IMAGE_GRAPHICS = nothing
    this.IMAGE_ROTATION_ON_THE_FLY = nothing
    this.IMAGE_TO_ARRAY_GRAPHICS = nothing
    this.SPRITE_QUARTER_ROTATION_GRAPHICS = nothing
    this.SPRITE_FULL_GRAPHICS = nothing
    this.VECTOR_GRAPHICS = nothing
    this.VECTOR_TO_IMAGE_GRAPHICS = nothing
    this.NONE = newGraphicsFeature(AllBinary.getInstance(StringUtil).NULL_STRING)
    this.TRANSPARENT_IMAGE_CREATION = newGraphicsFeature("Transparent Image Creation")
    this.IMAGE_GRAPHICS = newGraphicsFeature("Image Graphics")
    this.IMAGE_ROTATION_ON_THE_FLY = newGraphicsFeature("Image Rotated On The Fly")
    this.IMAGE_TO_ARRAY_GRAPHICS = newGraphicsFeature("Image To Array Graphics")
    this.SPRITE_QUARTER_ROTATION_GRAPHICS = newGraphicsFeature("Sprite Quarter Rotation Graphics")
    this.SPRITE_FULL_GRAPHICS = newGraphicsFeature("Sprite Full Rotation Graphics")
    this.VECTOR_GRAPHICS = newGraphicsFeature("BasicArrayList Graphics")
    this.VECTOR_TO_IMAGE_GRAPHICS = newGraphicsFeature("BasicArrayList To Image Graphics")
    nothing
end


function getInstance(::Type{GraphicsFeatureFactory})
        return staticGet_instance(GraphicsFeatureFactory)
end


function initGraphicsFeatureFactory(this::GraphicsFeatureFactory)
        initFieldsGraphicsFeatureFactory(this)
        nothing
        nothing
end

function newGraphicsFeatureFactory()
    this = GraphicsFeatureFactory()
    initGraphicsFeatureFactory(this)
    this
end

