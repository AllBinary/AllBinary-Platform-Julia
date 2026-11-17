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
# package org.allbinary.game.ag.layer.hud.basic.score

# extends NumberStringHud: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ScoreHudWidget <: JObject
    ScoreHudWidget() = new()
end


function initFieldsScoreHudWidget(this::ScoreHudWidget)
    nothing
end


function getInstance(::Type{ScoreHudWidget}, maxscore, location, direction)
        return newScoreHudWidget(maxscore, location, direction, Int32(2), AllBinary.getInstance(BasicColorFactory).GREY)
end


function initScoreHudWidget(this::ScoreHudWidget, maxscore, location, direction, bufferZone, basicColor)
        initNumberStringHud(this, "Pts ", maxscore, location, direction, bufferZone, basicColor)
        this.updateMaxHeight = Int32(14)
        nothing
end

function newScoreHudWidget(maxscore, location, direction, bufferZone, basicColor)
    this = ScoreHudWidget()
    initScoreHudWidget(this, maxscore, location, direction, bufferZone, basicColor)
    this
end


function updateMeasurement(this::ScoreHudWidget, graphics)
        local font = AllBinary.getFont(graphics)
        this.updateMaxWidth = AllBinary.getSize(font) * Int32(5)
        AllBinary.updateMeasurement(this, graphics)
        nothing
end

