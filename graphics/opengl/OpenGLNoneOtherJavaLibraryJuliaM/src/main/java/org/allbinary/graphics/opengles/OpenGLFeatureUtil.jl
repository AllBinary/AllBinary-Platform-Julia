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

mutable struct OpenGLFeatureUtil <: JObject
    OpenGLFeatureUtil() = new()
end

const OpenGLFeatureUtil_instanceValue = Ref{Any}(nothing)
const OpenGLFeatureUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLFeatureUtil})
    if !OpenGLFeatureUtil_instanceSet[]
        OpenGLFeatureUtil_instanceSet[] = true
        OpenGLFeatureUtil_instanceValue[] = newOpenGLFeatureUtil()
    end
    OpenGLFeatureUtil_instanceValue[]
end
function staticSet_instance(::Type{OpenGLFeatureUtil}, value)
    OpenGLFeatureUtil_instanceSet[] = true
    OpenGLFeatureUtil_instanceValue[] = value
end

function initFieldsOpenGLFeatureUtil(this::OpenGLFeatureUtil)
    nothing
end


function getInstance(::Type{OpenGLFeatureUtil})
        return staticGet_instance(OpenGLFeatureUtil)
end


function initOpenGLFeatureUtil(this::OpenGLFeatureUtil)
        initFieldsOpenGLFeatureUtil(this)
        nothing
        nothing
end

function newOpenGLFeatureUtil()
    this = OpenGLFeatureUtil()
    initOpenGLFeatureUtil(this)
    this
end


function isAnyThreed(this::OpenGLFeatureUtil)
        return false
end

