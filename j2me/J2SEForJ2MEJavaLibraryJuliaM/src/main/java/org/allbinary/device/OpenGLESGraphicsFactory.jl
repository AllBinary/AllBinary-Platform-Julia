# Generated Code Do Not Modify
# package org.allbinary.device

mutable struct OpenGLESGraphicsFactory <: JObject
    OpenGLESGraphicsFactory() = new()
end


function initFieldsOpenGLESGraphicsFactory(this::OpenGLESGraphicsFactory)
    nothing
end

function initOpenGLESGraphicsFactory(this::OpenGLESGraphicsFactory)
    initFieldsOpenGLESGraphicsFactory(this)
end

function newOpenGLESGraphicsFactory()
    this = OpenGLESGraphicsFactory()
    initOpenGLESGraphicsFactory(this)
    this
end


function getOpenGLESGraphicsInstance(this::OpenGLESGraphicsFactory)
        return AllBinary.getInstance(OpenGLESNullGraphicsFactory)
end

