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

# extends ProcessPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameCanvasPaintHelper <: JObject
    gameCanvas::Any
    GameCanvasPaintHelper() = new()
end


function initFieldsGameCanvasPaintHelper(this::GameCanvasPaintHelper)
    this.gameCanvas = nothing
    
    nothing
end


function initGameCanvasPaintHelper(this::GameCanvasPaintHelper, gameCanvas)
        initProcessPaintable(this)
        initFieldsGameCanvasPaintHelper(this)
        this.gameCanvas = gameCanvas
        nothing
end

function newGameCanvasPaintHelper(gameCanvas)
    this = GameCanvasPaintHelper()
    initGameCanvasPaintHelper(this, gameCanvas)
    this
end


function process(this::GameCanvasPaintHelper)
        nothing
        nothing
end


function paint(this::GameCanvasPaintHelper, graphics)
        AllBinary.draw(this.gameCanvas, graphics)
        nothing
end

