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

# extends Hashtable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ABHashtable <: JObject
    ABHashtable() = new()
end


function initFieldsABHashtable(this::ABHashtable)
    nothing
end


function initABHashtable(this::ABHashtable, initialCapacity)
        initHashtable(this, initialCapacity)
        nothing
end

function newABHashtable(initialCapacity)
    this = ABHashtable()
    initABHashtable(this, initialCapacity)
    this
end


function initABHashtable(this::ABHashtable)
        initHashtable(this)
        nothing
end

function newABHashtable()
    this = ABHashtable()
    initABHashtable(this)
    this
end

