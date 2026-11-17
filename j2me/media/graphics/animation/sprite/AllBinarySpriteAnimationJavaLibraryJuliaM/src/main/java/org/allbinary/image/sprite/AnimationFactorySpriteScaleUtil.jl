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
# package org.allbinary.image.sprite

mutable struct AnimationFactorySpriteScaleUtil <: JObject
    imageCache::Any
    imageScaleUtil::Any
    openGLUtil::Any
    j2seMath::Any
    openGLESImageExclusionUtil::Any
    AnimationFactorySpriteScaleUtil() = new()
end

const AnimationFactorySpriteScaleUtil_instanceValue = Ref{Any}(nothing)
const AnimationFactorySpriteScaleUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{AnimationFactorySpriteScaleUtil})
    if !AnimationFactorySpriteScaleUtil_instanceSet[]
        AnimationFactorySpriteScaleUtil_instanceSet[] = true
        AnimationFactorySpriteScaleUtil_instanceValue[] = newAnimationFactorySpriteScaleUtil()
    end
    AnimationFactorySpriteScaleUtil_instanceValue[]
end
function staticSet_instance(::Type{AnimationFactorySpriteScaleUtil}, value)
    AnimationFactorySpriteScaleUtil_instanceSet[] = true
    AnimationFactorySpriteScaleUtil_instanceValue[] = value
end

function initFieldsAnimationFactorySpriteScaleUtil(this::AnimationFactorySpriteScaleUtil)
    this.imageCache = nothing
    this.imageScaleUtil = nothing
    this.openGLUtil = nothing
    this.j2seMath = nothing
    this.openGLESImageExclusionUtil = nothing
    this.imageCache = AllBinary.getInstance(ImageCacheFactory)
    this.imageScaleUtil = AllBinary.getInstance(ImageScaleUtil)
    this.openGLUtil = AllBinary.getInstance(OpenGLUtil)
    this.j2seMath = AllBinary.getInstance(J2SEMath)
    this.openGLESImageExclusionUtil = AllBinary.getInstance(OpenGLESImageExclusionUtil)
    nothing
end

function initAnimationFactorySpriteScaleUtil(this::AnimationFactorySpriteScaleUtil)
    initFieldsAnimationFactorySpriteScaleUtil(this)
end

function newAnimationFactorySpriteScaleUtil()
    this = AnimationFactorySpriteScaleUtil()
    initAnimationFactorySpriteScaleUtil(this)
    this
end


function getInstance(::Type{AnimationFactorySpriteScaleUtil})
        return staticGet_instance(AnimationFactorySpriteScaleUtil)
end


function createImage(this::AnimationFactorySpriteScaleUtil, image, width, height, scaleWidth, scaleHeight)
        local spriteFactory = AllBinary.getInstance(SpriteFactory)
        local sprite = nothing
        local scaledImage = nothing
        if scaleWidth != Int32(0) && scaleHeight != Int32(0)
            local scaleX::Float32 = (Float32(scaleWidth)) / (Float32(width))
            local scaleY::Float32 = (Float32(scaleHeight)) / (Float32(height))
            if (scaleX == 1.0f0 && scaleY == 1.0f0) || (scaleX == 0.0f0 || scaleY == 0.0f0)
                scaledImage = AllBinary.addImage(this.openGLUtil, image)
                sprite = AllBinary.createSprite(spriteFactory, scaledImage, width, height)
            else
                if AllBinary.isCustomScaling(this.openGLESImageExclusionUtil, image)
                    local width2::Int32 = AllBinary.round(this.j2seMath, Float32((scaleWidth)) - 0.5f0)
                    local height2::Int32 = AllBinary.round(this.j2seMath, Float32((scaleHeight)) - 0.5f0)
                    local multiplesOf16Width::Int32 = width2 ÷ Int32(16)
                    local by16Width::Int32 = multiplesOf16Width * Int32(16)
                    scaleX = (Float32(by16Width)) ÷ Float32(width)
                    local multiplesOf16Height::Int32 = height2 ÷ Int32(16)
                    local by16Height::Int32 = multiplesOf16Height * Int32(16)
                    scaleY = (Float32(by16Height)) ÷ Float32(height)
                    if scaleWidth < width
                        scaleX = scaleX * 2.35f0
                    end
                    if scaleHeight < height
                        scaleY = scaleY * 2.35f0
                    end
                end
                scaledImage = AllBinary.createImage2(this.imageScaleUtil, this.imageCache, image, scaleX, 1.0f0, scaleY, 1.0f0, true)
                sprite = AllBinary.createSprite(spriteFactory, scaledImage, (jToInt32((Float32(width) * scaleX)) % Int32), (jToInt32((Float32(height) * scaleY)) % Int32))
            end
        else
            scaledImage = AllBinary.addImage(this.openGLUtil, image)
            sprite = AllBinary.createSprite(spriteFactory, scaledImage, width, height)
        end
        return sprite
end

