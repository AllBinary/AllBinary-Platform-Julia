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

mutable struct OpenGLESImageProperties <: JObject
    textureID::Int32
    scaleX::Float32
    scaleY::Float32
    scaleX2::Float32
    scaleY2::Float32
    angle::Int32
    redf::Float32
    greenf::Float32
    bluef::Float32
    alphaf::Float32
    OpenGLESImageProperties() = new()
end


function initFieldsOpenGLESImageProperties(this::OpenGLESImageProperties)
    this.textureID = Int32(0)
    this.scaleX = 0.0f0
    this.scaleY = 0.0f0
    this.scaleX2 = 0.0f0
    this.scaleY2 = 0.0f0
    this.angle = Int32(0)
    this.redf = 0.0f0
    this.greenf = 0.0f0
    this.bluef = 0.0f0
    this.alphaf = 0.0f0
    this.textureID = -Int32(1)
    this.scaleX = 1.0f0
    this.scaleY = 1.0f0
    this.scaleX2 = 1.0f0
    this.scaleY2 = 1.0f0
    this.angle = Int32(0)
    this.redf = 1.0f0
    this.greenf = 1.0f0
    this.bluef = 1.0f0
    this.alphaf = 1.0f0
    nothing
end

function initOpenGLESImageProperties(this::OpenGLESImageProperties)
    initFieldsOpenGLESImageProperties(this)
end

function newOpenGLESImageProperties()
    this = OpenGLESImageProperties()
    initOpenGLESImageProperties(this)
    this
end

