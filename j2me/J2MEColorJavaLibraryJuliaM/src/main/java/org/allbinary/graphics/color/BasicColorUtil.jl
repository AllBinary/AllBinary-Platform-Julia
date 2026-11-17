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
# package org.allbinary.graphics.color

mutable struct BasicColorUtil <: JObject
    ZERO_ARRAY::Any
    ALPHA::Int32
    isAlpha::Bool
    ffOpaque::Bool
    BasicColorUtil() = new()
end

const BasicColorUtil_instanceValue = Ref{Any}(nothing)
const BasicColorUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicColorUtil})
    if !BasicColorUtil_instanceSet[]
        BasicColorUtil_instanceSet[] = true
        BasicColorUtil_instanceValue[] = newBasicColorUtil()
    end
    BasicColorUtil_instanceValue[]
end
function staticSet_instance(::Type{BasicColorUtil}, value)
    BasicColorUtil_instanceSet[] = true
    BasicColorUtil_instanceValue[] = value
end

function initFieldsBasicColorUtil(this::BasicColorUtil)
    this.ZERO_ARRAY = nothing
    this.ALPHA = Int32(0)
    this.isAlpha = false
    this.ffOpaque = false
    this.ZERO_ARRAY = jNewArray(Any, Int32(0), nothing)
    this.ALPHA = Int32(0xFF000000)
    this.isAlpha = true
    this.ffOpaque = true
    nothing
end

function initBasicColorUtil(this::BasicColorUtil)
    initFieldsBasicColorUtil(this)
end

function newBasicColorUtil()
    this = BasicColorUtil()
    initBasicColorUtil(this)
    this
end


function getInstance(::Type{BasicColorUtil})
        return staticGet_instance(BasicColorUtil)
end


function getRGB(this::BasicColorUtil, red, green, blue)
        local value::Int32 = Int32(0)
        if this.isAlpha
            if this.ffOpaque
                value = this.ALPHA
            end
        end
        value = (red << Int32(16)) | value
        value = (green << Int32(8)) | value
        value = blue | value
        return value
end


function getARGB(this::BasicColorUtil, alphaValue, r, g, b)
        return ((alphaValue << Int32(24)) & this.ALPHA) + ((r << Int32(16)) & Int32(0x00FF0000)) + ((g << Int32(8)) & Int32(0x0000FF00)) + (b & Int32(0x000000FF))
end


function get(this::BasicColorUtil, alphaValue, color)
        return ((alphaValue << Int32(24)) & this.ALPHA) + color
end


function invert(this::BasicColorUtil, color)
        return (Int32(0xFFFFFF) - color) | this.ALPHA
end

