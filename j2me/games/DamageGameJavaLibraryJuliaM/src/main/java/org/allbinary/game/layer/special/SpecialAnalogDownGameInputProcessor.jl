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
mutable struct SpecialAnalogDownGameInputProcessor <: JObject
    SpecialAnalogDownGameInputProcessor() = new()
end


function initFieldsSpecialAnalogDownGameInputProcessor(this::SpecialAnalogDownGameInputProcessor)
    nothing
end


function initSpecialAnalogDownGameInputProcessor(this::SpecialAnalogDownGameInputProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialAnalogDownGameInputProcessor(collidableDestroyableDamageableLayer)
    this = SpecialAnalogDownGameInputProcessor()
    initSpecialAnalogDownGameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processAnalog(this::SpecialAnalogDownGameInputProcessor, allbinaryLayerManager, gameKeyEvent, yAnalogValue)
        AllBinary.downAnalog(this.collidableDestroyableDamageableLayer, yAnalogValue)
        nothing
end

