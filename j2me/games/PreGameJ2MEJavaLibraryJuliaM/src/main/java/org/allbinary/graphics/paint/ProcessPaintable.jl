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
# package org.allbinary.graphics.paint

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ProcessPaintable <: JObject
    ProcessPaintable() = new()
end


function initFieldsProcessPaintable(this::ProcessPaintable)
    nothing
end

function initProcessPaintable(this::ProcessPaintable)
    initPaintable(this)
    initFieldsProcessPaintable(this)
end

function newProcessPaintable()
    this = ProcessPaintable()
    initProcessPaintable(this)
    this
end


function process(this::ProcessPaintable)
        nothing
        nothing
end

