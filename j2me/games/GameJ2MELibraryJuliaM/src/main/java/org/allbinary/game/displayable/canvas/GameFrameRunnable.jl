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
mutable struct GameFrameRunnable <: JObject
    logUtil::Any
    gameTickDisplayInfoSingleton::Any
    allBinaryGameCanvas::Any
    gameTickTimeDelayHelper::Any
    GameFrameRunnable() = new()
end


function initFieldsGameFrameRunnable(this::GameFrameRunnable)
    this.logUtil = nothing
    this.gameTickDisplayInfoSingleton = nothing
    this.allBinaryGameCanvas = nothing
    this.gameTickTimeDelayHelper = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.gameTickDisplayInfoSingleton = AllBinary.getInstance(GameTickDisplayInfoSingleton)
    
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    nothing
end


function initGameFrameRunnable(this::GameFrameRunnable, allBinaryGameCanvas)
        initGameRunnable(this)
        initFieldsGameFrameRunnable(this)
        this.allBinaryGameCanvas = allBinaryGameCanvas
        nothing
end

function newGameFrameRunnable(allBinaryGameCanvas)
    this = GameFrameRunnable()
    initGameFrameRunnable(this, allBinaryGameCanvas)
    this
end


function run(this::GameFrameRunnable)
        try
            local allBinaryGameCanvas = this.allBinaryGameCanvas
            AllBinary.setStartTime(AllBinary.getLoopTimeHelperP(allBinaryGameCanvas), AllBinary.setStartTime(this.gameTickTimeDelayHelper))
            AllBinary.update(this.gameTickDisplayInfoSingleton)
            AllBinary.processGame(allBinaryGameCanvas)
            if !AllBinary.isRunning(allBinaryGameCanvas) || AllBinary.isPaused(allBinaryGameCanvas)
                AllBinary.notifyDonePainting(allBinaryGameCanvas)
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        end
        nothing
end

