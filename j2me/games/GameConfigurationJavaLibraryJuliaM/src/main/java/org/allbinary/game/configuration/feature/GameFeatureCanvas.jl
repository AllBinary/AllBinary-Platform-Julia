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
# package org.allbinary.game.configuration.feature

# extends Canvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameFeatureCanvas <: JObject
    GameFeatureCanvas() = new()
end


function initFieldsGameFeatureCanvas(this::GameFeatureCanvas)
    nothing
end


function initGameFeatureCanvas(this::GameFeatureCanvas)
        initCanvas(this)
        initFieldsGameFeatureCanvas(this)
        nothing
        nothing
end

function newGameFeatureCanvas()
    this = GameFeatureCanvas()
    initGameFeatureCanvas(this)
    this
end


function paint(this::GameFeatureCanvas, graphics)
        nothing
        nothing
end

