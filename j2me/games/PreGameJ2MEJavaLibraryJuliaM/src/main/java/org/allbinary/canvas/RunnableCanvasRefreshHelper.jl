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
# package org.allbinary.canvas

# extends Processor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RunnableCanvasRefreshHelper <: JObject
    runnableCanvas::Any
    RunnableCanvasRefreshHelper() = new()
end


function initFieldsRunnableCanvasRefreshHelper(this::RunnableCanvasRefreshHelper)
    this.runnableCanvas = nothing
    
    nothing
end


function initRunnableCanvasRefreshHelper(this::RunnableCanvasRefreshHelper, runnableCanvas)
        initProcessor(this)
        initFieldsRunnableCanvasRefreshHelper(this)
        this.runnableCanvas = runnableCanvas
        nothing
end

function newRunnableCanvasRefreshHelper(runnableCanvas)
    this = RunnableCanvasRefreshHelper()
    initRunnableCanvasRefreshHelper(this, runnableCanvas)
    this
end


function process(this::RunnableCanvasRefreshHelper)
        AllBinary.repaint(this.runnableCanvas)
        nothing
end

