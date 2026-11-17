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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct EndGamePaintable <: JObject
    gameCanvas::Any
    EndGamePaintable() = new()
end


function initFieldsEndGamePaintable(this::EndGamePaintable)
    this.gameCanvas = nothing
    
    nothing
end


function initEndGamePaintable(this::EndGamePaintable, gameCanvas)
        initPaintable(this)
        initFieldsEndGamePaintable(this)
        this.gameCanvas = gameCanvas
        nothing
end

function newEndGamePaintable(gameCanvas)
    this = EndGamePaintable()
    initEndGamePaintable(this, gameCanvas)
    this
end


function paint(this::EndGamePaintable, graphics)
        AllBinary.paintGameOver(this.gameCanvas, graphics)
        nothing
end

