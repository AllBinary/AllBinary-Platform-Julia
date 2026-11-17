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

mutable struct Shader <: JObject
    shaderName::Any
    shaderStringList::Any
    shaderAsString::Any
    shaderHandle::Int32
    Shader() = new()
end


function initFieldsShader(this::Shader)
    this.shaderName = nothing
    this.shaderStringList = nothing
    this.shaderAsString = nothing
    this.shaderHandle = Int32(0)
    this.shaderName = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.shaderStringList = AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
    this.shaderAsString = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.shaderHandle = Int32(0)
    nothing
end

function initShader(this::Shader)
    initFieldsShader(this)
end

function newShader()
    this = Shader()
    initShader(this)
    this
end

