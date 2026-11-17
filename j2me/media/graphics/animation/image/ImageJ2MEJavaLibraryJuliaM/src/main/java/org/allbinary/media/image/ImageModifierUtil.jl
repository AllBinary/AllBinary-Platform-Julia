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
# package org.allbinary.media.image

mutable struct ImageModifierUtil <: JObject
    ImageModifierUtil() = new()
end

const ImageModifierUtil_instanceValue = Ref{Any}(nothing)
const ImageModifierUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ImageModifierUtil})
    if !ImageModifierUtil_instanceSet[]
        ImageModifierUtil_instanceSet[] = true
        ImageModifierUtil_instanceValue[] = newImageModifierUtil()
    end
    ImageModifierUtil_instanceValue[]
end
function staticSet_instance(::Type{ImageModifierUtil}, value)
    ImageModifierUtil_instanceSet[] = true
    ImageModifierUtil_instanceValue[] = value
end

function initFieldsImageModifierUtil(this::ImageModifierUtil)
    nothing
end

function initImageModifierUtil(this::ImageModifierUtil)
    initFieldsImageModifierUtil(this)
end

function newImageModifierUtil()
    this = ImageModifierUtil()
    initImageModifierUtil(this)
    this
end


function getInstanceOrCreate(::Type{ImageModifierUtil})
        return staticGet_instance(ImageModifierUtil)
end


function setColor(this::ImageModifierUtil, unusedOriginalImage, image, imageIndex, basicColor)
        nothing
        nothing
end


function changeColor(this::ImageModifierUtil, unusedOriginalImage, image, imageIndex, basicColor)
        nothing
        nothing
end


function setAlpha(this::ImageModifierUtil, originalImage, image, imageIndex, alphaInt)
        nothing
        nothing
end


function getImageArray(this::ImageModifierUtil, originalImageArray)
        return originalImageArray
end


function handleImage(this::ImageModifierUtil, imageArray, index, image)
        nothing
        nothing
end


function reset(this::ImageModifierUtil)
        nothing
        nothing
end

