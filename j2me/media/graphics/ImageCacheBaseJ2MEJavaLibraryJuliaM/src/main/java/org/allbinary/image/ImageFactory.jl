#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.image

#ImageCacheBaseJavaLibrary - J2ME
mutable struct ImageFactory <: JObject
    ImageFactory() = new()
end

const ImageFactory_instanceValue = Ref{Any}(nothing)
const ImageFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ImageFactory})
    if !ImageFactory_instanceSet[]
        ImageFactory_instanceSet[] = true
        ImageFactory_instanceValue[] = newImageFactory()
    end
    ImageFactory_instanceValue[]
end
function staticSet_instance(::Type{ImageFactory}, value)
    ImageFactory_instanceSet[] = true
    ImageFactory_instanceValue[] = value
end

function initFieldsImageFactory(this::ImageFactory)
    nothing
end

function initImageFactory(this::ImageFactory)
    initFieldsImageFactory(this)
end

function newImageFactory()
    this = ImageFactory()
    initImageFactory(this)
    this
end


function getInstance(::Type{ImageFactory})
        return staticGet_instance(ImageFactory)
end


function createImageUrl(this::ImageFactory, url)
        return AllBinary.createImage(Image, url)
end


function createImage(this::ImageFactory, caller, width, height)
        return AllBinary.createImageWH(AllBinary.getInstance(MIDPUtil), width, height)
end


function createImageFromInputStream(this::ImageFactory, key, inputStream)
        local image = AllBinary.createImageFromInputStream(AllBinary.getInstance(MIDPUtil), inputStream)
        return image
end


function createImageFromInputStream(this::ImageFactory, inputStream)
        return AllBinary.createImageFromInputStream(AllBinary.getInstance(MIDPUtil), inputStream)
end

