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
# package org.allbinary.graphics.displayable.screen

# extends Processor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ScreenRepaintProcessor <: JObject
    displayable::Any
    ScreenRepaintProcessor() = new()
end


function initFieldsScreenRepaintProcessor(this::ScreenRepaintProcessor)
    this.displayable = nothing
    
    nothing
end


function initScreenRepaintProcessor(this::ScreenRepaintProcessor, displayable)
        initProcessor(this)
        initFieldsScreenRepaintProcessor(this)
        this.displayable = displayable
        nothing
end

function newScreenRepaintProcessor(displayable)
    this = ScreenRepaintProcessor()
    initScreenRepaintProcessor(this, displayable)
    this
end


function process(this::ScreenRepaintProcessor)
        AllBinary.repaint(ScreenRepaintUtil, this.displayable)
        nothing
end

