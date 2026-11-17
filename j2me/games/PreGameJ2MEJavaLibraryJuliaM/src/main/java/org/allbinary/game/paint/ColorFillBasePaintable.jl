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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ColorFillBasePaintable <: JObject
    basicColor::Any
    colorP::Int32
    ColorFillBasePaintable() = new()
end


function initFieldsColorFillBasePaintable(this::ColorFillBasePaintable)
    this.basicColor = nothing
    this.colorP = Int32(0)
    this.basicColor = AllBinary.getInstance(BasicColorFactory).WHITE
    this.colorP = Int32(0)
    nothing
end


function initColorFillBasePaintable(this::ColorFillBasePaintable, basicColor)
        initPaintable(this)
        initFieldsColorFillBasePaintable(this)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newColorFillBasePaintable(basicColor)
    this = ColorFillBasePaintable()
    initColorFillBasePaintable(this, basicColor)
    this
end


function setBasicColorP(this::ColorFillBasePaintable, basicColor)
        this.basicColor = basicColor
        AllBinary.setColor(this, AllBinary.intValue(AllBinary.getBasicColorP(this)))
        nothing
end


function getBasicColorP(this::ColorFillBasePaintable)
        return this.basicColor
end


function getColor(this::ColorFillBasePaintable)
        return this.colorP
end


function setColor(this::ColorFillBasePaintable, color)
        this.colorP = color
        nothing
end


function paint(this::ColorFillBasePaintable, graphics)
        nothing
        nothing
end

