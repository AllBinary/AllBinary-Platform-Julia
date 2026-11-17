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
mutable struct GameProcessor <: JObject
    gameCanvas::Any
    GameProcessor() = new()
end


function initFieldsGameProcessor(this::GameProcessor)
    this.gameCanvas = nothing
    
    nothing
end


function initGameProcessor(this::GameProcessor, gameCanvas)
        initProcessor(this)
        initFieldsGameProcessor(this)
        this.gameCanvas = gameCanvas
        nothing
end

function newGameProcessor(gameCanvas)
    this = GameProcessor()
    initGameProcessor(this, gameCanvas)
    this
end


function process(this::GameProcessor)
        AllBinary.processPlayingGame(this.gameCanvas)
        nothing
end

