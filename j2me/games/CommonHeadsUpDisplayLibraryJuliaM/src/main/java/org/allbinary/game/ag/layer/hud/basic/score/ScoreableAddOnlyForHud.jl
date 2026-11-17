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

# extends Scoreable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ScoreableAddOnlyForHud <: JObject
    scoreHudWidget::Any
    ScoreableAddOnlyForHud() = new()
end


function initFieldsScoreableAddOnlyForHud(this::ScoreableAddOnlyForHud)
    this.scoreHudWidget = nothing
    
    nothing
end


function initScoreableAddOnlyForHud(this::ScoreableAddOnlyForHud, scoreVectorGraphic)
        initScoreable(this, Int32(0))
        initFieldsScoreableAddOnlyForHud(this)
        this.scoreHudWidget = scoreVectorGraphic
        AllBinary.set(AllBinary.getScoreHudWidget(this), Int32(0))
        nothing
end

function newScoreableAddOnlyForHud(scoreVectorGraphic)
    this = ScoreableAddOnlyForHud()
    initScoreableAddOnlyForHud(this, scoreVectorGraphic)
    this
end


function removePoints(this::ScoreableAddOnlyForHud, points)
        nothing
        nothing
end


function addPoints(this::ScoreableAddOnlyForHud, points)
        AllBinary.addPoints(this, points)
        AllBinary.add(AllBinary.getScoreHudWidget(this), points)
        nothing
end


function getScoreHudWidget(this::ScoreableAddOnlyForHud)
        return this.scoreHudWidget
end

