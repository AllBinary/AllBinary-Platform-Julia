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

mutable struct OpenGLESImageExclusionUtil <: JObject
    list::Any
    OpenGLESImageExclusionUtil() = new()
end

const OpenGLESImageExclusionUtil_instanceValue = Ref{Any}(nothing)
const OpenGLESImageExclusionUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLESImageExclusionUtil})
    if !OpenGLESImageExclusionUtil_instanceSet[]
        OpenGLESImageExclusionUtil_instanceSet[] = true
        OpenGLESImageExclusionUtil_instanceValue[] = newOpenGLESImageExclusionUtil()
    end
    OpenGLESImageExclusionUtil_instanceValue[]
end
function staticSet_instance(::Type{OpenGLESImageExclusionUtil}, value)
    OpenGLESImageExclusionUtil_instanceSet[] = true
    OpenGLESImageExclusionUtil_instanceValue[] = value
end

function initFieldsOpenGLESImageExclusionUtil(this::OpenGLESImageExclusionUtil)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end

function initOpenGLESImageExclusionUtil(this::OpenGLESImageExclusionUtil)
    initFieldsOpenGLESImageExclusionUtil(this)
end

function newOpenGLESImageExclusionUtil()
    this = OpenGLESImageExclusionUtil()
    initOpenGLESImageExclusionUtil(this)
    this
end


function getInstance(::Type{OpenGLESImageExclusionUtil})
        return staticGet_instance(OpenGLESImageExclusionUtil)
end


function isCustomScaling(this::OpenGLESImageExclusionUtil, image)
        return false
end

