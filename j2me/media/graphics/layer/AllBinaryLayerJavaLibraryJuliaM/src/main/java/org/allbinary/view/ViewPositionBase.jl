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
# package org.allbinary.view

# extends GPoint: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ViewPositionBase <: JObject
    ViewPositionBase() = new()
end

const ViewPositionBase_NULL_VIEW_POSITIONValue = Ref{Any}(nothing)
const ViewPositionBase_NULL_VIEW_POSITIONSet = Ref(false)
function staticGet_NULL_VIEW_POSITION(::Type{ViewPositionBase})
    if !ViewPositionBase_NULL_VIEW_POSITIONSet[]
        ViewPositionBase_NULL_VIEW_POSITIONSet[] = true
        ViewPositionBase_NULL_VIEW_POSITIONValue[] = newViewPositionBase(Int32(0), Int32(0), Int32(0))
    end
    ViewPositionBase_NULL_VIEW_POSITIONValue[]
end
function staticSet_NULL_VIEW_POSITION(::Type{ViewPositionBase}, value)
    ViewPositionBase_NULL_VIEW_POSITIONSet[] = true
    ViewPositionBase_NULL_VIEW_POSITIONValue[] = value
end

function initFieldsViewPositionBase(this::ViewPositionBase)
    nothing
end


function initViewPositionBase(this::ViewPositionBase, x, y, z)
        initGPoint(this, x, y, z)
        nothing
end

function newViewPositionBase(x, y, z)
    this = ViewPositionBase()
    initViewPositionBase(this, x, y, z)
    this
end


function getX2(this::ViewPositionBase)
        return AllBinary.getX(this)
end


function getY2(this::ViewPositionBase)
        return AllBinary.getY(this)
end


function getZ2(this::ViewPositionBase)
        return AllBinary.getZ(this)
end


function setAllbinaryLayer(this::ViewPositionBase, allbinaryLayer)
        nothing
        nothing
end

