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

mutable struct ImageRotationUtil <: JObject
    anchor::Int32
    ImageRotationUtil() = new()
end

const ImageRotationUtil_instanceValue = Ref{Any}(nothing)
const ImageRotationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ImageRotationUtil})
    if !ImageRotationUtil_instanceSet[]
        ImageRotationUtil_instanceSet[] = true
        ImageRotationUtil_instanceValue[] = newImageRotationUtil()
    end
    ImageRotationUtil_instanceValue[]
end
function staticSet_instance(::Type{ImageRotationUtil}, value)
    ImageRotationUtil_instanceSet[] = true
    ImageRotationUtil_instanceValue[] = value
end

function initFieldsImageRotationUtil(this::ImageRotationUtil)
    this.anchor = Int32(0)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function getInstance(::Type{ImageRotationUtil})
        return staticGet_instance(ImageRotationUtil)
end


function initImageRotationUtil(this::ImageRotationUtil)
        initFieldsImageRotationUtil(this)
        nothing
        nothing
end

function newImageRotationUtil()
    this = ImageRotationUtil()
    initImageRotationUtil(this)
    this
end


function createRotatedImage(this::ImageRotationUtil, originalImage, rotationInDegrees)
        return originalImage
end

