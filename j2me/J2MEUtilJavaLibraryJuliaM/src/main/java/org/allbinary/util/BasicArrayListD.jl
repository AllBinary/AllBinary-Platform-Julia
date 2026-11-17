#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.util

# extends BasicArrayListS: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicArrayListD <: JObject
    BasicArrayListD() = new()
end


function initFieldsBasicArrayListD(this::BasicArrayListD)
    nothing
end


function initBasicArrayListD(this::BasicArrayListD)
        initBasicArrayListS(this, Int32(7))
        nothing
end

function newBasicArrayListD()
    this = BasicArrayListD()
    initBasicArrayListD(this)
    this
end

