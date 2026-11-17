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

# extends GameInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SpecialGameInputProcessor <: JObject
    collidableDestroyableDamageableLayer::Any
    SpecialGameInputProcessor() = new()
end


function initFieldsSpecialGameInputProcessor(this::SpecialGameInputProcessor)
    this.collidableDestroyableDamageableLayer = nothing
    
    nothing
end


function initSpecialGameInputProcessor(this::SpecialGameInputProcessor, collidableDestroyableDamageableLayer)
        initGameInputProcessor(this)
        initFieldsSpecialGameInputProcessor(this)
        this.collidableDestroyableDamageableLayer = collidableDestroyableDamageableLayer
        nothing
end

function newSpecialGameInputProcessor(collidableDestroyableDamageableLayer)
    this = SpecialGameInputProcessor()
    initSpecialGameInputProcessor(this, collidableDestroyableDamageableLayer)
    this
end

