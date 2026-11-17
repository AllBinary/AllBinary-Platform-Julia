# Generated Code Do Not Modify
# package org.allbinary.device

mutable struct OpenGLESNullGraphicsFactory <: JObject
    OpenGLESNullGraphicsFactory() = new()
end

const OpenGLESNullGraphicsFactory_instanceValue = Ref{Any}(nothing)
const OpenGLESNullGraphicsFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLESNullGraphicsFactory})
    if !OpenGLESNullGraphicsFactory_instanceSet[]
        OpenGLESNullGraphicsFactory_instanceSet[] = true
        OpenGLESNullGraphicsFactory_instanceValue[] = newOpenGLESGraphics()
    end
    OpenGLESNullGraphicsFactory_instanceValue[]
end
function staticSet_instance(::Type{OpenGLESNullGraphicsFactory}, value)
    OpenGLESNullGraphicsFactory_instanceSet[] = true
    OpenGLESNullGraphicsFactory_instanceValue[] = value
end

function initFieldsOpenGLESNullGraphicsFactory(this::OpenGLESNullGraphicsFactory)
    nothing
end

function initOpenGLESNullGraphicsFactory(this::OpenGLESNullGraphicsFactory)
    initFieldsOpenGLESNullGraphicsFactory(this)
end

function newOpenGLESNullGraphicsFactory()
    this = OpenGLESNullGraphicsFactory()
    initOpenGLESNullGraphicsFactory(this)
    this
end


function getInstance(::Type{OpenGLESNullGraphicsFactory})
        return staticGet_instance(OpenGLESNullGraphicsFactory)
end

