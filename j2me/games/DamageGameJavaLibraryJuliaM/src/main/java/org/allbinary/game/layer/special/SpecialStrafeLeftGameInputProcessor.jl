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
mutable struct SpecialStrafeLeftGameInputProcessor <: JObject
    SpecialStrafeLeftGameInputProcessor() = new()
end


function initFieldsSpecialStrafeLeftGameInputProcessor(this::SpecialStrafeLeftGameInputProcessor)
    nothing
end


function initSpecialStrafeLeftGameInputProcessor(this::SpecialStrafeLeftGameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialStrafeLeftGameInputProcessor(collidableDestroyableDamageableLayer)
    this = SpecialStrafeLeftGameInputProcessor()
    initSpecialStrafeLeftGameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::SpecialStrafeLeftGameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.strafeLeft(this.collidableDestroyableDamageableLayer)
        nothing
end

