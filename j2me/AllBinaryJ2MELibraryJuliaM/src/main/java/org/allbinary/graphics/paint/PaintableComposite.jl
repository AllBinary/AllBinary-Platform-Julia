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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PaintableComposite <: JObject
    paintableArray::Any
    PaintableComposite() = new()
end


function initFieldsPaintableComposite(this::PaintableComposite)
    this.paintableArray = nothing
    
    nothing
end


function initPaintableComposite(this::PaintableComposite, paintableArray)
        initPaintable(this)
        initFieldsPaintableComposite(this)
        this.paintableArray = paintableArray
        nothing
end

function newPaintableComposite(paintableArray)
    this = PaintableComposite()
    initPaintableComposite(this, paintableArray)
    this
end


function paint(this::PaintableComposite, graphics)
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
        nothing
end


function paintThreed(this::PaintableComposite, graphics)
        let
            local index::Int32 = Int32(Base.length(this.paintableArray)) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.paintThreed(this.paintableArray[index + 1], graphics)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

