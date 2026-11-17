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

mutable struct ShaderManagerFactory <: JObject
    ShaderManagerFactory() = new()
end

const ShaderManagerFactory_instanceValue = Ref{Any}(nothing)
const ShaderManagerFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ShaderManagerFactory})
    if !ShaderManagerFactory_instanceSet[]
        ShaderManagerFactory_instanceSet[] = true
        ShaderManagerFactory_instanceValue[] = newShaderManagerFactory()
    end
    ShaderManagerFactory_instanceValue[]
end
function staticSet_instance(::Type{ShaderManagerFactory}, value)
    ShaderManagerFactory_instanceSet[] = true
    ShaderManagerFactory_instanceValue[] = value
end

function initFieldsShaderManagerFactory(this::ShaderManagerFactory)
    nothing
end

function initShaderManagerFactory(this::ShaderManagerFactory)
    initFieldsShaderManagerFactory(this)
end

function newShaderManagerFactory()
    this = ShaderManagerFactory()
    initShaderManagerFactory(this)
    this
end


function getInstance(::Type{ShaderManagerFactory})
        return staticGet_instance(ShaderManagerFactory)
end


function create(this::ShaderManagerFactory)
        return AllBinary.getInstance(ShaderManager)
end

