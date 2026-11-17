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

mutable struct ShaderInitializer <: JObject
    commonStrings::Any
    ShaderInitializer() = new()
end

const ShaderInitializer_instanceValue = Ref{Any}(nothing)
const ShaderInitializer_instanceSet = Ref(false)
function staticGet_instance(::Type{ShaderInitializer})
    if !ShaderInitializer_instanceSet[]
        ShaderInitializer_instanceSet[] = true
        ShaderInitializer_instanceValue[] = newShaderInitializer()
    end
    ShaderInitializer_instanceValue[]
end
function staticSet_instance(::Type{ShaderInitializer}, value)
    ShaderInitializer_instanceSet[] = true
    ShaderInitializer_instanceValue[] = value
end

function initFieldsShaderInitializer(this::ShaderInitializer)
    this.commonStrings = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end

function initShaderInitializer(this::ShaderInitializer)
    initFieldsShaderInitializer(this)
end

function newShaderInitializer()
    this = ShaderInitializer()
    initShaderInitializer(this)
    this
end


function getInstance(::Type{ShaderInitializer})
        return staticGet_instance(ShaderInitializer)
end


function init(this::ShaderInitializer, gl, shader, attributeArray)
        return -Int32(1)
end

