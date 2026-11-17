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
mutable struct Special2GameInputProcessor <: JObject
    Special2GameInputProcessor() = new()
end


function initFieldsSpecial2GameInputProcessor(this::Special2GameInputProcessor)
    nothing
end


function initSpecial2GameInputProcessor(this::Special2GameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecial2GameInputProcessor(collidableDestroyableDamageableLayer)
    this = Special2GameInputProcessor()
    initSpecial2GameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::Special2GameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.special2(this.collidableDestroyableDamageableLayer, allbinaryLayerManager, gameKeyEvent)
        nothing
end

