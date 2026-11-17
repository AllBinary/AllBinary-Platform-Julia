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

# extends Processor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct StartIntermissionProcessor <: JObject
    logUtil::Any
    commonStrings::Any
    gameCanvas::Any
    WAIT::Int64
    StartIntermissionProcessor() = new()
end


function initFieldsStartIntermissionProcessor(this::StartIntermissionProcessor)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.gameCanvas = nothing
    this.WAIT = Int64(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    this.WAIT = Int64(5000)
    nothing
end


function initStartIntermissionProcessor(this::StartIntermissionProcessor, gameCanvas)
        initProcessor(this)
        initFieldsStartIntermissionProcessor(this)
        this.gameCanvas = gameCanvas
        nothing
end

function newStartIntermissionProcessor(gameCanvas)
    this = StartIntermissionProcessor()
    initStartIntermissionProcessor(this, gameCanvas)
    this
end


function process(this::StartIntermissionProcessor)
        if AllBinary.isElapsedTNT(AllBinary.getTimeDelayHelper(AllBinary.getStartIntermissionInterface(this.gameCanvas)), this.WAIT)
            AllBinary.putF(this.logUtil, "Intermission End", this, this.commonStrings.PROCESS)
            AllBinary.setEnabled(AllBinary.getStartIntermissionInterface(this.gameCanvas), false)
        end
        nothing
end

