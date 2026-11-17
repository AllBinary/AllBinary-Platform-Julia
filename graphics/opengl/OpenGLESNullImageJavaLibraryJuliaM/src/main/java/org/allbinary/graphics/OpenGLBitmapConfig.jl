#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics

mutable struct OpenGLBitmapConfig <: JObject
    bitmapConfig::Any
    OpenGLBitmapConfig() = new()
end


function initFieldsOpenGLBitmapConfig(this::OpenGLBitmapConfig)
    this.bitmapConfig = nothing
    
    nothing
end


function initOpenGLBitmapConfig(this::OpenGLBitmapConfig, bitmapConfig)
        initFieldsOpenGLBitmapConfig(this)
        this.bitmapConfig = bitmapConfig
        nothing
end

function newOpenGLBitmapConfig(bitmapConfig)
    this = OpenGLBitmapConfig()
    initOpenGLBitmapConfig(this, bitmapConfig)
    this
end

