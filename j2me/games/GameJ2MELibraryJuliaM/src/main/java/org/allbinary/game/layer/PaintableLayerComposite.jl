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
# package org.allbinary.game.layer

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PaintableLayerComposite <: JObject
    paintableArray::Any
    PaintableLayerComposite() = new()
end


function initFieldsPaintableLayerComposite(this::PaintableLayerComposite)
    this.paintableArray = nothing
    
    nothing
end


function initPaintableLayerComposite(this::PaintableLayerComposite, paintableArray)
        initPaintable(this)
        initFieldsPaintableLayerComposite(this)
        this.paintableArray = paintableArray
        nothing
end

function newPaintableLayerComposite(paintableArray)
    this = PaintableLayerComposite()
    initPaintableLayerComposite(this, paintableArray)
    this
end


function paint(this::PaintableLayerComposite, graphics)
        let
            local index::Int32 = Int32(Base.length(this.paintableArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.paint(this.paintableArray[index + 1], graphics)
            finally
            end
            end
        end
        nothing
end


function paintThreed(this::PaintableLayerComposite, graphics)
        local paintableInterface = nothing
        let
            local index::Int32 = Int32(Base.length(this.paintableArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            paintableInterface = (this.paintableArray[index + 1])
            AllBinary.paintThreed(paintableInterface, graphics)
            finally
            end
            end
        end
        nothing
end

