#=
 
  AllBinary Open License Version 1
  Copyright (c) 2026 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
=#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

# extends Processor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct InitGameProcessor <: JObject
    gameCanvas::Any
    InitGameProcessor() = new()
end


function initFieldsInitGameProcessor(this::InitGameProcessor)
    this.gameCanvas = nothing
    
    nothing
end


function initInitGameProcessor(this::InitGameProcessor, gameCanvas)
        initProcessor(this)
        initFieldsInitGameProcessor(this)
        this.gameCanvas = gameCanvas
        nothing
end

function newInitGameProcessor(gameCanvas)
    this = InitGameProcessor()
    initInitGameProcessor(this, gameCanvas)
    this
end


function process(this::InitGameProcessor)
        if AllBinary.isInGame(AllBinary.getInstance(ProgressCanvasFactory))
            AllBinary.setProcessGameProcessorInit(this.gameCanvas)
        end
        nothing
end

