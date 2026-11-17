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

mutable struct OpenGLImageFactory <: JObject
    OpenGLImageFactory() = new()
end

const OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYValue = Ref{Any}(nothing)
const OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYSet = Ref(false)
function staticGet_NULL_OPENGL_IMAGE_FACTORY(::Type{OpenGLImageFactory})
    if !OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYSet[]
        OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYSet[] = true
        OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYValue[] = newOpenGLImageFactory()
    end
    OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYValue[]
end
function staticSet_NULL_OPENGL_IMAGE_FACTORY(::Type{OpenGLImageFactory}, value)
    OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYSet[] = true
    OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORYValue[] = value
end

function initFieldsOpenGLImageFactory(this::OpenGLImageFactory)
    nothing
end

function initOpenGLImageFactory(this::OpenGLImageFactory)
    initFieldsOpenGLImageFactory(this)
end

function newOpenGLImageFactory()
    this = OpenGLImageFactory()
    initOpenGLImageFactory(this)
    this
end


function getInstance(this::OpenGLImageFactory, image, bitmapFactory, textureFactory)
        throw(jNewException("RuntimeException", ""))
end

