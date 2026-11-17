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

mutable struct ShaderManager <: JObject
    LOAD_SHADER::Any
    commonStrings::Any
    GL_VERTEX_SHADER::Int32
    GL_FRAGMENT_SHADER::Int32
    ShaderManager() = new()
end

const ShaderManager_instanceValue = Ref{Any}(nothing)
const ShaderManager_instanceSet = Ref(false)
function staticGet_instance(::Type{ShaderManager})
    if !ShaderManager_instanceSet[]
        ShaderManager_instanceSet[] = true
        ShaderManager_instanceValue[] = newShaderManager(-Int32(1), -Int32(1))
    end
    ShaderManager_instanceValue[]
end
function staticSet_instance(::Type{ShaderManager}, value)
    ShaderManager_instanceSet[] = true
    ShaderManager_instanceValue[] = value
end

function initFieldsShaderManager(this::ShaderManager)
    this.LOAD_SHADER = nothing
    this.commonStrings = nothing
    this.GL_VERTEX_SHADER = Int32(0)
    this.GL_FRAGMENT_SHADER = Int32(0)
    this.LOAD_SHADER = "loadShader"
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    nothing
end


function getInstance(::Type{ShaderManager})
        return staticGet_instance(ShaderManager)
end


function initShaderManager(this::ShaderManager, GL_VERTEX_SHADER, GL_FRAGMENT_SHADER)
        initFieldsShaderManager(this)
        this.GL_VERTEX_SHADER = GL_VERTEX_SHADER
        this.GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER
        nothing
end

function newShaderManager(GL_VERTEX_SHADER, GL_FRAGMENT_SHADER)
    this = ShaderManager()
    initShaderManager(this, GL_VERTEX_SHADER, GL_FRAGMENT_SHADER)
    this
end


function load(this::ShaderManager, gl, resource, shaderAsStringArray, shaderType)
        return -Int32(1)
end


function loadShader(this::ShaderManager, gl, resource, stringList, shaderType)
        return -Int32(1)
end

