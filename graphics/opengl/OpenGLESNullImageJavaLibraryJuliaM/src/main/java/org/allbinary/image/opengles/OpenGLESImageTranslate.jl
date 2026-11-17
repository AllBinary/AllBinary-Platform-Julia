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

mutable struct OpenGLESImageTranslate <: JObject
    OpenGLESImageTranslate() = new()
end

const OpenGLESImageTranslate_instanceValue = Ref{Any}(nothing)
const OpenGLESImageTranslate_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLESImageTranslate})
    if !OpenGLESImageTranslate_instanceSet[]
        OpenGLESImageTranslate_instanceSet[] = true
        OpenGLESImageTranslate_instanceValue[] = newOpenGLESImageTranslate()
    end
    OpenGLESImageTranslate_instanceValue[]
end
function staticSet_instance(::Type{OpenGLESImageTranslate}, value)
    OpenGLESImageTranslate_instanceSet[] = true
    OpenGLESImageTranslate_instanceValue[] = value
end

function initFieldsOpenGLESImageTranslate(this::OpenGLESImageTranslate)
    nothing
end

function initOpenGLESImageTranslate(this::OpenGLESImageTranslate)
    initFieldsOpenGLESImageTranslate(this)
end

function newOpenGLESImageTranslate()
    this = OpenGLESImageTranslate()
    initOpenGLESImageTranslate(this)
    this
end


function getInstance(::Type{OpenGLESImageTranslate})
        return staticGet_instance(OpenGLESImageTranslate)
end


function translate(this::OpenGLESImageTranslate, gl, openGLESImage, x, y)
        AllBinary.translate(openGLESImage.imageProcessor, gl, x, y)
        nothing
end


function translate2(this::OpenGLESImageTranslate, gl, openGLESImage)
        nothing
        nothing
end

