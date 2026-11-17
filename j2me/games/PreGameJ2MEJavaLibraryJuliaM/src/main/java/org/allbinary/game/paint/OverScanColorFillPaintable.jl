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

# extends ColorFillPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OverScanColorFillPaintable <: JObject
    OverScanColorFillPaintable() = new()
end


function initFieldsOverScanColorFillPaintable(this::OverScanColorFillPaintable)
    nothing
end


function initOverScanColorFillPaintable(this::OverScanColorFillPaintable, basicColor)
        initColorFillPaintable(this, basicColor)
        nothing
end

function newOverScanColorFillPaintable(basicColor)
    this = OverScanColorFillPaintable()
    initOverScanColorFillPaintable(this, basicColor)
    this
end


function paint(this::OverScanColorFillPaintable, graphics)
        AllBinary.setColor(graphics, this.colorP)
        AllBinary.fillRect(graphics, -AllBinary.getClipX(graphics), -AllBinary.getClipY(graphics), AllBinary.getLastWidth(this.displayInfoSingleton) + (AllBinary.getClipX(graphics) * Int32(2)), AllBinary.getLastHeight(this.displayInfoSingleton) + (AllBinary.getClipY(graphics) * Int32(2)))
        nothing
end

