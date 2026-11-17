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
# package javax.microedition.lcdui

#PlatformNullImageJavaLibrary
# extends PlatformImage: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PreLoadPlatformImage <: JObject
    PreLoadPlatformImage() = new()
end

const PreLoadPlatformImage_instanceValue = Ref{Any}(nothing)
const PreLoadPlatformImage_instanceSet = Ref(false)
function staticGet_instance(::Type{PreLoadPlatformImage})
    if !PreLoadPlatformImage_instanceSet[]
        PreLoadPlatformImage_instanceSet[] = true
        PreLoadPlatformImage_instanceValue[] = newPreLoadPlatformImage()
    end
    PreLoadPlatformImage_instanceValue[]
end
function staticSet_instance(::Type{PreLoadPlatformImage}, value)
    PreLoadPlatformImage_instanceSet[] = true
    PreLoadPlatformImage_instanceValue[] = value
end

function initFieldsPreLoadPlatformImage(this::PreLoadPlatformImage)
    nothing
end

function initPreLoadPlatformImage(this::PreLoadPlatformImage)
    initPlatformImage(this)
    initFieldsPreLoadPlatformImage(this)
end

function newPreLoadPlatformImage()
    this = PreLoadPlatformImage()
    initPreLoadPlatformImage(this)
    this
end


function getInstance(::Type{PreLoadPlatformImage})
        return staticGet_instance(PreLoadPlatformImage)
end

