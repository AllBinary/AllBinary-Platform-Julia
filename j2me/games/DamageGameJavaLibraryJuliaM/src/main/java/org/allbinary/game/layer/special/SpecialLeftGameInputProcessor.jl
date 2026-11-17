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
mutable struct SpecialLeftGameInputProcessor <: JObject
    SpecialLeftGameInputProcessor() = new()
end


function initFieldsSpecialLeftGameInputProcessor(this::SpecialLeftGameInputProcessor)
    nothing
end


function initSpecialLeftGameInputProcessor(this::SpecialLeftGameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialLeftGameInputProcessor(collidableDestroyableDamageableLayer)
    this = SpecialLeftGameInputProcessor()
    initSpecialLeftGameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::SpecialLeftGameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.left(this.collidableDestroyableDamageableLayer)
        nothing
end

