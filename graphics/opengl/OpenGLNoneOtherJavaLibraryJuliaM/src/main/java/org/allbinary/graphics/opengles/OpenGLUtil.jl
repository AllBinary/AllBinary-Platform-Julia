# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

mutable struct OpenGLUtil <: JObject
    OpenGLUtil() = new()
end

const OpenGLUtil_instanceValue = Ref{Any}(nothing)
const OpenGLUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLUtil})
    if !OpenGLUtil_instanceSet[]
        OpenGLUtil_instanceSet[] = true
        OpenGLUtil_instanceValue[] = newOpenGLUtil()
    end
    OpenGLUtil_instanceValue[]
end
function staticSet_instance(::Type{OpenGLUtil}, value)
    OpenGLUtil_instanceSet[] = true
    OpenGLUtil_instanceValue[] = value
end

function initFieldsOpenGLUtil(this::OpenGLUtil)
    nothing
end

function initOpenGLUtil(this::OpenGLUtil)
    initFieldsOpenGLUtil(this)
end

function newOpenGLUtil()
    this = OpenGLUtil()
    initOpenGLUtil(this)
    this
end


function getInstance(::Type{OpenGLUtil})
        return staticGet_instance(OpenGLUtil)
end


function addImage(this::OpenGLUtil, image)
        return image
end


function clear(this::OpenGLUtil)
        nothing
        nothing
end


function addRunnable(this::OpenGLUtil, runnable)
        nothing
        nothing
end

