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

# extends HashMap: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ABHashMap <: JObject
    ABHashMap() = new()
end


function initFieldsABHashMap(this::ABHashMap)
    nothing
end

function initABHashMap(this::ABHashMap)
    initHashMap(this)
    initFieldsABHashMap(this)
end

function newABHashMap()
    this = ABHashMap()
    initABHashMap(this)
    this
end

