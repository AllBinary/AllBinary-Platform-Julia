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
mutable struct VerticalFormProcessor <: JObject
    scrollCurrentSelectionForm::Any
    VerticalFormProcessor() = new()
end


function initFieldsVerticalFormProcessor(this::VerticalFormProcessor)
    this.scrollCurrentSelectionForm = nothing
    
    nothing
end


function initVerticalFormProcessor(this::VerticalFormProcessor, scrollCurrentSelectionForm)
        initProcessor(this)
        initFieldsVerticalFormProcessor(this)
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm
        nothing
end

function newVerticalFormProcessor(scrollCurrentSelectionForm)
    this = VerticalFormProcessor()
    initVerticalFormProcessor(this, scrollCurrentSelectionForm)
    this
end


function process(this::VerticalFormProcessor)
        AllBinary.processVerticalForm(this.scrollCurrentSelectionForm)
        this.scrollCurrentSelectionForm.processor = AllBinary.getInstance(Processor)
        nothing
end

