# Generated Code Do Not Modify
# package org.allbinary.graphics

# extends PlatformBitmapBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OpenGLBitmap <: JObject
    bitmap::Any
    OpenGLBitmap() = new()
end


function initFieldsOpenGLBitmap(this::OpenGLBitmap)
    this.bitmap = nothing
    
    nothing
end


function initOpenGLBitmap(this::OpenGLBitmap, bitmap)
        initPlatformBitmapBase(this)
        initFieldsOpenGLBitmap(this)
        this.bitmap = bitmap
        nothing
end

function newOpenGLBitmap(bitmap)
    this = OpenGLBitmap()
    initOpenGLBitmap(this, bitmap)
    this
end


function getPixels(this::OpenGLBitmap, pixels, offset, stride, x, y, width, height)
        nothing
        nothing
end


function setPixels(this::OpenGLBitmap, pixels, offset, stride, x, y, width, height)
        nothing
        nothing
end


function recycle(this::OpenGLBitmap)
        nothing
        nothing
end

