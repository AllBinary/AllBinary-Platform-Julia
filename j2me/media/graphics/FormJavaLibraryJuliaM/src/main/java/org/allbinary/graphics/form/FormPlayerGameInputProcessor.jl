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
# package org.allbinary.graphics.form

# extends Processor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct FormPlayerGameInputProcessor <: JObject
    playerGameInputCompositeInterface::Any
    FormPlayerGameInputProcessor() = new()
end


function initFieldsFormPlayerGameInputProcessor(this::FormPlayerGameInputProcessor)
    this.playerGameInputCompositeInterface = nothing
    
    nothing
end


function initFormPlayerGameInputProcessor(this::FormPlayerGameInputProcessor, playerGameInputCompositeInterface)
        initProcessor(this)
        initFieldsFormPlayerGameInputProcessor(this)
        this.playerGameInputCompositeInterface = playerGameInputCompositeInterface
        nothing
end

function newFormPlayerGameInputProcessor(playerGameInputCompositeInterface)
    this = FormPlayerGameInputProcessor()
    initFormPlayerGameInputProcessor(this, playerGameInputCompositeInterface)
    this
end


function process(this::FormPlayerGameInputProcessor)
        AllBinary.update(AllBinary.getPlayerGameInput(this.playerGameInputCompositeInterface))
        nothing
end

