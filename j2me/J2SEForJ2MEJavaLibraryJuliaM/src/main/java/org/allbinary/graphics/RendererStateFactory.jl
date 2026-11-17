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
# package org.allbinary.graphics

mutable struct RendererStateFactory <: JObject
    loaded::Bool
    surfaceChanged::Bool
    RendererStateFactory() = new()
end

const RendererStateFactory_instanceValue = Ref{Any}(nothing)
const RendererStateFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{RendererStateFactory})
    if !RendererStateFactory_instanceSet[]
        RendererStateFactory_instanceSet[] = true
        RendererStateFactory_instanceValue[] = newRendererStateFactory()
    end
    RendererStateFactory_instanceValue[]
end
function staticSet_instance(::Type{RendererStateFactory}, value)
    RendererStateFactory_instanceSet[] = true
    RendererStateFactory_instanceValue[] = value
end

function initFieldsRendererStateFactory(this::RendererStateFactory)
    this.loaded = false
    this.surfaceChanged = false
    this.loaded = false
    this.surfaceChanged = false
    nothing
end

function initRendererStateFactory(this::RendererStateFactory)
    initFieldsRendererStateFactory(this)
end

function newRendererStateFactory()
    this = RendererStateFactory()
    initRendererStateFactory(this)
    this
end


function getInstance(::Type{RendererStateFactory})
        return staticGet_instance(RendererStateFactory)
end


function setLoaded(this::RendererStateFactory, loaded)
        this.loaded = loaded
        nothing
end


function isLoaded(this::RendererStateFactory)
        return this.loaded
end


function setSurfaceChanged(this::RendererStateFactory, initialized)
        this.surfaceChanged = initialized
        nothing
end


function isSurfaceChanged(this::RendererStateFactory)
        return this.surfaceChanged
end

