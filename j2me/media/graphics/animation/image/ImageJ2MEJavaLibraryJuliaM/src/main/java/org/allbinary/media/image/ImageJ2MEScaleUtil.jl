#=
 
  AllBinary Open License Version 1
  Copyright (c) 2023 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
=#
# Generated Code Do Not Modify
# package org.allbinary.media.image

mutable struct ImageJ2MEScaleUtil <: JObject
    ImageJ2MEScaleUtil() = new()
end

const ImageJ2MEScaleUtil_instanceValue = Ref{Any}(nothing)
const ImageJ2MEScaleUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ImageJ2MEScaleUtil})
    if !ImageJ2MEScaleUtil_instanceSet[]
        ImageJ2MEScaleUtil_instanceSet[] = true
        ImageJ2MEScaleUtil_instanceValue[] = newImageJ2MEScaleUtil()
    end
    ImageJ2MEScaleUtil_instanceValue[]
end
function staticSet_instance(::Type{ImageJ2MEScaleUtil}, value)
    ImageJ2MEScaleUtil_instanceSet[] = true
    ImageJ2MEScaleUtil_instanceValue[] = value
end

function initFieldsImageJ2MEScaleUtil(this::ImageJ2MEScaleUtil)
    nothing
end


function getInstance(::Type{ImageJ2MEScaleUtil})
        return staticGet_instance(ImageJ2MEScaleUtil)
end


function initImageJ2MEScaleUtil(this::ImageJ2MEScaleUtil)
        initFieldsImageJ2MEScaleUtil(this)
        nothing
        nothing
end

function newImageJ2MEScaleUtil()
    this = ImageJ2MEScaleUtil()
    initImageJ2MEScaleUtil(this)
    this
end


function scaleArray(this::ImageJ2MEScaleUtil, images, width, height)
        local scaledImages = jNewArray(Any, Int32(Base.length(images)), nothing)
        let
            local index::Int32 = Int32(Base.length(images))
            while (index -= Int32(1)) >= Int32(0)
            try
            scaledImages[index + 1] = AllBinary.scale(this, images[index + 1], width, height)
            finally
            end
            end
        end
        return scaledImages
end


function scale(this::ImageJ2MEScaleUtil, image, width, height)
        local sourceWidth::Int32 = AllBinary.getWidth(image)
        local sourceHeight::Int32 = AllBinary.getHeight(image)
        local originalData = jNewArray(Int32, AllBinary.getWidth(image) * AllBinary.getHeight(image), Int32(0))
        AllBinary.getRGB(image, originalData, Int32(0), AllBinary.getWidth(image), Int32(0), Int32(0), AllBinary.getWidth(image), AllBinary.getHeight(image))
        local scaledData = jNewArray(Int32, width * height, Int32(0))
        local heightRatioFactor::Int32 = (Int32(8) * sourceHeight) ÷ height
        local widthRatioFactor::Int32 = (Int32(8) * sourceWidth) ÷ width
        local scaledIndex::Int32 = Int32(Base.length(scaledData)) - Int32(1)
        local dx::Int32 = Int32(0)
        local dy::Int32 = Int32(0)
        let
            local index::Int32 = height
            while (index -= Int32(1)) >= Int32(0)
            try
            dy = (index * heightRatioFactor) >> Int32(3)
            let
                local index2::Int32 = width
                while (index2 -= Int32(1)) >= Int32(0)
                try
                dx = (index2 * widthRatioFactor) >> Int32(3)
                scaledData[(let old = scaledIndex; scaledIndex -= Int32(1); old end) + 1] = originalData[(sourceWidth * dy) + dx + 1]
                finally
                end
                end
            end
            finally
            end
            end
        end
        local scaledImage = AllBinary.createRGBImage(Image, scaledData, width, height, true)
        return scaledImage
end

