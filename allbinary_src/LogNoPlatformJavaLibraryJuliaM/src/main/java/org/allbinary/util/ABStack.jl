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

# extends Stack: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ABStack <: JObject
    ABStack() = new()
end


function initFieldsABStack(this::ABStack)
    nothing
end

function initABStack(this::ABStack)
    initStack(this)
    initFieldsABStack(this)
end

function newABStack()
    this = ABStack()
    initABStack(this)
    this
end

