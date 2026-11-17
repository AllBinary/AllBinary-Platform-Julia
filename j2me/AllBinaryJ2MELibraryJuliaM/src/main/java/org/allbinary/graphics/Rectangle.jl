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

mutable struct Rectangle <: JObject
    point::Any
    width::Int32
    height::Int32
    Rectangle() = new()
end


function initFieldsRectangle(this::Rectangle)
    this.point = nothing
    this.width = Int32(0)
    this.height = Int32(0)
    
    
    
    nothing
end


function initRectangle(this::Rectangle, point, width, height)
        initFieldsRectangle(this)
        this.point = point
        this.width = width
        this.height = height
        nothing
end

function newRectangle(point, width, height)
    this = Rectangle()
    initRectangle(this, point, width, height)
    this
end


function getPoint(this::Rectangle)
        return this.point
end


function setPoint(this::Rectangle, point)
        this.point = point
        nothing
end


function getMaxX(this::Rectangle)
        return AllBinary.getX(this.point) + this.width
end


function getMaxY(this::Rectangle)
        return AllBinary.getY(this.point) + this.height
end


function getWidth(this::Rectangle)
        return this.width
end


function setWidth(this::Rectangle, width)
        this.width = width
        nothing
end


function getHeight(this::Rectangle)
        return this.height
end


function setHeight(this::Rectangle, height)
        this.height = height
        nothing
end


function toString(this::Rectangle)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getPoint(this)))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).WIDTH_LABEL)
        AllBinary.appendint(stringBuffer, AllBinary.getWidth(this))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).HEIGHT_LABEL)
        AllBinary.appendint(stringBuffer, AllBinary.getHeight(this))
        AllBinary.append(stringBuffer, " MaxX: ")
        AllBinary.appendint(stringBuffer, AllBinary.getMaxX(this))
        AllBinary.append(stringBuffer, " MaxY: ")
        AllBinary.appendint(stringBuffer, AllBinary.getMaxY(this))
        return AllBinary.toString(stringBuffer)
end

