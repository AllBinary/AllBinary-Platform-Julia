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
# package org.allbinary.image

mutable struct AnimationFrameToImageUtil <: JObject
    AnimationFrameToImageUtil() = new()
end

const AnimationFrameToImageUtil_instanceValue = Ref{Any}(nothing)
const AnimationFrameToImageUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{AnimationFrameToImageUtil})
    if !AnimationFrameToImageUtil_instanceSet[]
        AnimationFrameToImageUtil_instanceSet[] = true
        AnimationFrameToImageUtil_instanceValue[] = newAnimationFrameToImageUtil()
    end
    AnimationFrameToImageUtil_instanceValue[]
end
function staticSet_instance(::Type{AnimationFrameToImageUtil}, value)
    AnimationFrameToImageUtil_instanceSet[] = true
    AnimationFrameToImageUtil_instanceValue[] = value
end

function initFieldsAnimationFrameToImageUtil(this::AnimationFrameToImageUtil)
    nothing
end

function initAnimationFrameToImageUtil(this::AnimationFrameToImageUtil)
    initFieldsAnimationFrameToImageUtil(this)
end

function newAnimationFrameToImageUtil()
    this = AnimationFrameToImageUtil()
    initAnimationFrameToImageUtil(this)
    this
end


function getInstance(::Type{AnimationFrameToImageUtil})
        return staticGet_instance(AnimationFrameToImageUtil)
end


function getInstanceTranslate(this::AnimationFrameToImageUtil, width, height, animationInterface)
        local image = AllBinary.get(AllBinary.getInstance(GameFeatureImageCacheFactory), jClassName(staticGet_instance(AnimationFrameToImageUtil)), ((width * Int32(3)) >> Int32(1)), ((height * Int32(3)) >> Int32(1)))
        local graphics = AllBinary.getGraphics(image)
        local tranlateX::Int32 = (width >> Int32(2))
        local tranlateY::Int32 = (height >> Int32(2))
        AllBinary.translate(graphics, tranlateX, tranlateY)
        AllBinary.paintXY(animationInterface, graphics, Int32(0), Int32(0))
        AllBinary.translate(graphics, -tranlateX, -tranlateY)
        return image
end


function getInstanceWH(this::AnimationFrameToImageUtil, width, height, animationInterface)
        local image = AllBinary.get(AllBinary.getInstance(GameFeatureImageCacheFactory), jClassName(staticGet_instance(AnimationFrameToImageUtil)), width, height)
        local graphics = AllBinary.getGraphics(image)
        AllBinary.paintXY(animationInterface, graphics, Int32(0), Int32(0))
        return image
end

