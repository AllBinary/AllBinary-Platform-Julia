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
mutable struct LaptopGameInputMapping <: JObject
    LaptopGameInputMapping() = new()
end


function initFieldsLaptopGameInputMapping(this::LaptopGameInputMapping)
    nothing
end

function initLaptopGameInputMapping(this::LaptopGameInputMapping)
    initPCGameInputMapping(this)
    initFieldsLaptopGameInputMapping(this)
end

function newLaptopGameInputMapping()
    this = LaptopGameInputMapping()
    initLaptopGameInputMapping(this)
    this
end


function getDefault(this::LaptopGameInputMapping)
        return AllBinary.getInputMapping(newLaptopDefaultGameInputMapping())
end

