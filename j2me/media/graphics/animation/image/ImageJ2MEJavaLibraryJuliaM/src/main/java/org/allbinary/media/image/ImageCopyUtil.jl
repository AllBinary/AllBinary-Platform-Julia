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

mutable struct ImageCopyUtil <: JObject
    logUtil::Any
    commonStrings::Any
    imageCreationUtil::Any
    anchor::Int32
    gameFeatureFactory::Any
    features::Any
    NO_COPY::Any
    ImageCopyUtil() = new()
end

const ImageCopyUtil_instanceValue = Ref{Any}(nothing)
const ImageCopyUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ImageCopyUtil})
    if !ImageCopyUtil_instanceSet[]
        ImageCopyUtil_instanceSet[] = true
        ImageCopyUtil_instanceValue[] = newImageCopyUtil()
    end
    ImageCopyUtil_instanceValue[]
end
function staticSet_instance(::Type{ImageCopyUtil}, value)
    ImageCopyUtil_instanceSet[] = true
    ImageCopyUtil_instanceValue[] = value
end

function initFieldsImageCopyUtil(this::ImageCopyUtil)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.imageCreationUtil = nothing
    this.anchor = Int32(0)
    this.gameFeatureFactory = nothing
    this.features = nothing
    this.NO_COPY = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.imageCreationUtil = AllBinary.getInstance(ImageCreationUtil)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    this.gameFeatureFactory = AllBinary.getInstance(GameFeatureFactory)
    this.features = AllBinary.getInstance(Features)
    this.NO_COPY = "J2ME does not need to copy images after initial loading"
    nothing
end


function getInstance(::Type{ImageCopyUtil})
        return staticGet_instance(ImageCopyUtil)
end


function initImageCopyUtil(this::ImageCopyUtil)
        initFieldsImageCopyUtil(this)
        nothing
        nothing
end

function newImageCopyUtil()
    this = ImageCopyUtil()
    initImageCopyUtil(this)
    this
end


function createImageForRotation(this::ImageCopyUtil, originalImage)
        return AllBinary.createImage(this, originalImage)
end


function createImage(this::ImageCopyUtil, originalImage)
        if !AllBinary.isFeature(this.features, this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            AllBinary.put(this.logUtil, this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, jNewException("Exception", ""))
            return originalImage
        end
        local image = AllBinary.createImageWH(this.imageCreationUtil, AllBinary.getWidth(originalImage), AllBinary.getHeight(originalImage))
        if AllBinary.isMutable(image)
            AllBinary.drawImage(AllBinary.getGraphics(image), originalImage, Int32(0), Int32(0), this.anchor)
            return image
        else
            throw(jNewException("Exception", "Not Mutable"))
        end
end


function createImageScale(this::ImageCopyUtil, originalImage, canvasScale, resize)
        if !AllBinary.isFeature(this.features, this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            AllBinary.put(this.logUtil, this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, jNewException("Exception", ""))
            return originalImage
        end
        local newWidth::Int32 = (((AllBinary.getWidth(originalImage) * canvasScale)) % Int32)
        local newHeight::Int32 = (((AllBinary.getHeight(originalImage) * canvasScale)) % Int32)
        if resize
            if newWidth < newHeight
                newWidth = newHeight
            end
            if newHeight < newWidth
                newHeight = newWidth
            end
        end
        local image = AllBinary.createImageWH(this.imageCreationUtil, newWidth, newHeight)
        if AllBinary.isMutable(image)
            local halfWidthDelta::Int32 = (newWidth - AllBinary.getWidth(originalImage)) ÷ Int32(2)
            local halfHeightDelta::Int32 = (newHeight - AllBinary.getHeight(originalImage)) ÷ Int32(2)
            local graphics = AllBinary.getGraphics(image)
            AllBinary.drawImage(graphics, originalImage, halfWidthDelta, halfHeightDelta, this.anchor)
            return image
        else
            throw(jNewException("Exception", "Not Mutable"))
        end
end

