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

mutable struct ImageArrayRotationAnimationCacheableInterfaceFactory <: JObject
    ImageArrayRotationAnimationCacheableInterfaceFactory() = new()
end


function initFieldsImageArrayRotationAnimationCacheableInterfaceFactory(this::ImageArrayRotationAnimationCacheableInterfaceFactory)
    nothing
end

function initImageArrayRotationAnimationCacheableInterfaceFactory(this::ImageArrayRotationAnimationCacheableInterfaceFactory)
    initFieldsImageArrayRotationAnimationCacheableInterfaceFactory(this)
end

function newImageArrayRotationAnimationCacheableInterfaceFactory()
    this = ImageArrayRotationAnimationCacheableInterfaceFactory()
    initImageArrayRotationAnimationCacheableInterfaceFactory(this)
    this
end


function getInstance(this::ImageArrayRotationAnimationCacheableInterfaceFactory, key)
        return newImageArrayRotationAnimationCacheable(key, AllBinary.getInstance(AnimationBehavior))
end

