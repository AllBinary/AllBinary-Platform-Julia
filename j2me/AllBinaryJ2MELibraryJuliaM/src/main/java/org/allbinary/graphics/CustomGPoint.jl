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
# package org.allbinary.graphics

# extends GPoint: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CustomGPoint <: JObject
    cx::Int32
    cy::Int32
    cz::Int32
    CustomGPoint() = new()
end

const CustomGPoint_NULL_CUSTOM_POINTValue = Ref{Any}(nothing)
const CustomGPoint_NULL_CUSTOM_POINTSet = Ref(false)
function staticGet_NULL_CUSTOM_POINT(::Type{CustomGPoint})
    if !CustomGPoint_NULL_CUSTOM_POINTSet[]
        CustomGPoint_NULL_CUSTOM_POINTSet[] = true
        CustomGPoint_NULL_CUSTOM_POINTValue[] = newCustomGPoint(Int32(0), Int32(0), Int32(0))
    end
    CustomGPoint_NULL_CUSTOM_POINTValue[]
end
function staticSet_NULL_CUSTOM_POINT(::Type{CustomGPoint}, value)
    CustomGPoint_NULL_CUSTOM_POINTSet[] = true
    CustomGPoint_NULL_CUSTOM_POINTValue[] = value
end

function initFieldsCustomGPoint(this::CustomGPoint)
    this.cx = Int32(0)
    this.cy = Int32(0)
    this.cz = Int32(0)
    this.cx = Int32(0)
    this.cy = Int32(0)
    this.cz = Int32(0)
    nothing
end


function getInstance(::Type{CustomGPoint}, point)
        return newCustomGPoint(AllBinary.getX(point), AllBinary.getY(point), AllBinary.getZ(point))
end


function getInstance3(::Type{CustomGPoint}, x, y)
        return newCustomGPoint(x, y, Int32(3))
end


function initCustomGPoint(this::CustomGPoint, x, y, z)
        initGPoint(this, x, y, z)
        initFieldsCustomGPoint(this)
        nothing
end

function newCustomGPoint(x, y, z)
    this = CustomGPoint()
    initCustomGPoint(this, x, y, z)
    this
end


function setX(this::CustomGPoint, x)
        this.cx = x
        nothing
end


function getX(this::CustomGPoint)
        return this.cx
end


function setY(this::CustomGPoint, y)
        this.cy = y
        nothing
end


function getY(this::CustomGPoint)
        return this.cy
end


function setZ(this::CustomGPoint, z)
        this.cz = z
        nothing
end


function getZ(this::CustomGPoint)
        return this.cz
end

