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

# extends J2MEGameInputMapping: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MotionJ2MEGameInputMapping <: JObject
    MotionJ2MEGameInputMapping() = new()
end


function initFieldsMotionJ2MEGameInputMapping(this::MotionJ2MEGameInputMapping)
    nothing
end

function initMotionJ2MEGameInputMapping(this::MotionJ2MEGameInputMapping)
    initJ2MEGameInputMapping(this)
    initFieldsMotionJ2MEGameInputMapping(this)
end

function newMotionJ2MEGameInputMapping()
    this = MotionJ2MEGameInputMapping()
    initMotionJ2MEGameInputMapping(this)
    this
end


function getDefault(this::MotionJ2MEGameInputMapping)
        return AllBinary.getInputMapping(newMotionJ2MEDefaultGameInputMapping())
end

