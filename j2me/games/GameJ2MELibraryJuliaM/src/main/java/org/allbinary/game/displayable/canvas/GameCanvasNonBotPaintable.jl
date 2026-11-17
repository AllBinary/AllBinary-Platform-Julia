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
mutable struct GameCanvasNonBotPaintable <: JObject
    gameCanvas::Any
    GameCanvasNonBotPaintable() = new()
end


function initFieldsGameCanvasNonBotPaintable(this::GameCanvasNonBotPaintable)
    this.gameCanvas = nothing
    
    nothing
end


function initGameCanvasNonBotPaintable(this::GameCanvasNonBotPaintable, gameCanvas)
        initPaintable(this)
        initFieldsGameCanvasNonBotPaintable(this)
        this.gameCanvas = gameCanvas
        nothing
end

function newGameCanvasNonBotPaintable(gameCanvas)
    this = GameCanvasNonBotPaintable()
    initGameCanvasNonBotPaintable(this, gameCanvas)
    this
end


function paint(this::GameCanvasNonBotPaintable, graphics)
        AllBinary.nonBotPaint(this.gameCanvas, graphics)
        nothing
end

