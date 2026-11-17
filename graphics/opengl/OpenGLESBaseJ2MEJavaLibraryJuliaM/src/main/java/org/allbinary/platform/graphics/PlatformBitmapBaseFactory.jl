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

mutable struct PlatformBitmapBaseFactory <: JObject
    PlatformBitmapBaseFactory() = new()
end

const PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYValue = Ref{Any}(nothing)
const PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYSet = Ref(false)
function staticGet_NULL_PLATFORM_BITMAP_BASE_FACTORY(::Type{PlatformBitmapBaseFactory})
    if !PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYSet[]
        PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYSet[] = true
        PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYValue[] = newPlatformBitmapBaseFactory()
    end
    PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYValue[]
end
function staticSet_NULL_PLATFORM_BITMAP_BASE_FACTORY(::Type{PlatformBitmapBaseFactory}, value)
    PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYSet[] = true
    PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORYValue[] = value
end

function initFieldsPlatformBitmapBaseFactory(this::PlatformBitmapBaseFactory)
    nothing
end

function initPlatformBitmapBaseFactory(this::PlatformBitmapBaseFactory)
    initFieldsPlatformBitmapBaseFactory(this)
end

function newPlatformBitmapBaseFactory()
    this = PlatformBitmapBaseFactory()
    initPlatformBitmapBaseFactory(this)
    this
end


function createBitmap(this::PlatformBitmapBaseFactory, image)
        throw(jNewException("RuntimeException", ""))
end

