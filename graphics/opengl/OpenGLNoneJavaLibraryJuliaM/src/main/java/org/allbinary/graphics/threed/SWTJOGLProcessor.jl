#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.threed

#OpenGLNone
mutable struct SWTJOGLProcessor <: JObject
    SWTJOGLProcessor() = new()
end

const SWTJOGLProcessor_instanceValue = Ref{Any}(nothing)
const SWTJOGLProcessor_instanceSet = Ref(false)
function staticGet_instance(::Type{SWTJOGLProcessor})
    if !SWTJOGLProcessor_instanceSet[]
        SWTJOGLProcessor_instanceSet[] = true
        SWTJOGLProcessor_instanceValue[] = newSWTJOGLProcessor()
    end
    SWTJOGLProcessor_instanceValue[]
end
function staticSet_instance(::Type{SWTJOGLProcessor}, value)
    SWTJOGLProcessor_instanceSet[] = true
    SWTJOGLProcessor_instanceValue[] = value
end

function initFieldsSWTJOGLProcessor(this::SWTJOGLProcessor)
    nothing
end

function initSWTJOGLProcessor(this::SWTJOGLProcessor)
    initFieldsSWTJOGLProcessor(this)
end

function newSWTJOGLProcessor()
    this = SWTJOGLProcessor()
    initSWTJOGLProcessor(this)
    this
end


function getInstance(::Type{SWTJOGLProcessor})
        return staticGet_instance(SWTJOGLProcessor)
end


function init(this::SWTJOGLProcessor, display, comp)
        nothing
        nothing
end


function isHolderCreated(this::SWTJOGLProcessor)
        return true
end


function setRenderer(this::SWTJOGLProcessor, renderer)
        nothing
        nothing
end


function isJOGL(this::SWTJOGLProcessor)
        return false
end


function createSurface(this::SWTJOGLProcessor)
        nothing
        nothing
end


function onSurfaceCreated(this::SWTJOGLProcessor)
        nothing
        nothing
end


function onSurfaceChangedForEvent(this::SWTJOGLProcessor, event)
        nothing
        nothing
end


function onSurfaceChanged(this::SWTJOGLProcessor)
        nothing
        nothing
end


function onSurfaceChangedWH(this::SWTJOGLProcessor, width, height)
        nothing
        nothing
end


function addListener(this::SWTJOGLProcessor)
        nothing
        nothing
end


function addListeners(this::SWTJOGLProcessor, midlet)
        nothing
        nothing
end


function run(this::SWTJOGLProcessor)
        nothing
        nothing
end


function clear(this::SWTJOGLProcessor)
        nothing
        nothing
end


function setCustom(this::SWTJOGLProcessor, width, height, ratio)
        nothing
        nothing
end


function setRatioProcessor(this::SWTJOGLProcessor, ratioProcessor)
        nothing
        nothing
end


function isPortraitRatioProcessor(this::SWTJOGLProcessor)
        return true
end


function charWidth(this::SWTJOGLProcessor, font, ch)
        throw(jNewException("RuntimeException", ""))
end


function charsWidth(this::SWTJOGLProcessor, font, ch, offset, length)
        throw(jNewException("RuntimeException", ""))
end


function stringWidth(this::SWTJOGLProcessor, font, str)
        throw(jNewException("RuntimeException", ""))
end


function substringWidth(this::SWTJOGLProcessor, font, str, offset, len)
        throw(jNewException("RuntimeException", ""))
end

