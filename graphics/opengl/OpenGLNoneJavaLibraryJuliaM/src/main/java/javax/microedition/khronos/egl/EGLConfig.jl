# Generated Code Do Not Modify
# package javax.microedition.khronos.egl

mutable struct EGLConfig <: JObject
    EGLConfig() = new()
end


function initFieldsEGLConfig(this::EGLConfig)
    nothing
end


function initEGLConfig(this::EGLConfig)
        initFieldsEGLConfig(this)
        throw(jNewException("RuntimeException", ""))
        nothing
end

function newEGLConfig()
    this = EGLConfig()
    initEGLConfig(this)
    this
end

