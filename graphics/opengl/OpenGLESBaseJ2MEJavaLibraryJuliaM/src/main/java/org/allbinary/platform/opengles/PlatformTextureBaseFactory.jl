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
# package org.allbinary.platform.opengles

mutable struct PlatformTextureBaseFactory <: JObject
    commonStrings::Any
    PlatformTextureBaseFactory() = new()
end

const PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYValue = Ref{Any}(nothing)
const PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYSet = Ref(false)
function staticGet_NULL_PLATFORM_TEXTURE_BASE_FACTORY(::Type{PlatformTextureBaseFactory})
    if !PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYSet[]
        PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYSet[] = true
        PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYValue[] = newPlatformTextureBaseFactory()
    end
    PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYValue[]
end
function staticSet_NULL_PLATFORM_TEXTURE_BASE_FACTORY(::Type{PlatformTextureBaseFactory}, value)
    PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYSet[] = true
    PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORYValue[] = value
end

function initFieldsPlatformTextureBaseFactory(this::PlatformTextureBaseFactory)
    this.commonStrings = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end

function initPlatformTextureBaseFactory(this::PlatformTextureBaseFactory)
    initFieldsPlatformTextureBaseFactory(this)
end

function newPlatformTextureBaseFactory()
    this = PlatformTextureBaseFactory()
    initPlatformTextureBaseFactory(this)
    this
end


function load(this::PlatformTextureBaseFactory, gl, target, level, image, border, flip)
        nothing
        nothing
end

