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
mutable struct DemoGameRunnable <: JObject
    logUtil::Any
    demoCanvas::Any
    gameTickTimeDelayHelper::Any
    DemoGameRunnable() = new()
end


function initFieldsDemoGameRunnable(this::DemoGameRunnable)
    this.logUtil = nothing
    this.demoCanvas = nothing
    this.gameTickTimeDelayHelper = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    nothing
end


function initDemoGameRunnable(this::DemoGameRunnable, demoCanvas)
        initGameRunnable(this)
        initFieldsDemoGameRunnable(this)
        this.demoCanvas = demoCanvas
        nothing
end

function newDemoGameRunnable(demoCanvas)
    this = DemoGameRunnable()
    initDemoGameRunnable(this, demoCanvas)
    this
end


function run(this::DemoGameRunnable)
        try
            AllBinary.setStartTime(AllBinary.getLoopTimeHelperP(this.demoCanvas), AllBinary.setStartTime(this.gameTickTimeDelayHelper))
            AllBinary.processGame(this.demoCanvas)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        end
        nothing
end


function processLoopSleep(this::DemoGameRunnable)
        AllBinary.processLoopSleep(this.demoCanvas)
        nothing
end

