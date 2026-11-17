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

# extends ShaderInitializer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SimpleShaderInitializer <: JObject
    SimpleShaderInitializer() = new()
end

const SimpleShaderInitializer_instanceCValue = Ref{Any}(nothing)
const SimpleShaderInitializer_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{SimpleShaderInitializer})
    if !SimpleShaderInitializer_instanceCSet[]
        SimpleShaderInitializer_instanceCSet[] = true
        SimpleShaderInitializer_instanceCValue[] = newSimpleShaderInitializer()
    end
    SimpleShaderInitializer_instanceCValue[]
end
function staticSet_instanceC(::Type{SimpleShaderInitializer}, value)
    SimpleShaderInitializer_instanceCSet[] = true
    SimpleShaderInitializer_instanceCValue[] = value
end

function initFieldsSimpleShaderInitializer(this::SimpleShaderInitializer)
    nothing
end

function initSimpleShaderInitializer(this::SimpleShaderInitializer)
    initShaderInitializer(this)
    initFieldsSimpleShaderInitializer(this)
end

function newSimpleShaderInitializer()
    this = SimpleShaderInitializer()
    initSimpleShaderInitializer(this)
    this
end


function getInstance(::Type{SimpleShaderInitializer})
        return staticGet_instanceC(SimpleShaderInitializer)
end

