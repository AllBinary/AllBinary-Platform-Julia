# Generated Code Do Not Modify
# package org.allbinary.graphics

# extends PlatformBitmapBaseFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OpenGLBitmapFactory <: JObject
    ARGB_8888::Any
    OpenGLBitmapFactory() = new()
end

const OpenGLBitmapFactory_instanceValue = Ref{Any}(nothing)
const OpenGLBitmapFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLBitmapFactory})
    if !OpenGLBitmapFactory_instanceSet[]
        OpenGLBitmapFactory_instanceSet[] = true
        OpenGLBitmapFactory_instanceValue[] = newOpenGLBitmapFactory()
    end
    OpenGLBitmapFactory_instanceValue[]
end
function staticSet_instance(::Type{OpenGLBitmapFactory}, value)
    OpenGLBitmapFactory_instanceSet[] = true
    OpenGLBitmapFactory_instanceValue[] = value
end

function initFieldsOpenGLBitmapFactory(this::OpenGLBitmapFactory)
    this.ARGB_8888 = nothing
    this.ARGB_8888 = newOpenGLBitmapConfig(AllBinary.getInstance(NullUtil).NULL_OBJECT)
    nothing
end

function initOpenGLBitmapFactory(this::OpenGLBitmapFactory)
    initPlatformBitmapBaseFactory(this)
    initFieldsOpenGLBitmapFactory(this)
end

function newOpenGLBitmapFactory()
    this = OpenGLBitmapFactory()
    initOpenGLBitmapFactory(this)
    this
end


function getInstance(::Type{OpenGLBitmapFactory})
        return staticGet_instance(OpenGLBitmapFactory)
end


function createBitmap(this::OpenGLBitmapFactory, width, height, config)
        return newOpenGLBitmap(AllBinary.getInstance(NullUtil).NULL_OBJECT)
end


function decodeStream(this::OpenGLBitmapFactory, inputStream)
        return newOpenGLBitmap(AllBinary.getInstance(NullUtil).NULL_OBJECT)
end


function createBitmap(this::OpenGLBitmapFactory, image)
        return newOpenGLBitmap(AllBinary.getInstance(NullUtil).NULL_OBJECT)
end

