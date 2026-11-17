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
# package org.allbinary.game.displayable.canvas

# extends GameCommandCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicPaintablesCanvas <: JObject
    paintableArray::Any
    colorFillPaintable::Any
    BasicPaintablesCanvas() = new()
end


function initFieldsBasicPaintablesCanvas(this::BasicPaintablesCanvas)
    this.paintableArray = nothing
    this.colorFillPaintable = nothing
    
    
    nothing
end


function initBasicPaintablesCanvas(this::BasicPaintablesCanvas, cmdListener, name, allBinaryGameLayerManager, paintableArray)
        initGameCommandCanvas(this, cmdListener, name, AllBinary.getBackgroundBasicColor(allBinaryGameLayerManager), AllBinary.getForegroundBasicColor(allBinaryGameLayerManager))
        initFieldsBasicPaintablesCanvas(this)
        this.paintableArray = paintableArray
        this.colorFillPaintable = AllBinary.getInstance(AllBinary.getInstance(ColorFillPaintableFactory), AllBinary.getBackgroundBasicColor(allBinaryGameLayerManager), false)
        nothing
end

function newBasicPaintablesCanvas(cmdListener, name, allBinaryGameLayerManager, paintableArray)
    this = BasicPaintablesCanvas()
    initBasicPaintablesCanvas(this, cmdListener, name, allBinaryGameLayerManager, paintableArray)
    this
end


function paint(this::BasicPaintablesCanvas, graphics)
        AllBinary.paint(this.colorFillPaintable, graphics)
        AllBinary.setColor(graphics, this.foregroundColor)
        let
            local index::Int32 = Int32(Base.length(this.paintableArray)) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.paint(this.paintableArray[index + 1], graphics)
            finally
                index -= Int32(1)
            end
            end
        end
        AllBinary.paint(this, graphics)
        nothing
end

