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

#OpenGLNoneOtherJavaLibrary
mutable struct OpenGLImageCacheFactory <: JObject
    OpenGLImageCacheFactory() = new()
end

const OpenGLImageCacheFactory_IMAGE_CACHEValue = Ref{Any}(nothing)
const OpenGLImageCacheFactory_IMAGE_CACHESet = Ref(false)
function staticGet_IMAGE_CACHE(::Type{OpenGLImageCacheFactory})
    if !OpenGLImageCacheFactory_IMAGE_CACHESet[]
        OpenGLImageCacheFactory_IMAGE_CACHESet[] = true
        OpenGLImageCacheFactory_IMAGE_CACHEValue[] = staticGet_NULL_IMAGE_CACHE(ImageCache)
    end
    OpenGLImageCacheFactory_IMAGE_CACHEValue[]
end
function staticSet_IMAGE_CACHE(::Type{OpenGLImageCacheFactory}, value)
    OpenGLImageCacheFactory_IMAGE_CACHESet[] = true
    OpenGLImageCacheFactory_IMAGE_CACHEValue[] = value
end

function initFieldsOpenGLImageCacheFactory(this::OpenGLImageCacheFactory)
    nothing
end

function initOpenGLImageCacheFactory(this::OpenGLImageCacheFactory)
    initFieldsOpenGLImageCacheFactory(this)
end

function newOpenGLImageCacheFactory()
    this = OpenGLImageCacheFactory()
    initOpenGLImageCacheFactory(this)
    this
end


function getInstance(::Type{OpenGLImageCacheFactory})
        return staticGet_IMAGE_CACHE(OpenGLImageCacheFactory)
end


function init(::Type{OpenGLImageCacheFactory})
        if staticGet_IMAGE_CACHE(OpenGLImageCacheFactory) === nothing
            nothing
        end
        nothing
end

