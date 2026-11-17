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

# extends PlayerGameInput: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HighScoresCanvasInputProcessor <: JObject
    highScoresCanvas::Any
    HighScoresCanvasInputProcessor() = new()
end


function initFieldsHighScoresCanvasInputProcessor(this::HighScoresCanvasInputProcessor)
    this.highScoresCanvas = nothing
    
    nothing
end


function initHighScoresCanvasInputProcessor(this::HighScoresCanvasInputProcessor, highScoresCanvas)
        initPlayerGameInput(this, newBasicArrayListD(), newBasicArrayListD(), -Int32(1))
        initFieldsHighScoresCanvasInputProcessor(this)
        this.highScoresCanvas = highScoresCanvas
        nothing
end

function newHighScoresCanvasInputProcessor(highScoresCanvas)
    this = HighScoresCanvasInputProcessor()
    initHighScoresCanvasInputProcessor(this, highScoresCanvas)
    this
end


function open(this::HighScoresCanvasInputProcessor)
        nothing
        nothing
end


function close(this::HighScoresCanvasInputProcessor)
        nothing
        nothing
end


function onPressGameKeyEvent(this::HighScoresCanvasInputProcessor, gameKeyEvent)
        AllBinary.onPressGameKeyEvent(this, gameKeyEvent)
        AllBinary.update(this)
        nothing
end


function onDownGameKeyEvent(this::HighScoresCanvasInputProcessor, gameKeyEvent)
        AllBinary.onDownGameKeyEvent(this, gameKeyEvent)
        AllBinary.update(this)
        nothing
end


function onUpGameKeyEvent(this::HighScoresCanvasInputProcessor, gameKeyEvent)
        AllBinary.onUpGameKeyEvent(this, gameKeyEvent)
        AllBinary.update(this)
        nothing
end


function paint(this::HighScoresCanvasInputProcessor, graphics)
        nothing
        nothing
end


function getHighScoresCanvas(this::HighScoresCanvasInputProcessor)
        return this.highScoresCanvas
end

