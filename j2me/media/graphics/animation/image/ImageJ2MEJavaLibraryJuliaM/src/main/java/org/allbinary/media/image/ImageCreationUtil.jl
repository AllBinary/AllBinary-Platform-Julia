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
# package org.allbinary.media.image

mutable struct ImageCreationUtil <: JObject
    ImageCreationUtil() = new()
end

const ImageCreationUtil_instanceValue = Ref{Any}(nothing)
const ImageCreationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ImageCreationUtil})
    if !ImageCreationUtil_instanceSet[]
        ImageCreationUtil_instanceSet[] = true
        ImageCreationUtil_instanceValue[] = newImageCreationUtil()
    end
    ImageCreationUtil_instanceValue[]
end
function staticSet_instance(::Type{ImageCreationUtil}, value)
    ImageCreationUtil_instanceSet[] = true
    ImageCreationUtil_instanceValue[] = value
end

function initFieldsImageCreationUtil(this::ImageCreationUtil)
    nothing
end


function getInstance(::Type{ImageCreationUtil})
        return staticGet_instance(ImageCreationUtil)
end


function initImageCreationUtil(this::ImageCreationUtil)
        initFieldsImageCreationUtil(this)
        nothing
        nothing
end

function newImageCreationUtil()
    this = ImageCreationUtil()
    initImageCreationUtil(this)
    this
end


function createImageWH(this::ImageCreationUtil, width, height)
        local image = AllBinary.get(AllBinary.getInstance(GameFeatureImageCacheFactory), jClassName(this), width, height)
        return image
end


function createImage(this::ImageCreationUtil, width, height, maxScaleX, maxScaleY)
        local image = AllBinary.get(AllBinary.getInstance(GameFeatureImageCacheFactory), jClassName(this), (jToInt32((Float32(width) * maxScaleX)) % Int32) + Int32(1), (jToInt32((Float32(height) * maxScaleY)) % Int32) + Int32(1))
        return image
end

