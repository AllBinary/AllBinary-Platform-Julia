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
# package org.allbinary.midlet

# extends Processor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MidletExitProcessor <: JObject
    midlet::Any
    MidletExitProcessor() = new()
end


function initFieldsMidletExitProcessor(this::MidletExitProcessor)
    this.midlet = nothing
    
    nothing
end


function initMidletExitProcessor(this::MidletExitProcessor, midlet)
        initProcessor(this)
        initFieldsMidletExitProcessor(this)
        this.midlet = midlet
        nothing
end

function newMidletExitProcessor(midlet)
    this = MidletExitProcessor()
    initMidletExitProcessor(this, midlet)
    this
end


function process(this::MidletExitProcessor)
        AllBinary.exit(System, Int32(0))
        nothing
end

