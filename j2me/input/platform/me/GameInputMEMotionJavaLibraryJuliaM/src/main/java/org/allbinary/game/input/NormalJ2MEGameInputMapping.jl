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
mutable struct NormalJ2MEGameInputMapping <: JObject
    NormalJ2MEGameInputMapping() = new()
end


function initFieldsNormalJ2MEGameInputMapping(this::NormalJ2MEGameInputMapping)
    nothing
end

function initNormalJ2MEGameInputMapping(this::NormalJ2MEGameInputMapping)
    initJ2MEGameInputMapping(this)
    initFieldsNormalJ2MEGameInputMapping(this)
end

function newNormalJ2MEGameInputMapping()
    this = NormalJ2MEGameInputMapping()
    initNormalJ2MEGameInputMapping(this)
    this
end


function getDefault(this::NormalJ2MEGameInputMapping)
        return AllBinary.getInputMapping(newNormalJ2MEDefaultGameInputMapping())
end

