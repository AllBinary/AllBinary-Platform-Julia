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
mutable struct EndGameProcessor <: JObject
    gameStateFactory::Any
    gameCanvas::Any
    WAIT::Int64
    EndGameProcessor() = new()
end


function initFieldsEndGameProcessor(this::EndGameProcessor)
    this.gameStateFactory = nothing
    this.gameCanvas = nothing
    this.WAIT = Int64(0)
    this.gameStateFactory = AllBinary.getInstance(GameStateFactory)
    
    this.WAIT = Int64(5000)
    nothing
end


function initEndGameProcessor(this::EndGameProcessor, gameCanvas)
        initProcessor(this)
        initFieldsEndGameProcessor(this)
        this.gameCanvas = gameCanvas
        nothing
end

function newEndGameProcessor(gameCanvas)
    this = EndGameProcessor()
    initEndGameProcessor(this, gameCanvas)
    this
end


function process(this::EndGameProcessor)
        if AllBinary.isHighScoreSubmitted(this.gameCanvas)
            if AllBinary.isElapsedTNT(AllBinary.getGameStateTimeHelper(this.gameCanvas), this.WAIT)
                if AllBinary.getGameState(this.gameCanvas) == this.gameStateFactory.SHOW_END_RESULT_GAME_STATE
                    local highScoresBase = (this.gameCanvas.highScoresHelper)
                    local highScores = AllBinary.getSelectedHighScores(highScoresBase)
                    if highScores !== AllBinary.getInstance(NullHighScoresSingletonFactory)
                        AllBinary.selectHighScores(highScoresBase)
                        AllBinary.setHighScores(AllBinary.getRealHighScoresPaintable(this.gameCanvas), highScores)
                        AllBinary.setGameState(this.gameCanvas, this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE)
                        AllBinary.setHighScoresPaintable(this.gameCanvas, AllBinary.getRealHighScoresPaintable(this.gameCanvas))
                    end
                elseif AllBinary.getGameState(this.gameCanvas) == this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE
                    AllBinary.setGameState(this.gameCanvas, this.gameStateFactory.SHOW_END_RESULT_GAME_STATE)
                    AllBinary.setHighScoresPaintable(this.gameCanvas, AllBinary.getInstance(NullPaintable))
                end
            end
        end
        nothing
end

