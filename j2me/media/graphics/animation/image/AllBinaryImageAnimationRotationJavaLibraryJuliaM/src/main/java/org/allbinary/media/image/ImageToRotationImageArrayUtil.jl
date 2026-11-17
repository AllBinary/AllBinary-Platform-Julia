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

mutable struct ImageToRotationImageArrayUtil <: JObject
    ImageToRotationImageArrayUtil() = new()
end

const ImageToRotationImageArrayUtil_instanceValue = Ref{Any}(nothing)
const ImageToRotationImageArrayUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ImageToRotationImageArrayUtil})
    if !ImageToRotationImageArrayUtil_instanceSet[]
        ImageToRotationImageArrayUtil_instanceSet[] = true
        ImageToRotationImageArrayUtil_instanceValue[] = newImageToRotationImageArrayUtil()
    end
    ImageToRotationImageArrayUtil_instanceValue[]
end
function staticSet_instance(::Type{ImageToRotationImageArrayUtil}, value)
    ImageToRotationImageArrayUtil_instanceSet[] = true
    ImageToRotationImageArrayUtil_instanceValue[] = value
end

function initFieldsImageToRotationImageArrayUtil(this::ImageToRotationImageArrayUtil)
    nothing
end


function getInstance(::Type{ImageToRotationImageArrayUtil})
        return staticGet_instance(ImageToRotationImageArrayUtil)
end


function initImageToRotationImageArrayUtil(this::ImageToRotationImageArrayUtil)
        initFieldsImageToRotationImageArrayUtil(this)
        nothing
        nothing
end

function newImageToRotationImageArrayUtil()
    this = ImageToRotationImageArrayUtil()
    initImageToRotationImageArrayUtil(this)
    this
end


function generate(this::ImageToRotationImageArrayUtil, image, angleIncrement, totalAngle)
        local imageRotationUtil = AllBinary.getInstance(ImageRotationUtil)
        local totalFrames::Int32 = totalAngle ÷ angleIncrement
        local imageArray = jNewArray(Any, totalFrames, nothing)
        imageArray[Int32(0) + 1] = image
        let
            local index::Int32 = Int32(1)
            while index < totalFrames
            try
            imageArray[index + 1] = AllBinary.createRotatedImage(imageRotationUtil, image, index * angleIncrement)
            finally
                index += Int32(1)
            end
            end
        end
        return imageArray
end

