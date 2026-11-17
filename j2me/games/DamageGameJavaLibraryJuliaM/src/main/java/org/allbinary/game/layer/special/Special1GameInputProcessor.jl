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
mutable struct Special1GameInputProcessor <: JObject
    Special1GameInputProcessor() = new()
end


function initFieldsSpecial1GameInputProcessor(this::Special1GameInputProcessor)
    nothing
end


function initSpecial1GameInputProcessor(this::Special1GameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecial1GameInputProcessor(collidableDestroyableDamageableLayer)
    this = Special1GameInputProcessor()
    initSpecial1GameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::Special1GameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.special1(this.collidableDestroyableDamageableLayer, allbinaryLayerManager, gameKeyEvent)
        nothing
end

