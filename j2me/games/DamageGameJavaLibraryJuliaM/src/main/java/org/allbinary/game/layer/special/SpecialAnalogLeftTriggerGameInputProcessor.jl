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
mutable struct SpecialAnalogLeftTriggerGameInputProcessor <: JObject
    SpecialAnalogLeftTriggerGameInputProcessor() = new()
end


function initFieldsSpecialAnalogLeftTriggerGameInputProcessor(this::SpecialAnalogLeftTriggerGameInputProcessor)
    nothing
end


function initSpecialAnalogLeftTriggerGameInputProcessor(this::SpecialAnalogLeftTriggerGameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialAnalogLeftTriggerGameInputProcessor(collidableDestroyableDamageableLayer)
    this = SpecialAnalogLeftTriggerGameInputProcessor()
    initSpecialAnalogLeftTriggerGameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processAnalog(this::SpecialAnalogLeftTriggerGameInputProcessor, allbinaryLayerManager, gameKeyEvent, yAnalogValue)
        AllBinary.leftTrigger(this.collidableDestroyableDamageableLayer, allbinaryLayerManager, gameKeyEvent, yAnalogValue)
        nothing
end

