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

mutable struct NullOpenGLTextureProcessor <: JObject
    NullOpenGLTextureProcessor() = new()
end

const NullOpenGLTextureProcessor_instanceValue = Ref{Any}(nothing)
const NullOpenGLTextureProcessor_instanceSet = Ref(false)
function staticGet_instance(::Type{NullOpenGLTextureProcessor})
    if !NullOpenGLTextureProcessor_instanceSet[]
        NullOpenGLTextureProcessor_instanceSet[] = true
        NullOpenGLTextureProcessor_instanceValue[] = newOpenGLObject3dProcessor()
    end
    NullOpenGLTextureProcessor_instanceValue[]
end
function staticSet_instance(::Type{NullOpenGLTextureProcessor}, value)
    NullOpenGLTextureProcessor_instanceSet[] = true
    NullOpenGLTextureProcessor_instanceValue[] = value
end

function initFieldsNullOpenGLTextureProcessor(this::NullOpenGLTextureProcessor)
    nothing
end

function initNullOpenGLTextureProcessor(this::NullOpenGLTextureProcessor)
    initFieldsNullOpenGLTextureProcessor(this)
end

function newNullOpenGLTextureProcessor()
    this = NullOpenGLTextureProcessor()
    initNullOpenGLTextureProcessor(this)
    this
end


function getInstance(::Type{NullOpenGLTextureProcessor})
        return staticGet_instance(NullOpenGLTextureProcessor)
end

