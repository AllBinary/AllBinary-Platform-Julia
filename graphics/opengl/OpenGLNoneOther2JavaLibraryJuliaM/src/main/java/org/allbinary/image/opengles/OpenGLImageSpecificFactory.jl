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
# package org.allbinary.image.opengles

mutable struct OpenGLImageSpecificFactory <: JObject
    updating::Bool
    OpenGLImageSpecificFactory() = new()
end

const OpenGLImageSpecificFactory_instanceValue = Ref{Any}(nothing)
const OpenGLImageSpecificFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLImageSpecificFactory})
    if !OpenGLImageSpecificFactory_instanceSet[]
        OpenGLImageSpecificFactory_instanceSet[] = true
        OpenGLImageSpecificFactory_instanceValue[] = newOpenGLImageSpecificFactory()
    end
    OpenGLImageSpecificFactory_instanceValue[]
end
function staticSet_instance(::Type{OpenGLImageSpecificFactory}, value)
    OpenGLImageSpecificFactory_instanceSet[] = true
    OpenGLImageSpecificFactory_instanceValue[] = value
end

function initFieldsOpenGLImageSpecificFactory(this::OpenGLImageSpecificFactory)
    this.updating = false
    this.updating = false
    nothing
end

function initOpenGLImageSpecificFactory(this::OpenGLImageSpecificFactory)
    initFieldsOpenGLImageSpecificFactory(this)
end

function newOpenGLImageSpecificFactory()
    this = OpenGLImageSpecificFactory()
    initOpenGLImageSpecificFactory(this)
    this
end


function getInstance(::Type{OpenGLImageSpecificFactory})
        return staticGet_instance(OpenGLImageSpecificFactory)
end

