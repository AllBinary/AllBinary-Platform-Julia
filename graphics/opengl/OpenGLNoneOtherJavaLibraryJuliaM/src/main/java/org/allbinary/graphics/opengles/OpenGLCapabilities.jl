#=
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

mutable struct OpenGLCapabilities <: JObject
    CUSTOM_GL_SURFACE_VIEW::Bool
    VERSION_1_0::Any
    VERSION_1_1::Any
    VERSION_2_0::Any
    VERSION_3_0::Any
    VERSION_3_1::Any
    VERSION_3_2::Any
    VERSION_HIGHER_THAN_EXISTS::Any
    glVersion::Any
    shaderVersion::Int32
    glInstanceVersion::Any
    maxTextureSize::Int32
    OpenGLCapabilities() = new()
end

const OpenGLCapabilities_instanceValue = Ref{Any}(nothing)
const OpenGLCapabilities_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLCapabilities})
    if !OpenGLCapabilities_instanceSet[]
        OpenGLCapabilities_instanceSet[] = true
        OpenGLCapabilities_instanceValue[] = newOpenGLCapabilities()
    end
    OpenGLCapabilities_instanceValue[]
end
function staticSet_instance(::Type{OpenGLCapabilities}, value)
    OpenGLCapabilities_instanceSet[] = true
    OpenGLCapabilities_instanceValue[] = value
end

function initFieldsOpenGLCapabilities(this::OpenGLCapabilities)
    this.CUSTOM_GL_SURFACE_VIEW = false
    this.VERSION_1_0 = nothing
    this.VERSION_1_1 = nothing
    this.VERSION_2_0 = nothing
    this.VERSION_3_0 = nothing
    this.VERSION_3_1 = nothing
    this.VERSION_3_2 = nothing
    this.VERSION_HIGHER_THAN_EXISTS = nothing
    this.glVersion = nothing
    this.shaderVersion = Int32(0)
    this.glInstanceVersion = nothing
    this.maxTextureSize = Int32(0)
    this.CUSTOM_GL_SURFACE_VIEW = true
    this.VERSION_1_0 = "1.0"
    this.VERSION_1_1 = "1.1"
    this.VERSION_2_0 = "2.0"
    this.VERSION_3_0 = "3.0"
    this.VERSION_3_1 = "3.1"
    this.VERSION_3_2 = "3.2"
    this.VERSION_HIGHER_THAN_EXISTS = "999.999"
    this.glVersion = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.shaderVersion = Int32(0)
    this.glInstanceVersion = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.maxTextureSize = Int32(64)
    nothing
end


function getInstance(::Type{OpenGLCapabilities})
        return staticGet_instance(OpenGLCapabilities)
end


function initOpenGLCapabilities(this::OpenGLCapabilities)
        initFieldsOpenGLCapabilities(this)
        nothing
        nothing
end

function newOpenGLCapabilities()
    this = OpenGLCapabilities()
    initOpenGLCapabilities(this)
    this
end


function isInitialized(this::OpenGLCapabilities)
        return true
end


function initCapabilities(this::OpenGLCapabilities, gl)
        nothing
        nothing
end


function isGlExtensionDrawTexture(this::OpenGLCapabilities)
        return false
end


function getGlVersion(this::OpenGLCapabilities)
        return this.glVersion
end


function isVertexBufferObjectSupport(this::OpenGLCapabilities)
        return false
end


function isTextureSizeValid(this::OpenGLCapabilities, widthAndHeight)
        return true
end

