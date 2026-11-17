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
# package org.allbinary.layer.event

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ScrollMapEvent <: JObject
    dx::Int32
    dy::Int32
    ScrollMapEvent() = new()
end


function initFieldsScrollMapEvent(this::ScrollMapEvent)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    nothing
end


function initScrollMapEvent(this::ScrollMapEvent, anyType)
        initAllBinaryEventObject(this, anyType)
        initFieldsScrollMapEvent(this)
        nothing
end

function newScrollMapEvent(anyType)
    this = ScrollMapEvent()
    initScrollMapEvent(this, anyType)
    this
end


function setDx(this::ScrollMapEvent, dx)
        this.dx = dx
        nothing
end


function getDx(this::ScrollMapEvent)
        return this.dx
end


function setDy(this::ScrollMapEvent, dy)
        this.dy = dy
        nothing
end


function getDy(this::ScrollMapEvent)
        return this.dy
end


function setDxDy(this::ScrollMapEvent, dx, dy)
        this.dx = dx
        this.dy = dy
        nothing
end

