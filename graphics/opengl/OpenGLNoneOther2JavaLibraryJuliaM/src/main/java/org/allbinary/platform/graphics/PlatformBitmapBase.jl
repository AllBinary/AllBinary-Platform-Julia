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
    alpha::Int32
    basicColor::Any
    PlatformBitmapBase() = new()
end

const PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASEValue = Ref{Any}(nothing)
const PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASESet = Ref(false)
function staticGet_NULL_PLATFORM_BITMAP_BASE(::Type{PlatformBitmapBase})
    if !PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASESet[]
        PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASESet[] = true
        PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASEValue[] = newPlatformBitmapBase()
    end
    PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASEValue[]
end
function staticSet_NULL_PLATFORM_BITMAP_BASE(::Type{PlatformBitmapBase}, value)
    PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASESet[] = true
    PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASEValue[] = value
end

function initFieldsPlatformBitmapBase(this::PlatformBitmapBase)
    this.alpha = Int32(0)
    this.basicColor = nothing
    this.alpha = Int32(255)
    this.basicColor = AllBinary.getInstance(BasicColorFactory).NULL_COLOR
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


function getWidth(this::PlatformBitmapBase)
        return Int32(0)
end


function getHeight(this::PlatformBitmapBase)
        return Int32(0)
end


function getImage(this::PlatformBitmapBase)
        return staticGet_NULL_IMAGE(NullImage)
end

