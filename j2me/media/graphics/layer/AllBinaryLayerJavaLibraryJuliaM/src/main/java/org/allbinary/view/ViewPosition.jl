#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.view

# extends ViewPositionBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ViewPosition <: JObject
    allbinaryLayer::Any
    ViewPosition() = new()
end


function initFieldsViewPosition(this::ViewPosition)
    this.allbinaryLayer = nothing
    this.allbinaryLayer = staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
    nothing
end


function getInstanceD(::Type{ViewPosition})
        return newViewPosition(Int32(0), Int32(0), Int32(0))
end


function initViewPosition(this::ViewPosition, x, y, z)
        initViewPositionBase(this, x, y, z)
        initFieldsViewPosition(this)
        nothing
end

function newViewPosition(x, y, z)
    this = ViewPosition()
    initViewPosition(this, x, y, z)
    this
end


function getX(this::ViewPosition)
        return AllBinary.getXP(this.allbinaryLayer)
end


function getY(this::ViewPosition)
        return AllBinary.getYP(this.allbinaryLayer)
end


function getZ(this::ViewPosition)
        return AllBinary.getZP(this.allbinaryLayer)
end


function getX2(this::ViewPosition)
        return AllBinary.getX(this) + AllBinary.getWidth(this.allbinaryLayer)
end


function getY2(this::ViewPosition)
        return AllBinary.getY(this) + AllBinary.getHeight(this.allbinaryLayer)
end


function getZ2(this::ViewPosition)
        return (((AllBinary.getZ(this) + AllBinary.getDepth(this.allbinaryLayer))) % Int32)
end


function setAllbinaryLayer(this::ViewPosition, allbinaryLayer)
        this.allbinaryLayer = (allbinaryLayer)
        nothing
end

