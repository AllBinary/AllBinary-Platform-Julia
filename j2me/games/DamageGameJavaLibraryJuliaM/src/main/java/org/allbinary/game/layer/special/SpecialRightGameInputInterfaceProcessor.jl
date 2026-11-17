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
mutable struct SpecialRightGameInputInterfaceProcessor <: JObject
    SpecialRightGameInputInterfaceProcessor() = new()
end


function initFieldsSpecialRightGameInputInterfaceProcessor(this::SpecialRightGameInputInterfaceProcessor)
    nothing
end


function initSpecialRightGameInputInterfaceProcessor(this::SpecialRightGameInputInterfaceProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialRightGameInputInterfaceProcessor(collidableDestroyableDamageableLayer)
    this = SpecialRightGameInputInterfaceProcessor()
    initSpecialRightGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::SpecialRightGameInputInterfaceProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.right(this.specialGameInputInterface)
        nothing
end

