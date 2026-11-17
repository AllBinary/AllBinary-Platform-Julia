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
mutable struct Special5GameInputInterfaceProcessor <: JObject
    Special5GameInputInterfaceProcessor() = new()
end


function initFieldsSpecial5GameInputInterfaceProcessor(this::Special5GameInputInterfaceProcessor)
    nothing
end


function initSpecial5GameInputInterfaceProcessor(this::Special5GameInputInterfaceProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecial5GameInputInterfaceProcessor(collidableDestroyableDamageableLayer)
    this = Special5GameInputInterfaceProcessor()
    initSpecial5GameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::Special5GameInputInterfaceProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.special5(this.specialGameInputInterface, allbinaryLayerManager, gameKeyEvent)
        nothing
end

