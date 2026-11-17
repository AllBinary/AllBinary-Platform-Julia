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
mutable struct SpecialStrafeRightGameInputInterfaceProcessor <: JObject
    SpecialStrafeRightGameInputInterfaceProcessor() = new()
end


function initFieldsSpecialStrafeRightGameInputInterfaceProcessor(this::SpecialStrafeRightGameInputInterfaceProcessor)
    nothing
end


function initSpecialStrafeRightGameInputInterfaceProcessor(this::SpecialStrafeRightGameInputInterfaceProcessor, collidableDestroyableDamageableLayer)
        initSpecialGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
        nothing
end

function newSpecialStrafeRightGameInputInterfaceProcessor(collidableDestroyableDamageableLayer)
    this = SpecialStrafeRightGameInputInterfaceProcessor()
    initSpecialStrafeRightGameInputInterfaceProcessor(this, collidableDestroyableDamageableLayer)
    this
end


function processEvent(this::SpecialStrafeRightGameInputInterfaceProcessor, allbinaryLayerManager, gameKeyEvent)
        AllBinary.strafeRight(this.specialGameInputInterface)
        nothing
end

