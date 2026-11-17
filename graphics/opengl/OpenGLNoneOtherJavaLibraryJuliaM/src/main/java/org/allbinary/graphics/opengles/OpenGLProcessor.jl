# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

mutable struct OpenGLProcessor <: JObject
    logUtil::Any
    commonStrings::Any
    OpenGLProcessor() = new()
end


function initFieldsOpenGLProcessor(this::OpenGLProcessor)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end

function initOpenGLProcessor(this::OpenGLProcessor)
    initFieldsOpenGLProcessor(this)
end

function newOpenGLProcessor()
    this = OpenGLProcessor()
    initOpenGLProcessor(this)
    this
end


function process(this::OpenGLProcessor, gl)
        nothing
        nothing
end

