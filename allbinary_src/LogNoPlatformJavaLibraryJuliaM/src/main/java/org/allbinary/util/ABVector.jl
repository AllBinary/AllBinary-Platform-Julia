#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.util

# extends Vector: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ABVector <: JObject
    ABVector() = new()
end


function initFieldsABVector(this::ABVector)
    nothing
end

function initABVector(this::ABVector)
    initVector(this)
    initFieldsABVector(this)
end

function newABVector()
    this = ABVector()
    initABVector(this)
    this
end

