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
mutable struct PostLoadPlatformImage <: JObject
    PostLoadPlatformImage() = new()
end

const PostLoadPlatformImage_instanceValue = Ref{Any}(nothing)
const PostLoadPlatformImage_instanceSet = Ref(false)
function staticGet_instance(::Type{PostLoadPlatformImage})
    if !PostLoadPlatformImage_instanceSet[]
        PostLoadPlatformImage_instanceSet[] = true
        PostLoadPlatformImage_instanceValue[] = newPostLoadPlatformImage()
    end
    PostLoadPlatformImage_instanceValue[]
end
function staticSet_instance(::Type{PostLoadPlatformImage}, value)
    PostLoadPlatformImage_instanceSet[] = true
    PostLoadPlatformImage_instanceValue[] = value
end

function initFieldsPostLoadPlatformImage(this::PostLoadPlatformImage)
    nothing
end

function initPostLoadPlatformImage(this::PostLoadPlatformImage)
    initPlatformImage(this)
    initFieldsPostLoadPlatformImage(this)
end

function newPostLoadPlatformImage()
    this = PostLoadPlatformImage()
    initPostLoadPlatformImage(this)
    this
end


function getInstance(::Type{PostLoadPlatformImage})
        return staticGet_instance(PostLoadPlatformImage)
end

