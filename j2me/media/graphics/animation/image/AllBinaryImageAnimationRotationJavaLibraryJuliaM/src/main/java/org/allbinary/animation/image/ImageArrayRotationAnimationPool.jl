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
# package org.allbinary.animation.image

# extends BasicArrayListResetablePool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageArrayRotationAnimationPool <: JObject
    ImageArrayRotationAnimationPool() = new()
end

const ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLValue = Ref{Any}(nothing)
const ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLSet = Ref(false)
function staticGet_IMAGE_ROTATION_ANIMATION_POOL(::Type{ImageArrayRotationAnimationPool})
    if !ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLSet[]
        ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLSet[] = true
        ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLValue[] = newImageArrayRotationAnimationPool(newImageArrayRotationAnimationCacheableInterfaceFactory())
    end
    ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLValue[]
end
function staticSet_IMAGE_ROTATION_ANIMATION_POOL(::Type{ImageArrayRotationAnimationPool}, value)
    ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLSet[] = true
    ImageArrayRotationAnimationPool_IMAGE_ROTATION_ANIMATION_POOLValue[] = value
end

function initFieldsImageArrayRotationAnimationPool(this::ImageArrayRotationAnimationPool)
    nothing
end


function initImageArrayRotationAnimationPool(this::ImageArrayRotationAnimationPool, cacheableInterfaceFactoryInterface)
        initBasicArrayListResetablePool(this, cacheableInterfaceFactoryInterface)
        nothing
end

function newImageArrayRotationAnimationPool(cacheableInterfaceFactoryInterface)
    this = ImageArrayRotationAnimationPool()
    initImageArrayRotationAnimationPool(this, cacheableInterfaceFactoryInterface)
    this
end


function getInstance(::Type{ImageArrayRotationAnimationPool})
        return staticGet_IMAGE_ROTATION_ANIMATION_POOL(ImageArrayRotationAnimationPool)
end


function remove(this::ImageArrayRotationAnimationPool, key)
        local cacheableInterface = AllBinary.remove(this, key)
        local allBinaryImageRotationAnimationInfo = (key)
        local imageArrayRotationAnimationCacheable = ((cacheableInterface))
        AllBinary.setImageArray(imageArrayRotationAnimationCacheable, AllBinary.getImageArray(allBinaryImageRotationAnimationInfo))
        return cacheableInterface
end

