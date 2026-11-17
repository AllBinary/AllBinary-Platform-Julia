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
# package org.allbinary.platform.graphics

mutable struct PlatformBitmapBase <: JObject
    PlatformBitmapBase() = new()
end


function initFieldsPlatformBitmapBase(this::PlatformBitmapBase)
    nothing
end

function initPlatformBitmapBase(this::PlatformBitmapBase)
    initFieldsPlatformBitmapBase(this)
end

function newPlatformBitmapBase()
    this = PlatformBitmapBase()
    initPlatformBitmapBase(this)
    this
end


function getImage(this::PlatformBitmapBase)
        return staticGet_NULL_IMAGE(NullImage)
end

