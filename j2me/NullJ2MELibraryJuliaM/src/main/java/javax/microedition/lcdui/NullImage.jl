#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package javax.microedition.lcdui

mutable struct NullImage <: JObject
    NullImage() = new()
end

const NullImage_NULL_IMAGE_ARRAYValue = Ref{Any}(nothing)
const NullImage_NULL_IMAGE_ARRAYSet = Ref(false)
function staticGet_NULL_IMAGE_ARRAY(::Type{NullImage})
    if !NullImage_NULL_IMAGE_ARRAYSet[]
        NullImage_NULL_IMAGE_ARRAYSet[] = true
        NullImage_NULL_IMAGE_ARRAYValue[] = jNewArray(Any, Int32(0), nothing)
    end
    NullImage_NULL_IMAGE_ARRAYValue[]
end
function staticSet_NULL_IMAGE_ARRAY(::Type{NullImage}, value)
    NullImage_NULL_IMAGE_ARRAYSet[] = true
    NullImage_NULL_IMAGE_ARRAYValue[] = value
end
const NullImage_NULL_IMAGEValue = Ref{Any}(nothing)
const NullImage_NULL_IMAGESet = Ref(false)
function staticGet_NULL_IMAGE(::Type{NullImage})
    if !NullImage_NULL_IMAGESet[]
        NullImage_NULL_IMAGESet[] = true
        NullImage_NULL_IMAGEValue[] = newImage()
    end
    NullImage_NULL_IMAGEValue[]
end
function staticSet_NULL_IMAGE(::Type{NullImage}, value)
    NullImage_NULL_IMAGESet[] = true
    NullImage_NULL_IMAGEValue[] = value
end

function initFieldsNullImage(this::NullImage)
    nothing
end

function initNullImage(this::NullImage)
    initFieldsNullImage(this)
end

function newNullImage()
    this = NullImage()
    initNullImage(this)
    this
end

