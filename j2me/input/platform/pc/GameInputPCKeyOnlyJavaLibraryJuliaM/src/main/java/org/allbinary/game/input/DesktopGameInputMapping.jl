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
# package org.allbinary.game.input

# extends PCGameInputMapping: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DesktopGameInputMapping <: JObject
    DesktopGameInputMapping() = new()
end


function initFieldsDesktopGameInputMapping(this::DesktopGameInputMapping)
    nothing
end

function initDesktopGameInputMapping(this::DesktopGameInputMapping)
    initPCGameInputMapping(this)
    initFieldsDesktopGameInputMapping(this)
end

function newDesktopGameInputMapping()
    this = DesktopGameInputMapping()
    initDesktopGameInputMapping(this)
    this
end


function getDefault(this::DesktopGameInputMapping)
        return AllBinary.getInputMapping(newDesktopDefaultGameInputMapping())
end

