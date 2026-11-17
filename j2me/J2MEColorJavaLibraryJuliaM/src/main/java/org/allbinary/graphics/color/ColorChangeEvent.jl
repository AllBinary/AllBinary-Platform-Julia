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

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ColorChangeEvent <: JObject
    basicColor::Any
    ColorChangeEvent() = new()
end


function initFieldsColorChangeEvent(this::ColorChangeEvent)
    this.basicColor = nothing
    this.basicColor = AllBinary.getInstance(BasicColorFactory).WHITE
    nothing
end


function initColorChangeEvent(this::ColorChangeEvent, anyType)
        initAllBinaryEventObject(this, anyType)
        initFieldsColorChangeEvent(this)
        nothing
end

function newColorChangeEvent(anyType)
    this = ColorChangeEvent()
    initColorChangeEvent(this, anyType)
    this
end


function setBasicColorP(this::ColorChangeEvent, basicColor)
        this.basicColor = basicColor
        nothing
end


function getBasicColorP(this::ColorChangeEvent)
        return this.basicColor
end

