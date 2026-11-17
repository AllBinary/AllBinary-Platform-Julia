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

# extends ShaderComposite: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PlatformShaderComposite <: JObject
    PlatformShaderComposite() = new()
end


function initFieldsPlatformShaderComposite(this::PlatformShaderComposite)
    nothing
end


function initPlatformShaderComposite(this::PlatformShaderComposite, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor)
        initShaderComposite(this, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, AllBinary.getInstance(NullOpenGLProcessorFactory))
        nothing
end

function newPlatformShaderComposite(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor)
    this = PlatformShaderComposite()
    initPlatformShaderComposite(this, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor)
    this
end

