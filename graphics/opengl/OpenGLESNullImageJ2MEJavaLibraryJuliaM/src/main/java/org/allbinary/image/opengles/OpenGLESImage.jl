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
# package org.allbinary.image.opengles

#OpenGLESNullImageJ2MEJavaLibrary
mutable struct OpenGLESImage <: JObject
    commonStrings::Any
    textureFactory::Any
    openGLBitmap::Any
    openGLESImageProperties::Any
    OpenGLESImage() = new()
end

const OpenGLESImage_NULL_OPENGL_IMAGEValue = Ref{Any}(nothing)
const OpenGLESImage_NULL_OPENGL_IMAGESet = Ref(false)
function staticGet_NULL_OPENGL_IMAGE(::Type{OpenGLESImage})
    if !OpenGLESImage_NULL_OPENGL_IMAGESet[]
        OpenGLESImage_NULL_OPENGL_IMAGESet[] = true
        OpenGLESImage_NULL_OPENGL_IMAGEValue[] = newOpenGLESImage(staticGet_NULL_IMAGE(NullImage), staticGet_NULL_PLATFORM_BITMAP_BASE_FACTORY(PlatformBitmapBaseFactory), staticGet_NULL_PLATFORM_TEXTURE_BASE_FACTORY(PlatformTextureBaseFactory))
    end
    OpenGLESImage_NULL_OPENGL_IMAGEValue[]
end
function staticSet_NULL_OPENGL_IMAGE(::Type{OpenGLESImage}, value)
    OpenGLESImage_NULL_OPENGL_IMAGESet[] = true
    OpenGLESImage_NULL_OPENGL_IMAGEValue[] = value
end
const OpenGLESImage_texture2dListValue = Ref{Any}(nothing)
const OpenGLESImage_texture2dListSet = Ref(false)
function staticGet_texture2dList(::Type{OpenGLESImage})
    if !OpenGLESImage_texture2dListSet[]
        OpenGLESImage_texture2dListSet[] = true
        OpenGLESImage_texture2dListValue[] = newBasicArrayListD()
    end
    OpenGLESImage_texture2dListValue[]
end
function staticSet_texture2dList(::Type{OpenGLESImage}, value)
    OpenGLESImage_texture2dListSet[] = true
    OpenGLESImage_texture2dListValue[] = value
end
const OpenGLESImage_TYPEValue = Ref{Any}(nothing)
const OpenGLESImage_TYPESet = Ref(false)
function staticGet_TYPE(::Type{OpenGLESImage})
    if !OpenGLESImage_TYPESet[]
        OpenGLESImage_TYPESet[] = true
        OpenGLESImage_TYPEValue[] = Int32(4)
    end
    OpenGLESImage_TYPEValue[]
end
function staticSet_TYPE(::Type{OpenGLESImage}, value)
    OpenGLESImage_TYPESet[] = true
    OpenGLESImage_TYPEValue[] = value
end

function initFieldsOpenGLESImage(this::OpenGLESImage)
    this.commonStrings = nothing
    this.textureFactory = nothing
    this.openGLBitmap = nothing
    this.openGLESImageProperties = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    this.openGLESImageProperties = newOpenGLESImageProperties()
    nothing
end


function initOpenGLESImage(this::OpenGLESImage, image, bitmapFactory, textureFactory)
        initFieldsOpenGLESImage(this)
        this.openGLBitmap = AllBinary.createBitmap(bitmapFactory, image)
        this.textureFactory = textureFactory
        nothing
end

function newOpenGLESImage(image, bitmapFactory, textureFactory)
    this = OpenGLESImage()
    initOpenGLESImage(this, image, bitmapFactory, textureFactory)
    this
end


function set(this::OpenGLESImage, gl)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function initTexture(this::OpenGLESImage, gl)
        return false
end


function drawRegion(this::OpenGLESImage, gl, viewHeight, x_src, y_src, width, height, x, y, z)
        nothing
        nothing
end


function draw(this::OpenGLESImage, gl, x, y, z)
        nothing
        nothing
end


function getType(this::OpenGLESImage)
        return staticGet_TYPE(OpenGLESImage)
end

