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
mutable struct SpecialAnalogLeftGameInputProcessor <: JObject
    SpecialAnalogLeftGameInputProcessor() = new()
end


function initFieldsSpecialAnalogLeftGameInputProcessor(this::SpecialAnalogLeftGameInputProcessor)
    nothing
end


function initSpecialAnalogLeftGameInputProcessor(this::SpecialAnalogLeftGameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialAnalogLeftGameInputProcessor(collidableDestroyableDamageableLayer)
    this = SpecialAnalogLeftGameInputProcessor()
    initSpecialAnalogLeftGameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processAnalog(this::SpecialAnalogLeftGameInputProcessor, allbinaryLayerManager, gameKeyEvent, xAnalogValue)
        AllBinary.leftAnalog(this.collidableDestroyableDamageableLayer, xAnalogValue)
        nothing
end

