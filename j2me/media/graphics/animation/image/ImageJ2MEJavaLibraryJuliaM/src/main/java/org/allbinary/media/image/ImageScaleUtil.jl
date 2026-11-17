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

mutable struct ImageScaleUtil <: JObject
    ImageScaleUtil() = new()
end

const ImageScaleUtil_instanceValue = Ref{Any}(nothing)
const ImageScaleUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ImageScaleUtil})
    if !ImageScaleUtil_instanceSet[]
        ImageScaleUtil_instanceSet[] = true
        ImageScaleUtil_instanceValue[] = newImageScaleUtil()
    end
    ImageScaleUtil_instanceValue[]
end
function staticSet_instance(::Type{ImageScaleUtil}, value)
    ImageScaleUtil_instanceSet[] = true
    ImageScaleUtil_instanceValue[] = value
end

function initFieldsImageScaleUtil(this::ImageScaleUtil)
    nothing
end


function getInstance(::Type{ImageScaleUtil})
        return staticGet_instance(ImageScaleUtil)
end


function initImageScaleUtil(this::ImageScaleUtil)
        initFieldsImageScaleUtil(this)
        nothing
        nothing
end

function newImageScaleUtil()
    this = ImageScaleUtil()
    initImageScaleUtil(this)
    this
end


function createImage2(this::ImageScaleUtil, imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached)
        return AllBinary.createImage3(this, imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true)
end


function createImage3(this::ImageScaleUtil, imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, mutable_)
        return originalImage
end

