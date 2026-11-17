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

# extends GameRunnable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RunnableCanvasSingleThreadStartRunnable <: JObject
    logUtil::Any
    runnableCanvas::Any
    RunnableCanvasSingleThreadStartRunnable() = new()
end


function initFieldsRunnableCanvasSingleThreadStartRunnable(this::RunnableCanvasSingleThreadStartRunnable)
    this.logUtil = nothing
    this.runnableCanvas = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function initRunnableCanvasSingleThreadStartRunnable(this::RunnableCanvasSingleThreadStartRunnable, demoCanvas)
        initGameRunnable(this)
        initFieldsRunnableCanvasSingleThreadStartRunnable(this)
        this.runnableCanvas = demoCanvas
        nothing
end

function newRunnableCanvasSingleThreadStartRunnable(demoCanvas)
    this = RunnableCanvasSingleThreadStartRunnable()
    initRunnableCanvasSingleThreadStartRunnable(this, demoCanvas)
    this
end


function run(this::RunnableCanvasSingleThreadStartRunnable)
        try
            AllBinary.run(this.runnableCanvas)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        end
        nothing
end


function processLoopSleep(this::RunnableCanvasSingleThreadStartRunnable)
        AllBinary.processLoopSleep(this.runnableCanvas)
        nothing
end

