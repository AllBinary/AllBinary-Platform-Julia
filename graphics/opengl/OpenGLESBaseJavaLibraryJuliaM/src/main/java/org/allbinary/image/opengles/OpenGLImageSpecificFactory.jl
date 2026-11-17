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
    imageFactory::Any
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
    this.imageFactory = nothing
    this.updating = false
    this.imageFactory = staticGet_NULL_OPENGL_IMAGE_FACTORY(OpenGLImageFactory)
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


function setImageFactory(this::OpenGLImageSpecificFactory, imageFactory)
        this.imageFactory = imageFactory
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Selected Image Factory: "), AllBinary.toString(AllBinary.getInstance(StringUtil), this.imageFactory))), this, "setImageFactory")
        nothing
end


function getImageFactory(this::OpenGLImageSpecificFactory)
        return this.imageFactory
end

