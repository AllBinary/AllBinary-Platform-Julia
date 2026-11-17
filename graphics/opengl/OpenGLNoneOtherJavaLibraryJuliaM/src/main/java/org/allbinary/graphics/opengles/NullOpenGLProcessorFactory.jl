# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

mutable struct NullOpenGLProcessorFactory <: JObject
    NullOpenGLProcessorFactory() = new()
end

const NullOpenGLProcessorFactory_instanceValue = Ref{Any}(nothing)
const NullOpenGLProcessorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{NullOpenGLProcessorFactory})
    if !NullOpenGLProcessorFactory_instanceSet[]
        NullOpenGLProcessorFactory_instanceSet[] = true
        NullOpenGLProcessorFactory_instanceValue[] = newOpenGLProcessor()
    end
    NullOpenGLProcessorFactory_instanceValue[]
end
function staticSet_instance(::Type{NullOpenGLProcessorFactory}, value)
    NullOpenGLProcessorFactory_instanceSet[] = true
    NullOpenGLProcessorFactory_instanceValue[] = value
end

function initFieldsNullOpenGLProcessorFactory(this::NullOpenGLProcessorFactory)
    nothing
end

function initNullOpenGLProcessorFactory(this::NullOpenGLProcessorFactory)
    initFieldsNullOpenGLProcessorFactory(this)
end

function newNullOpenGLProcessorFactory()
    this = NullOpenGLProcessorFactory()
    initNullOpenGLProcessorFactory(this)
    this
end


function getInstance(::Type{NullOpenGLProcessorFactory})
        return staticGet_instance(NullOpenGLProcessorFactory)
end

