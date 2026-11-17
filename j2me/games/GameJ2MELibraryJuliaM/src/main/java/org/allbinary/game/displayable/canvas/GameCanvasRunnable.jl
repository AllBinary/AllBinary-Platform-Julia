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
mutable struct GameCanvasRunnable <: JObject
    logUtil::Any
    gameTickDisplayInfoSingleton::Any
    allBinaryGameCanvas::Any
    gameTickTimeDelayHelper::Any
    GameCanvasRunnable() = new()
end


function initFieldsGameCanvasRunnable(this::GameCanvasRunnable)
    this.logUtil = nothing
    this.gameTickDisplayInfoSingleton = nothing
    this.allBinaryGameCanvas = nothing
    this.gameTickTimeDelayHelper = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.gameTickDisplayInfoSingleton = AllBinary.getInstance(GameTickDisplayInfoSingleton)
    
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    nothing
end


function initGameCanvasRunnable(this::GameCanvasRunnable, allBinaryGameCanvas)
        initGameRunnable(this)
        initFieldsGameCanvasRunnable(this)
        this.allBinaryGameCanvas = allBinaryGameCanvas
        nothing
end

function newGameCanvasRunnable(allBinaryGameCanvas)
    this = GameCanvasRunnable()
    initGameCanvasRunnable(this, allBinaryGameCanvas)
    this
end


function run(this::GameCanvasRunnable)
        try
            AllBinary.setStartTime(AllBinary.getLoopTimeHelperP(this.allBinaryGameCanvas), AllBinary.setStartTime(this.gameTickTimeDelayHelper))
            AllBinary.update(this.gameTickDisplayInfoSingleton)
            AllBinary.processGame(this.allBinaryGameCanvas)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        end
        nothing
end


function processLoopSleep(this::GameCanvasRunnable)
        AllBinary.processLoopSleep(this.allBinaryGameCanvas)
        nothing
end

