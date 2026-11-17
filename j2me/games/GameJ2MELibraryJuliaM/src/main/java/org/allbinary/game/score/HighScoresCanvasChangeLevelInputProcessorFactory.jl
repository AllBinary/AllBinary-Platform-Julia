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
# package org.allbinary.game.score

mutable struct HighScoresCanvasChangeLevelInputProcessorFactory <: JObject
    HighScoresCanvasChangeLevelInputProcessorFactory() = new()
end


function initFieldsHighScoresCanvasChangeLevelInputProcessorFactory(this::HighScoresCanvasChangeLevelInputProcessorFactory)
    nothing
end

function initHighScoresCanvasChangeLevelInputProcessorFactory(this::HighScoresCanvasChangeLevelInputProcessorFactory)
    initFieldsHighScoresCanvasChangeLevelInputProcessorFactory(this)
end

function newHighScoresCanvasChangeLevelInputProcessorFactory()
    this = HighScoresCanvasChangeLevelInputProcessorFactory()
    initHighScoresCanvasChangeLevelInputProcessorFactory(this)
    this
end


function getInstance(this::HighScoresCanvasChangeLevelInputProcessorFactory, highScoresCanvas)
        return newHighScoresCanvasLevelChangeInputProcessor(highScoresCanvas)
end

