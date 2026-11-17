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
# package org.allbinary.media.image

mutable struct ImageCompleteUtil <: JObject
    ImageCompleteUtil() = new()
end

const ImageCompleteUtil_instanceValue = Ref{Any}(nothing)
const ImageCompleteUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ImageCompleteUtil})
    if !ImageCompleteUtil_instanceSet[]
        ImageCompleteUtil_instanceSet[] = true
        ImageCompleteUtil_instanceValue[] = newImageCompleteUtil()
    end
    ImageCompleteUtil_instanceValue[]
end
function staticSet_instance(::Type{ImageCompleteUtil}, value)
    ImageCompleteUtil_instanceSet[] = true
    ImageCompleteUtil_instanceValue[] = value
end

function initFieldsImageCompleteUtil(this::ImageCompleteUtil)
    nothing
end

function initImageCompleteUtil(this::ImageCompleteUtil)
    initFieldsImageCompleteUtil(this)
end

function newImageCompleteUtil()
    this = ImageCompleteUtil()
    initImageCompleteUtil(this)
    this
end


function getInstance(::Type{ImageCompleteUtil})
        return staticGet_instance(ImageCompleteUtil)
end


function waitForImage(this::ImageCompleteUtil, image, name)
        nothing
        nothing
end

