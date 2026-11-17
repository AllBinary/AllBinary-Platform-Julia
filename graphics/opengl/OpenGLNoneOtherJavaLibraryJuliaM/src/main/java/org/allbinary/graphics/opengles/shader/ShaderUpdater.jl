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
# package org.allbinary.graphics.opengles.shader

mutable struct ShaderUpdater <: JObject
    commonStrings::Any
    rendererStrings::Any
    ShaderUpdater() = new()
end

const ShaderUpdater_instanceValue = Ref{Any}(nothing)
const ShaderUpdater_instanceSet = Ref(false)
function staticGet_instance(::Type{ShaderUpdater})
    if !ShaderUpdater_instanceSet[]
        ShaderUpdater_instanceSet[] = true
        ShaderUpdater_instanceValue[] = newShaderUpdater()
    end
    ShaderUpdater_instanceValue[]
end
function staticSet_instance(::Type{ShaderUpdater}, value)
    ShaderUpdater_instanceSet[] = true
    ShaderUpdater_instanceValue[] = value
end

function initFieldsShaderUpdater(this::ShaderUpdater)
    this.commonStrings = nothing
    this.rendererStrings = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.rendererStrings = AllBinary.getInstance(RendererStrings)
    nothing
end

function initShaderUpdater(this::ShaderUpdater)
    initFieldsShaderUpdater(this)
end

function newShaderUpdater()
    this = ShaderUpdater()
    initShaderUpdater(this)
    this
end


function getInstance(::Type{ShaderUpdater})
        return staticGet_instance(ShaderUpdater)
end


function onSurfaceCreated(this::ShaderUpdater, gl, eglConfig)
        nothing
        nothing
end

