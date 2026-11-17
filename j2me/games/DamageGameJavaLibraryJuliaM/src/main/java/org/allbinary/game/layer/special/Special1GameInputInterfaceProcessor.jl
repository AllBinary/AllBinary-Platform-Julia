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

# extends SpecialGameInputInterfaceProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct Special1GameInputInterfaceProcessor <: JObject
    Special1GameInputInterfaceProcessor() = new()
end


function initFieldsSpecial1GameInputInterfaceProcessor(this::Special1GameInputInterfaceProcessor)
    nothing
end


function initSpecial1GameInputInterfaceProcessor(this::Special1GameInputInterfaceProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecial1GameInputInterfaceProcessor(collidableDestroyableDamageableLayer)
    this = Special1GameInputInterfaceProcessor()
    initSpecial1GameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::Special1GameInputInterfaceProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.special1(this.specialGameInputInterface, allbinaryLayerManager, gameKeyEvent)
        nothing
end

