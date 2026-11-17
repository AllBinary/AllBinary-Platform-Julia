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
mutable struct Special5GameInputProcessor <: JObject
    Special5GameInputProcessor() = new()
end


function initFieldsSpecial5GameInputProcessor(this::Special5GameInputProcessor)
    nothing
end


function initSpecial5GameInputProcessor(this::Special5GameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecial5GameInputProcessor(collidableDestroyableDamageableLayer)
    this = Special5GameInputProcessor()
    initSpecial5GameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::Special5GameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.special5(this.collidableDestroyableDamageableLayer, allbinaryLayerManager, gameKeyEvent)
        nothing
end

