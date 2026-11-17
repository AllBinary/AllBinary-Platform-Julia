#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles.renderer

mutable struct RendererStrings <: JObject
    ON_SURFACE_CREATED::Any
    ON_SURFACE_CHANGED::Any
    ON_DRAW_FRAME::Any
    ON_DRAW_FRAME_THREED::Any
    ON_DRAW_FRAME_2D::Any
    RendererStrings() = new()
end

const RendererStrings_instanceValue = Ref{Any}(nothing)
const RendererStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{RendererStrings})
    if !RendererStrings_instanceSet[]
        RendererStrings_instanceSet[] = true
        RendererStrings_instanceValue[] = newRendererStrings()
    end
    RendererStrings_instanceValue[]
end
function staticSet_instance(::Type{RendererStrings}, value)
    RendererStrings_instanceSet[] = true
    RendererStrings_instanceValue[] = value
end

function initFieldsRendererStrings(this::RendererStrings)
    this.ON_SURFACE_CREATED = nothing
    this.ON_SURFACE_CHANGED = nothing
    this.ON_DRAW_FRAME = nothing
    this.ON_DRAW_FRAME_THREED = nothing
    this.ON_DRAW_FRAME_2D = nothing
    this.ON_SURFACE_CREATED = "onSurfaceCreated"
    this.ON_SURFACE_CHANGED = "onSurfaceChanged"
    this.ON_DRAW_FRAME = "onDrawFrame"
    this.ON_DRAW_FRAME_THREED = "onDrawFrameThreed"
    this.ON_DRAW_FRAME_2D = "onDrawFrame2d"
    nothing
end

function initRendererStrings(this::RendererStrings)
    initFieldsRendererStrings(this)
end

function newRendererStrings()
    this = RendererStrings()
    initRendererStrings(this)
    this
end


function getInstance(::Type{RendererStrings})
        return staticGet_instance(RendererStrings)
end

