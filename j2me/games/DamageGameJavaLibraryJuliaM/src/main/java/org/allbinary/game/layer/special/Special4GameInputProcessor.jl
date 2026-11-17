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
mutable struct Special4GameInputProcessor <: JObject
    Special4GameInputProcessor() = new()
end


function initFieldsSpecial4GameInputProcessor(this::Special4GameInputProcessor)
    nothing
end


function initSpecial4GameInputProcessor(this::Special4GameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecial4GameInputProcessor(collidableDestroyableDamageableLayer)
    this = Special4GameInputProcessor()
    initSpecial4GameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::Special4GameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.special4(this.collidableDestroyableDamageableLayer, allbinaryLayerManager, gameKeyEvent)
        nothing
end

