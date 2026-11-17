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
mutable struct MotionLaptopGameInputMapping <: JObject
    MotionLaptopGameInputMapping() = new()
end


function initFieldsMotionLaptopGameInputMapping(this::MotionLaptopGameInputMapping)
    nothing
end

function initMotionLaptopGameInputMapping(this::MotionLaptopGameInputMapping)
    initPCGameInputMapping(this)
    initFieldsMotionLaptopGameInputMapping(this)
end

function newMotionLaptopGameInputMapping()
    this = MotionLaptopGameInputMapping()
    initMotionLaptopGameInputMapping(this)
    this
end


function getDefault(this::MotionLaptopGameInputMapping)
        return AllBinary.getInputMapping(newMotionLaptopDefaultGameInputMapping())
end

