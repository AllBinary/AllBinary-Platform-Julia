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
mutable struct SpecialDownGameInputProcessor <: JObject
    SpecialDownGameInputProcessor() = new()
end


function initFieldsSpecialDownGameInputProcessor(this::SpecialDownGameInputProcessor)
    nothing
end


function initSpecialDownGameInputProcessor(this::SpecialDownGameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialDownGameInputProcessor(collidableDestroyableDamageableLayer)
    this = SpecialDownGameInputProcessor()
    initSpecialDownGameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::SpecialDownGameInputProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.down(this.collidableDestroyableDamageableLayer)
        nothing
end

