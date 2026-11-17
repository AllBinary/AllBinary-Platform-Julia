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
# package org.allbinary.layer

mutable struct Layer <: JObject
    logUtil::Any
    x::Int32
    y::Int32
    z::Int32
    width::Int32
    height::Int32
    visible::Bool
    Layer() = new()
end

const Layer_IDValue = Ref{Any}(nothing)
const Layer_IDSet = Ref(false)
function staticGet_ID(::Type{Layer})
    if !Layer_IDSet[]
        Layer_IDSet[] = true
        Layer_IDValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(0))
    end
    Layer_IDValue[]
end
function staticSet_ID(::Type{Layer}, value)
    Layer_IDSet[] = true
    Layer_IDValue[] = value
end

function initFieldsLayer(this::Layer)
    this.logUtil = nothing
    this.x = Int32(0)
    this.y = Int32(0)
    this.z = Int32(0)
    this.width = Int32(0)
    this.height = Int32(0)
    this.visible = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.x = Int32(0)
    this.y = Int32(0)
    this.z = Int32(3)
    this.width = Int32(0)
    this.height = Int32(0)
    this.visible = true
    nothing
end


function initLayer(this::Layer, width, height)
        initFieldsLayer(this)
        AllBinary.setLayerWidth(this, width)
        AllBinary.setLayerHeight(this, height)
        nothing
end

function newLayer(width, height)
    this = Layer()
    initLayer(this, width, height)
    this
end


function setPosition(this::Layer, x, y, z)
        this.x = x
        this.y = y
        this.z = z
        nothing
end


function moveDXY(this::Layer, dx, dy)
        this.x += dx
        this.y += dy
        nothing
end


function moveDXYZ(this::Layer, dx, dy, dz)
        this.x += dx
        this.y += dy
        this.z += dz
        nothing
end


function getXP(this::Layer)
        return this.x
end


function getYP(this::Layer)
        return this.y
end


function getZP(this::Layer)
        return this.z
end


function getWidth(this::Layer)
        return this.width
end


function getHeight(this::Layer)
        return this.height
end


function getDepth(this::Layer)
        return Int64(0)
end


function setVisible(this::Layer, visible)
        this.visible = visible
        nothing
end


function isVisible(this::Layer)
        return this.visible
end


function paint(this::Layer, graphics)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        local canvasStrings = AllBinary.getInstance(CanvasStrings)
        AllBinary.putF(this.logUtil, commonStrings.NOT_IMPLEMENTED, this, canvasStrings.PAINT)
        nothing
end


function setLayerWidth(this::Layer, width)
        if width < Int32(0)
            throw(jNewException("IllegalArgumentException", ""))
        end
        this.width = width
        nothing
end


function setLayerHeight(this::Layer, height)
        if height < Int32(0)
            throw(jNewException("IllegalArgumentException", ""))
        end
        this.height = height
        nothing
end


function toStringAppend(this::Layer, stringBuffer)
        nothing
        nothing
end

