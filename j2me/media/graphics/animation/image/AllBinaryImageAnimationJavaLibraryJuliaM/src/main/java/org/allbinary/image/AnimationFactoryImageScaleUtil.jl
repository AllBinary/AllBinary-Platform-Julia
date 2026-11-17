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
# package org.allbinary.image

mutable struct AnimationFactoryImageScaleUtil <: JObject
    imageScaleUtil::Any
    AnimationFactoryImageScaleUtil() = new()
end

const AnimationFactoryImageScaleUtil_instanceValue = Ref{Any}(nothing)
const AnimationFactoryImageScaleUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{AnimationFactoryImageScaleUtil})
    if !AnimationFactoryImageScaleUtil_instanceSet[]
        AnimationFactoryImageScaleUtil_instanceSet[] = true
        AnimationFactoryImageScaleUtil_instanceValue[] = newAnimationFactoryImageScaleUtil()
    end
    AnimationFactoryImageScaleUtil_instanceValue[]
end
function staticSet_instance(::Type{AnimationFactoryImageScaleUtil}, value)
    AnimationFactoryImageScaleUtil_instanceSet[] = true
    AnimationFactoryImageScaleUtil_instanceValue[] = value
end

function initFieldsAnimationFactoryImageScaleUtil(this::AnimationFactoryImageScaleUtil)
    this.imageScaleUtil = nothing
    this.imageScaleUtil = AllBinary.getInstance(ImageJ2MEScaleUtil)
    nothing
end

function initAnimationFactoryImageScaleUtil(this::AnimationFactoryImageScaleUtil)
    initFieldsAnimationFactoryImageScaleUtil(this)
end

function newAnimationFactoryImageScaleUtil()
    this = AnimationFactoryImageScaleUtil()
    initAnimationFactoryImageScaleUtil(this)
    this
end


function getInstance(::Type{AnimationFactoryImageScaleUtil})
        return staticGet_instance(AnimationFactoryImageScaleUtil)
end


function createImage(this::AnimationFactoryImageScaleUtil, image, width, height, scaleWidth, scaleHeight)
        local scaledImage = nothing
        if scaleWidth != Int32(0) && scaleHeight != Int32(0)
            local scaleX::Float32 = (Float32(scaleWidth)) / (Float32(width))
            local scaleY::Float32 = (Float32(scaleHeight)) / (Float32(height))
            if (scaleX == 1.0f0 && scaleY == 1.0f0) || (scaleX == 0.0f0 || scaleY == 0.0f0)
                scaledImage = image
            else
                local scaledWidth::Int32 = (jToInt32((scaleX * Float32(width))) % Int32)
                local scaledHeight::Int32 = (jToInt32((scaleY * Float32(height))) % Int32)
                scaledImage = AllBinary.scale(this.imageScaleUtil, image, scaledWidth, scaledHeight)
            end
        else
            scaledImage = image
        end
        return scaledImage
end


function processAdjust(this::AnimationFactoryImageScaleUtil, baseImageAnimationFactory)
        local scaleProperties = AllBinary.getScalePropertiesP(baseImageAnimationFactory)
        if scaleProperties.scaleWidth != Int32(0) && scaleProperties.scaleHeight != Int32(0)
            local animationFactoryInitializationVisitor = AllBinary.getAnimationFactoryInitializationVisitorP(baseImageAnimationFactory)
            local scaleX::Float32 = (Float32(scaleProperties.scaleWidth)) / (Float32(animationFactoryInitializationVisitor.width))
            local scaleY::Float32 = (Float32(scaleProperties.scaleHeight)) / (Float32(animationFactoryInitializationVisitor.height))
            if (scaleX == 1.0f0 && scaleY == 1.0f0) || (scaleX == 0.0f0 || scaleY == 0.0f0)
                nothing
            else
                animationFactoryInitializationVisitor.dx = (((animationFactoryInitializationVisitor.originalDx * scaleX)) % Int32)
                animationFactoryInitializationVisitor.dy = (((animationFactoryInitializationVisitor.originalDy * scaleY)) % Int32)
            end
        else
            nothing
        end
        nothing
end

