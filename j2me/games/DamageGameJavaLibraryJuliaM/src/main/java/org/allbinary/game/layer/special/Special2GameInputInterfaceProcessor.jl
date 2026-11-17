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
mutable struct Special2GameInputInterfaceProcessor <: JObject
    Special2GameInputInterfaceProcessor() = new()
end


function initFieldsSpecial2GameInputInterfaceProcessor(this::Special2GameInputInterfaceProcessor)
    nothing
end


function initSpecial2GameInputInterfaceProcessor(this::Special2GameInputInterfaceProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecial2GameInputInterfaceProcessor(collidableDestroyableDamageableLayer)
    this = Special2GameInputInterfaceProcessor()
    initSpecial2GameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::Special2GameInputInterfaceProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.special2(this.specialGameInputInterface, allbinaryLayerManager, gameKeyEvent)
        nothing
end

