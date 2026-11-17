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

mutable struct ShaderComposite <: JObject
    disableProgramShaderOpenGLProcessor::Any
    requiresOpenGLVersion::Any
    shaderArray::Any
    shaderInitializer::Any
    compositeShaderUpdater::Any
    modelViewProjection::Any
    colorOpenGLProcessor::Any
    vertexOpenGLProcessor::Any
    useProgramShaderOpenGLProcessor::Any
    shaderMatrixOpenGLProcessor::Any
    colorEnableVertexAttribArrayOpenGLProcessor::Any
    normalEnableVertexAttribArrayOpenGLProcessor::Any
    vertexEnableVertexAttribArrayOpenGLProcessor::Any
    textureEnableVertexAttribArrayOpenGLProcessor::Any
    colorDisableVertexAttribArrayOpenGLProcessor::Any
    normalDisableVertexAttribArrayOpenGLProcessor::Any
    vertexDisableVertexAttribArrayOpenGLProcessor::Any
    textureDisableVertexAttribArrayOpenGLProcessor::Any
    uniformLightPositionOpenGLProcessor::Any
    uniformLightColorOpenGLProcessor::Any
    uniformCameraPositionOpenGLProcessor::Any
    uniformTextureUnitOpenGLProcessor::Any
    programHandle::Int32
    ShaderComposite() = new()
end


function initFieldsShaderComposite(this::ShaderComposite)
    this.disableProgramShaderOpenGLProcessor = nothing
    this.requiresOpenGLVersion = nothing
    this.shaderArray = nothing
    this.shaderInitializer = nothing
    this.compositeShaderUpdater = nothing
    this.modelViewProjection = nothing
    this.colorOpenGLProcessor = nothing
    this.vertexOpenGLProcessor = nothing
    this.useProgramShaderOpenGLProcessor = nothing
    this.shaderMatrixOpenGLProcessor = nothing
    this.colorEnableVertexAttribArrayOpenGLProcessor = nothing
    this.normalEnableVertexAttribArrayOpenGLProcessor = nothing
    this.vertexEnableVertexAttribArrayOpenGLProcessor = nothing
    this.textureEnableVertexAttribArrayOpenGLProcessor = nothing
    this.colorDisableVertexAttribArrayOpenGLProcessor = nothing
    this.normalDisableVertexAttribArrayOpenGLProcessor = nothing
    this.vertexDisableVertexAttribArrayOpenGLProcessor = nothing
    this.textureDisableVertexAttribArrayOpenGLProcessor = nothing
    this.uniformLightPositionOpenGLProcessor = nothing
    this.uniformLightColorOpenGLProcessor = nothing
    this.uniformCameraPositionOpenGLProcessor = nothing
    this.uniformTextureUnitOpenGLProcessor = nothing
    this.programHandle = Int32(0)
    
    
    
    
    
    
    
    
    this.useProgramShaderOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.shaderMatrixOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.colorEnableVertexAttribArrayOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.normalEnableVertexAttribArrayOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.vertexEnableVertexAttribArrayOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.textureEnableVertexAttribArrayOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.colorDisableVertexAttribArrayOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.normalDisableVertexAttribArrayOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.vertexDisableVertexAttribArrayOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.textureDisableVertexAttribArrayOpenGLProcessor = AllBinary.getInstance(NullOpenGLProcessorFactory)
    this.uniformLightPositionOpenGLProcessor = AllBinary.getInstance(NullOpenGLTextureProcessor)
    this.uniformLightColorOpenGLProcessor = AllBinary.getInstance(NullOpenGLTextureProcessor)
    this.uniformCameraPositionOpenGLProcessor = AllBinary.getInstance(NullOpenGLTextureProcessor)
    this.uniformTextureUnitOpenGLProcessor = AllBinary.getInstance(NullOpenGLTextureProcessor)
    this.programHandle = Int32(0)
    nothing
end


function initShaderComposite(this::ShaderComposite, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
        initFieldsShaderComposite(this)
        this.requiresOpenGLVersion = requiresOpenGLVersion
        this.shaderArray = shaderArray
        this.shaderInitializer = shaderInitializer
        this.compositeShaderUpdater = compositeShaderUpdater
        this.modelViewProjection = modelViewProjection
        this.colorOpenGLProcessor = colorOpenGLProcessor
        this.vertexOpenGLProcessor = vertexOpenGLProcessor
        this.disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor
        nothing
end

function newShaderComposite(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
    this = ShaderComposite()
    initShaderComposite(this, requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
    this
end


function init(this::ShaderComposite, gl)
        this.programHandle = AllBinary.init(this.shaderInitializer, gl, this.shaderArray, AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil)))
        nothing
end

