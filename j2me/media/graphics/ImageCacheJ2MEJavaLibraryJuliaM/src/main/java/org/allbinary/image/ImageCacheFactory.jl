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
# package org.allbinary.image

mutable struct ImageCacheFactory <: JObject
    ImageCacheFactory() = new()
end

const ImageCacheFactory_IMAGE_CACHEValue = Ref{Any}(nothing)
const ImageCacheFactory_IMAGE_CACHESet = Ref(false)
function staticGet_IMAGE_CACHE(::Type{ImageCacheFactory})
    if !ImageCacheFactory_IMAGE_CACHESet[]
        ImageCacheFactory_IMAGE_CACHESet[] = true
        ImageCacheFactory_IMAGE_CACHEValue[] = newImageCache()
    end
    ImageCacheFactory_IMAGE_CACHEValue[]
end
function staticSet_IMAGE_CACHE(::Type{ImageCacheFactory}, value)
    ImageCacheFactory_IMAGE_CACHESet[] = true
    ImageCacheFactory_IMAGE_CACHEValue[] = value
end

function initFieldsImageCacheFactory(this::ImageCacheFactory)
    nothing
end

function initImageCacheFactory(this::ImageCacheFactory)
    initFieldsImageCacheFactory(this)
end

function newImageCacheFactory()
    this = ImageCacheFactory()
    initImageCacheFactory(this)
    this
end


function getInstance(::Type{ImageCacheFactory})
        return staticGet_IMAGE_CACHE(ImageCacheFactory)
end


function init(::Type{ImageCacheFactory})
        nothing
        nothing
end

