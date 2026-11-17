# Generated Code Do Not Modify
# package org.allbinary.device

mutable struct OpenGLESGraphics <: JObject
    commonStrings::Any
    gl::Any
    OpenGLESGraphics() = new()
end


function initFieldsOpenGLESGraphics(this::OpenGLESGraphics)
    this.commonStrings = nothing
    this.gl = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.gl = staticGet_NULL_GL10(NullGL10)
    nothing
end


function initOpenGLESGraphics(this::OpenGLESGraphics)
        initFieldsOpenGLESGraphics(this)
        nothing
        nothing
end

function newOpenGLESGraphics()
    this = OpenGLESGraphics()
    initOpenGLESGraphics(this)
    this
end


function updateGL(this::OpenGLESGraphics, gl)
        nothing
        nothing
end


function set(this::OpenGLESGraphics, gl)
        nothing
        nothing
end


function init(this::OpenGLESGraphics)
        nothing
        nothing
end


function update(this::OpenGLESGraphics)
        nothing
        nothing
end


function setOrthoginalMode(this::OpenGLESGraphics)
        nothing
        nothing
end


function setCameraMode(this::OpenGLESGraphics)
        nothing
        nothing
end


function getGlP(this::OpenGLESGraphics)
        return this.gl
end


function setFontDebug(this::OpenGLESGraphics, font, fontDebug)
        throw(jNewException("RuntimeException", ""))
        nothing
end

