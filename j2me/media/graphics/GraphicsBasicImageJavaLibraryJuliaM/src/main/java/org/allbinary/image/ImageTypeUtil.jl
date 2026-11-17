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
# package org.allbinary.image

mutable struct ImageTypeUtil <: JObject
    PNG::Any
    JPG::Any
    GIF::Any
    list::Any
    ImageTypeUtil() = new()
end

const ImageTypeUtil_SINGLETONValue = Ref{Any}(nothing)
const ImageTypeUtil_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{ImageTypeUtil})
    if !ImageTypeUtil_SINGLETONSet[]
        ImageTypeUtil_SINGLETONSet[] = true
        ImageTypeUtil_SINGLETONValue[] = newImageTypeUtil()
    end
    ImageTypeUtil_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{ImageTypeUtil}, value)
    ImageTypeUtil_SINGLETONSet[] = true
    ImageTypeUtil_SINGLETONValue[] = value
end

function initFieldsImageTypeUtil(this::ImageTypeUtil)
    this.PNG = nothing
    this.JPG = nothing
    this.GIF = nothing
    this.list = nothing
    this.PNG = "png"
    this.JPG = "jpg"
    this.GIF = "gif"
    this.list = newBasicArrayListD()
    nothing
end


function initImageTypeUtil(this::ImageTypeUtil)
        initFieldsImageTypeUtil(this)
        AllBinary.add(this.list, this.JPG)
        AllBinary.add(this.list, this.GIF)
        AllBinary.add(this.list, this.PNG)
        nothing
end

function newImageTypeUtil()
    this = ImageTypeUtil()
    initImageTypeUtil(this)
    this
end


function isSupported(this::ImageTypeUtil, mediaFileType)
        mediaFileType = Base.lowercase(mediaFileType)
        let
            local index::Int32 = AllBinary.size(this.list) - Int32(1)
            while index >= Int32(0)
            try
            local name = (AllBinary.get(this.list, index))
            if jCompareTo(mediaFileType, name) == Int32(0)
                return true
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return false
end


function getInstance(::Type{ImageTypeUtil})
        return staticGet_SINGLETON(ImageTypeUtil)
end

