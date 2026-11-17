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
mutable struct EndLevelIntermissionProcessor <: JObject
    gameCanvas::Any
    EndLevelIntermissionProcessor() = new()
end


function initFieldsEndLevelIntermissionProcessor(this::EndLevelIntermissionProcessor)
    this.gameCanvas = nothing
    
    nothing
end


function initEndLevelIntermissionProcessor(this::EndLevelIntermissionProcessor, gameCanvas)
        initProcessor(this)
        initFieldsEndLevelIntermissionProcessor(this)
        this.gameCanvas = gameCanvas
        nothing
end

function newEndLevelIntermissionProcessor(gameCanvas)
    this = EndLevelIntermissionProcessor()
    initEndLevelIntermissionProcessor(this, gameCanvas)
    this
end


function process(this::EndLevelIntermissionProcessor)
        AllBinary.processEndLevelIntermissionGameState(this.gameCanvas)
        nothing
end

