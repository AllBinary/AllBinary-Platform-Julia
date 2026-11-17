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
# package org.allbinary.game.input.mapping.event

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct InputMappingEvent <: JObject
    inputToGameKeyMapping::Any
    InputMappingEvent() = new()
end


function initFieldsInputMappingEvent(this::InputMappingEvent)
    this.inputToGameKeyMapping = nothing
    this.inputToGameKeyMapping = AllBinary.getNullInstance(InputToGameKeyMapping)
    nothing
end


function initInputMappingEvent(this::InputMappingEvent, anyType)
        initAllBinaryEventObject(this, anyType)
        initFieldsInputMappingEvent(this)
        nothing
end

function newInputMappingEvent(anyType)
    this = InputMappingEvent()
    initInputMappingEvent(this, anyType)
    this
end


function setInputToGameKeyMapping(this::InputMappingEvent, inputToGameKeyMapping)
        this.inputToGameKeyMapping = inputToGameKeyMapping
        nothing
end


function getInputToGameKeyMapping(this::InputMappingEvent)
        return this.inputToGameKeyMapping
end

