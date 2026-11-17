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

mutable struct GPoint <: JObject
    x::Int32
    y::Int32
    z::Int32
    GPoint() = new()
end

const GPoint_POINT_LABELValue = Ref{Any}(nothing)
const GPoint_POINT_LABELSet = Ref(false)
function staticGet_POINT_LABEL(::Type{GPoint})
    if !GPoint_POINT_LABELSet[]
        GPoint_POINT_LABELSet[] = true
        GPoint_POINT_LABELValue[] = "Point: "
    end
    GPoint_POINT_LABELValue[]
end
function staticSet_POINT_LABEL(::Type{GPoint}, value)
    GPoint_POINT_LABELSet[] = true
    GPoint_POINT_LABELValue[] = value
end

function initFieldsGPoint(this::GPoint)
    this.x = Int32(0)
    this.y = Int32(0)
    this.z = Int32(0)
    
    
    
    nothing
end


function getInstance(::Type{GPoint}, point)
        return newGPoint(AllBinary.getX(point), AllBinary.getY(point), AllBinary.getZ(point))
end


function initGPoint(this::GPoint, x, y, z)
        initFieldsGPoint(this)
        this.x = x
        this.y = y
        this.z = z
        nothing
end

function newGPoint(x, y, z)
    this = GPoint()
    initGPoint(this, x, y, z)
    this
end


function getX(this::GPoint)
        return this.x
end


function getY(this::GPoint)
        return this.y
end


function getZ(this::GPoint)
        return this.z
end


function getRawX(this::GPoint)
        return this.x
end


function getRawY(this::GPoint)
        return this.y
end


function getRawZ(this::GPoint)
        return this.z
end


function toString(this::GPoint)
        return AllBinary.toStringStatic(GPoint, AllBinary.getX(this), AllBinary.getY(this), AllBinary.getZ(this))
end


function toStringStatic(::Type{GPoint}, x, y, z)
        local stringBuffer = newStringMaker()
        local positionStrings = AllBinary.getInstance(PositionStrings)
        AllBinary.append(stringBuffer, staticGet_POINT_LABEL(GPoint))
        AllBinary.append(stringBuffer, positionStrings.X_LABEL)
        AllBinary.appendint(stringBuffer, x)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, positionStrings.Y_LABEL)
        AllBinary.appendint(stringBuffer, y)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, positionStrings.Z_LABEL)
        AllBinary.appendint(stringBuffer, z)
        return AllBinary.toString(stringBuffer)
end

