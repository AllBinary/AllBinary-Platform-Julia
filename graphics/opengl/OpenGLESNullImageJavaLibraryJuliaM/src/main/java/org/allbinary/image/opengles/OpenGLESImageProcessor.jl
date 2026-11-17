#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.image.opengles

mutable struct OpenGLESImageProcessor <: JObject
    OpenGLESImageProcessor() = new()
end

const OpenGLESImageProcessor_instanceValue = Ref{Any}(nothing)
const OpenGLESImageProcessor_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLESImageProcessor})
    if !OpenGLESImageProcessor_instanceSet[]
        OpenGLESImageProcessor_instanceSet[] = true
        OpenGLESImageProcessor_instanceValue[] = newOpenGLESImageProcessor()
    end
    OpenGLESImageProcessor_instanceValue[]
end
function staticSet_instance(::Type{OpenGLESImageProcessor}, value)
    OpenGLESImageProcessor_instanceSet[] = true
    OpenGLESImageProcessor_instanceValue[] = value
end

function initFieldsOpenGLESImageProcessor(this::OpenGLESImageProcessor)
    nothing
end

function initOpenGLESImageProcessor(this::OpenGLESImageProcessor)
    initFieldsOpenGLESImageProcessor(this)
end

function newOpenGLESImageProcessor()
    this = OpenGLESImageProcessor()
    initOpenGLESImageProcessor(this)
    this
end


function getInstance(::Type{OpenGLESImageProcessor})
        return staticGet_instance(OpenGLESImageProcessor)
end


function translate(this::OpenGLESImageProcessor, gl, translateX, translateY)
        nothing
        nothing
end


function rotate(this::OpenGLESImageProcessor, gl, angle)
        nothing
        nothing
end


function scale(this::OpenGLESImageProcessor, gl, scaleX, scaleY)
        nothing
        nothing
end


function colorMask(this::OpenGLESImageProcessor, gl, red, green, blue, alpha)
        nothing
        nothing
end

