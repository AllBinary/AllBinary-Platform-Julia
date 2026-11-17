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
# package org.allbinary.game.paint

# extends ColorFillBasePaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ColorFillPaintable <: JObject
    displayInfoSingleton::Any
    ColorFillPaintable() = new()
end


function initFieldsColorFillPaintable(this::ColorFillPaintable)
    this.displayInfoSingleton = nothing
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    nothing
end


function initColorFillPaintable(this::ColorFillPaintable, basicColor)
        initColorFillBasePaintable(this, basicColor)
        initFieldsColorFillPaintable(this)
        nothing
end

function newColorFillPaintable(basicColor)
    this = ColorFillPaintable()
    initColorFillPaintable(this, basicColor)
    this
end


function paint(this::ColorFillPaintable, graphics)
        AllBinary.setColor(graphics, this.colorP)
        AllBinary.fillRect(graphics, Int32(0), Int32(0), AllBinary.getLastWidth(this.displayInfoSingleton), AllBinary.getLastHeight(this.displayInfoSingleton))
        nothing
end

