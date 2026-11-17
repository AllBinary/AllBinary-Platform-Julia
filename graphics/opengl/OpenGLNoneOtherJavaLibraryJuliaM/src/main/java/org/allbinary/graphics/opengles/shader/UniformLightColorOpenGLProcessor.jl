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

# extends OpenGLObject3dProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct UniformLightColorOpenGLProcessor <: JObject
    UniformLightColorOpenGLProcessor() = new()
end


function initFieldsUniformLightColorOpenGLProcessor(this::UniformLightColorOpenGLProcessor)
    nothing
end


function initUniformLightColorOpenGLProcessor(this::UniformLightColorOpenGLProcessor, shaderComposite, handleIndex)
        initOpenGLObject3dProcessor(this)
        initFieldsUniformLightColorOpenGLProcessor(this)
        nothing
        nothing
end

function newUniformLightColorOpenGLProcessor(shaderComposite, handleIndex)
    this = UniformLightColorOpenGLProcessor()
    initUniformLightColorOpenGLProcessor(this, shaderComposite, handleIndex)
    this
end


function process(this::UniformLightColorOpenGLProcessor, gl, unused)
        nothing
        nothing
end

