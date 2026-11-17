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
mutable struct SpecialAnalogUpGameInputProcessor <: JObject
    SpecialAnalogUpGameInputProcessor() = new()
end


function initFieldsSpecialAnalogUpGameInputProcessor(this::SpecialAnalogUpGameInputProcessor)
    nothing
end


function initSpecialAnalogUpGameInputProcessor(this::SpecialAnalogUpGameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialAnalogUpGameInputProcessor(collidableDestroyableDamageableLayer)
    this = SpecialAnalogUpGameInputProcessor()
    initSpecialAnalogUpGameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processAnalog(this::SpecialAnalogUpGameInputProcessor, allbinaryLayerManager, gameKeyEvent, yAnalogValue)
        AllBinary.upAnalog(this.collidableDestroyableDamageableLayer, yAnalogValue)
        nothing
end

