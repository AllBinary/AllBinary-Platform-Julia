#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2011 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
=#
# Generated Code Do Not Modify
# package org.allbinary.emulator.device

# extends TrueTypeFontUtilBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TrueTypeFontUtil <: JObject
    fontImage::Any
    TrueTypeFontUtil() = new()
end

const TrueTypeFontUtil_instanceValue = Ref{Any}(nothing)
const TrueTypeFontUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{TrueTypeFontUtil})
    if !TrueTypeFontUtil_instanceSet[]
        TrueTypeFontUtil_instanceSet[] = true
        TrueTypeFontUtil_instanceValue[] = newTrueTypeFontUtil()
    end
    TrueTypeFontUtil_instanceValue[]
end
function staticSet_instance(::Type{TrueTypeFontUtil}, value)
    TrueTypeFontUtil_instanceSet[] = true
    TrueTypeFontUtil_instanceValue[] = value
end

function initFieldsTrueTypeFontUtil(this::TrueTypeFontUtil)
    this.fontImage = nothing
    this.fontImage = staticGet_NULL_OPENGL_IMAGE(OpenGLESImage)
    nothing
end


function getInstance(::Type{TrueTypeFontUtil})
        return staticGet_instance(TrueTypeFontUtil)
end


function initTrueTypeFontUtil(this::TrueTypeFontUtil)
        initTrueTypeFontUtilBase(this, Int32(1))
        initFieldsTrueTypeFontUtil(this)
        nothing
end

function newTrueTypeFontUtil()
    this = TrueTypeFontUtil()
    initTrueTypeFontUtil(this)
    this
end


function getAsTextureSize(this::TrueTypeFontUtil, textureSize)
        throw(jNewException("RuntimeException", ""))
end


function getCellSize(this::TrueTypeFontUtil, cellSize)
        throw(jNewException("RuntimeException", ""))
end


function getFontBitmap(this::TrueTypeFontUtil, filename, fontSize, cellSize, basicColor)
        throw(jNewException("RuntimeException", ""))
end


function saveFontAtlasAsFile(this::TrueTypeFontUtil)
        nothing
        nothing
end


function getFontBitmapGL(this::TrueTypeFontUtil, gl, filename, cellSize, basicColor)
        throw(jNewException("RuntimeException", ""))
end


function getFontWidths(this::TrueTypeFontUtil, filename, fontSize)
        throw(jNewException("RuntimeException", ""))
end

