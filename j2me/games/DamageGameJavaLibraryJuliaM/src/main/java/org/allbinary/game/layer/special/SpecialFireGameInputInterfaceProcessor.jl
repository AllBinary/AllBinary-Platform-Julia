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
mutable struct SpecialFireGameInputInterfaceProcessor <: JObject
    SpecialFireGameInputInterfaceProcessor() = new()
end


function initFieldsSpecialFireGameInputInterfaceProcessor(this::SpecialFireGameInputInterfaceProcessor)
    nothing
end


function initSpecialFireGameInputInterfaceProcessor(this::SpecialFireGameInputInterfaceProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialFireGameInputInterfaceProcessor(collidableDestroyableDamageableLayer)
    this = SpecialFireGameInputInterfaceProcessor()
    initSpecialFireGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::SpecialFireGameInputInterfaceProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.fire(this.specialGameInputInterface, allbinaryLayerManager, gameKeyEvent)
        nothing
end

