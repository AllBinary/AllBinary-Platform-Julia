# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

mutable struct OpenGLThreadUtil <: JObject
    OpenGLThreadUtil() = new()
end

const OpenGLThreadUtil_instanceValue = Ref{Any}(nothing)
const OpenGLThreadUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{OpenGLThreadUtil})
    if !OpenGLThreadUtil_instanceSet[]
        OpenGLThreadUtil_instanceSet[] = true
        OpenGLThreadUtil_instanceValue[] = newOpenGLThreadUtil()
    end
    OpenGLThreadUtil_instanceValue[]
end
function staticSet_instance(::Type{OpenGLThreadUtil}, value)
    OpenGLThreadUtil_instanceSet[] = true
    OpenGLThreadUtil_instanceValue[] = value
end

function initFieldsOpenGLThreadUtil(this::OpenGLThreadUtil)
    nothing
end

function initOpenGLThreadUtil(this::OpenGLThreadUtil)
    initFieldsOpenGLThreadUtil(this)
end

function newOpenGLThreadUtil()
    this = OpenGLThreadUtil()
    initOpenGLThreadUtil(this)
    this
end


function getInstance(::Type{OpenGLThreadUtil})
        return staticGet_instance(OpenGLThreadUtil)
end


function set(this::OpenGLThreadUtil, glSurfaceView)
        nothing
        nothing
end


function onPause(this::OpenGLThreadUtil)
        nothing
        nothing
end


function onResume(this::OpenGLThreadUtil)
        nothing
        nothing
end

