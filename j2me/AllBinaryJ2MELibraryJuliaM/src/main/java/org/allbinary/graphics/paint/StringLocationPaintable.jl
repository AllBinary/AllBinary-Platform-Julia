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
# package org.allbinary.graphics.paint

# extends LocationPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct StringLocationPaintable <: JObject
    value::Any
    StringLocationPaintable() = new()
end


function initFieldsStringLocationPaintable(this::StringLocationPaintable)
    this.value = nothing
    
    nothing
end


function initStringLocationPaintable(this::StringLocationPaintable, value)
        initLocationPaintable(this)
        initFieldsStringLocationPaintable(this)
        this.value = value
        nothing
end

function newStringLocationPaintable(value)
    this = StringLocationPaintable()
    initStringLocationPaintable(this, value)
    this
end


function paintXY(this::StringLocationPaintable, graphics, x, y)
        AllBinary.drawString(graphics, this.value, x, y, Int32(0))
        nothing
end

