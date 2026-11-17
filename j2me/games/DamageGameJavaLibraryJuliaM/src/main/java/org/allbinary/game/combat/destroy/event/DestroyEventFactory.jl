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
# package org.allbinary.game.combat.destroy.event

mutable struct DestroyEventFactory <: JObject
    combatGameCanvas::Any
    DestroyEventFactory() = new()
end


function initFieldsDestroyEventFactory(this::DestroyEventFactory)
    this.combatGameCanvas = nothing
    
    nothing
end


function initDestroyEventFactory(this::DestroyEventFactory, combatGameCanvas)
        initFieldsDestroyEventFactory(this)
        this.combatGameCanvas = combatGameCanvas
        nothing
end

function newDestroyEventFactory(combatGameCanvas)
    this = DestroyEventFactory()
    initDestroyEventFactory(this, combatGameCanvas)
    this
end


function getInstance(this::DestroyEventFactory)
        return newDestroyedEvent(this.combatGameCanvas)
end

