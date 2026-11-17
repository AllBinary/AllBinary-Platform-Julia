# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

#Temp should not be in any build
# extends Canvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullDisplayable <: JObject
    NullDisplayable() = new()
end

const NullDisplayable_SINGLETONValue = Ref{Any}(nothing)
const NullDisplayable_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NullDisplayable})
    if !NullDisplayable_SINGLETONSet[]
        NullDisplayable_SINGLETONSet[] = true
        NullDisplayable_SINGLETONValue[] = newNullDisplayable()
    end
    NullDisplayable_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NullDisplayable}, value)
    NullDisplayable_SINGLETONSet[] = true
    NullDisplayable_SINGLETONValue[] = value
end

function initFieldsNullDisplayable(this::NullDisplayable)
    nothing
end


function getInstance(::Type{NullDisplayable})
        return staticGet_SINGLETON(NullDisplayable)
end


function initNullDisplayable(this::NullDisplayable)
        initCanvas(this)
        initFieldsNullDisplayable(this)
        nothing
        nothing
end

function newNullDisplayable()
    this = NullDisplayable()
    initNullDisplayable(this)
    this
end


function paint(this::NullDisplayable, graphics)
        nothing
        nothing
end

