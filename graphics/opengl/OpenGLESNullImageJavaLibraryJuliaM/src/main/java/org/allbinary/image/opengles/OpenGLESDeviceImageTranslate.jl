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
# package org.allbinary.image.opengles

# extends OpenGLESImageTranslate: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OpenGLESDeviceImageTranslate <: JObject
    translateX::Float32
    translateY::Float32
    translateX2::Float32
    translateY2::Float32
    OpenGLESDeviceImageTranslate() = new()
end


function initFieldsOpenGLESDeviceImageTranslate(this::OpenGLESDeviceImageTranslate)
    this.translateX = 0.0f0
    this.translateY = 0.0f0
    this.translateX2 = 0.0f0
    this.translateY2 = 0.0f0
    this.translateX = 0.0f0
    this.translateY = 0.0f0
    this.translateX2 = 0.0f0
    this.translateY2 = 0.0f0
    nothing
end

function initOpenGLESDeviceImageTranslate(this::OpenGLESDeviceImageTranslate)
    initOpenGLESImageTranslate(this)
    initFieldsOpenGLESDeviceImageTranslate(this)
end

function newOpenGLESDeviceImageTranslate()
    this = OpenGLESDeviceImageTranslate()
    initOpenGLESDeviceImageTranslate(this)
    this
end


function translate(this::OpenGLESDeviceImageTranslate, gl, openGLESImage, x, y)
        AllBinary.translate(openGLESImage.imageProcessor, gl, this.translateX + (openGLESImage.openGLESImageProperties.scaleX * x), this.translateY + (openGLESImage.openGLESImageProperties.scaleY * y))
        nothing
end


function translate2(this::OpenGLESDeviceImageTranslate, gl, openGLESImage)
        AllBinary.translate(openGLESImage.imageProcessor, gl, this.translateX2, this.translateY2)
        nothing
end

