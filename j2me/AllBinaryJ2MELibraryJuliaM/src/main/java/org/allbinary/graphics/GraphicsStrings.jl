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
# package org.allbinary.graphics

mutable struct GraphicsStrings <: JObject
    ANIMATION::Any
    ANGLE::Any
    MOVEMENT_ANGLE::Any
    ROTATION::Any
    OPACITY::Any
    HTML::Any
    WIDTH::Any
    HEIGHT::Any
    GraphicsStrings() = new()
end

const GraphicsStrings_instanceValue = Ref{Any}(nothing)
const GraphicsStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{GraphicsStrings})
    if !GraphicsStrings_instanceSet[]
        GraphicsStrings_instanceSet[] = true
        GraphicsStrings_instanceValue[] = newGraphicsStrings()
    end
    GraphicsStrings_instanceValue[]
end
function staticSet_instance(::Type{GraphicsStrings}, value)
    GraphicsStrings_instanceSet[] = true
    GraphicsStrings_instanceValue[] = value
end

function initFieldsGraphicsStrings(this::GraphicsStrings)
    this.ANIMATION = nothing
    this.ANGLE = nothing
    this.MOVEMENT_ANGLE = nothing
    this.ROTATION = nothing
    this.OPACITY = nothing
    this.HTML = nothing
    this.WIDTH = nothing
    this.HEIGHT = nothing
    this.ANIMATION = "animation"
    this.ANGLE = "angle"
    this.MOVEMENT_ANGLE = "movement_angle"
    this.ROTATION = "rotation"
    this.OPACITY = "opacity"
    this.HTML = "HTML"
    this.WIDTH = "width"
    this.HEIGHT = "height"
    nothing
end

function initGraphicsStrings(this::GraphicsStrings)
    initFieldsGraphicsStrings(this)
end

function newGraphicsStrings()
    this = GraphicsStrings()
    initGraphicsStrings(this)
    this
end


function getInstance(::Type{GraphicsStrings})
        return staticGet_instance(GraphicsStrings)
end

