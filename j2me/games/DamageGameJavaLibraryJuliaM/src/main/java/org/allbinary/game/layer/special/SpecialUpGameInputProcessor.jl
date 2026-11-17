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
# package org.allbinary.game.layer.special

# extends SpecialGameInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SpecialUpGameInputProcessor <: JObject
    SpecialUpGameInputProcessor() = new()
end


function initFieldsSpecialUpGameInputProcessor(this::SpecialUpGameInputProcessor)
    nothing
end


function initSpecialUpGameInputProcessor(this::SpecialUpGameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialUpGameInputProcessor(collidableDestroyableDamageableLayer)
    this = SpecialUpGameInputProcessor()
    initSpecialUpGameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::SpecialUpGameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.up(this.collidableDestroyableDamageableLayer)
        nothing
end

