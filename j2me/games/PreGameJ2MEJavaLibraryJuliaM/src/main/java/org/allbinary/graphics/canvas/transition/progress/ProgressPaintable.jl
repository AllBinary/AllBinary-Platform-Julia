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
# package org.allbinary.graphics.canvas.transition.progress

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ProgressPaintable <: JObject
    progressCanvas::Any
    ProgressPaintable() = new()
end


function initFieldsProgressPaintable(this::ProgressPaintable)
    this.progressCanvas = nothing
    
    nothing
end


function initProgressPaintable(this::ProgressPaintable, progressCanvas)
        initPaintable(this)
        initFieldsProgressPaintable(this)
        this.progressCanvas = progressCanvas
        nothing
end

function newProgressPaintable(progressCanvas)
    this = ProgressPaintable()
    initProgressPaintable(this, progressCanvas)
    this
end


function paint(this::ProgressPaintable, graphics)
        AllBinary.paint2(this.progressCanvas, graphics)
        nothing
end

