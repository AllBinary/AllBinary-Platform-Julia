# Generated Code Do Not Modify
# package org.allbinary.graphics.form

mutable struct ScreenInfo <: JObject
    SMALL_WIDTH::Int32
    SMALL_HEIGHT::Int32
    MEDIUM_WIDTH::Int32
    MEDIUM_HEIGHT::Int32
    ScreenInfo() = new()
end

const ScreenInfo_instanceValue = Ref{Any}(nothing)
const ScreenInfo_instanceSet = Ref(false)
function staticGet_instance(::Type{ScreenInfo})
    if !ScreenInfo_instanceSet[]
        ScreenInfo_instanceSet[] = true
        ScreenInfo_instanceValue[] = newScreenInfo()
    end
    ScreenInfo_instanceValue[]
end
function staticSet_instance(::Type{ScreenInfo}, value)
    ScreenInfo_instanceSet[] = true
    ScreenInfo_instanceValue[] = value
end

function initFieldsScreenInfo(this::ScreenInfo)
    this.SMALL_WIDTH = Int32(0)
    this.SMALL_HEIGHT = Int32(0)
    this.MEDIUM_WIDTH = Int32(0)
    this.MEDIUM_HEIGHT = Int32(0)
    this.SMALL_WIDTH = Int32(320)
    this.SMALL_HEIGHT = Int32(240)
    this.MEDIUM_WIDTH = Int32(800)
    this.MEDIUM_HEIGHT = Int32(600)
    nothing
end

function initScreenInfo(this::ScreenInfo)
    initFieldsScreenInfo(this)
end

function newScreenInfo()
    this = ScreenInfo()
    initScreenInfo(this)
    this
end


function getInstance(::Type{ScreenInfo})
        return staticGet_instance(ScreenInfo)
end

