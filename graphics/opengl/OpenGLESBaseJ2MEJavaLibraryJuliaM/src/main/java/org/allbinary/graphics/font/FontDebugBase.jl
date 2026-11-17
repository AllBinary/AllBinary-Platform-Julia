# Generated Code Do Not Modify
# package org.allbinary.graphics.font

#OpenGLESBaseJ2MEJavaLibrary
mutable struct FontDebugBase <: JObject
    SET_FONT::Any
    FontDebugBase() = new()
end

const FontDebugBase_instanceBaseValue = Ref{Any}(nothing)
const FontDebugBase_instanceBaseSet = Ref(false)
function staticGet_instanceBase(::Type{FontDebugBase})
    if !FontDebugBase_instanceBaseSet[]
        FontDebugBase_instanceBaseSet[] = true
        FontDebugBase_instanceBaseValue[] = newFontDebugBase()
    end
    FontDebugBase_instanceBaseValue[]
end
function staticSet_instanceBase(::Type{FontDebugBase}, value)
    FontDebugBase_instanceBaseSet[] = true
    FontDebugBase_instanceBaseValue[] = value
end

function initFieldsFontDebugBase(this::FontDebugBase)
    this.SET_FONT = nothing
    this.SET_FONT = "setFont"
    nothing
end

function initFontDebugBase(this::FontDebugBase)
    initFieldsFontDebugBase(this)
end

function newFontDebugBase()
    this = FontDebugBase()
    initFontDebugBase(this)
    this
end


function getInstance(::Type{FontDebugBase})
        return staticGet_instanceBase(FontDebugBase)
end


function debugMetrics(this::FontDebugBase, currentFont, convertedTextSize, displayMetrics, stringBuffer)
        nothing
        nothing
end


function debugDpi(this::FontDebugBase, densityDpi, stringBuffer)
        nothing
        nothing
end


function debugDimension(this::FontDebugBase, currentFont, convertedTextSize, longestDimensionTotalPixels, stringBuffer)
        nothing
        nothing
end

