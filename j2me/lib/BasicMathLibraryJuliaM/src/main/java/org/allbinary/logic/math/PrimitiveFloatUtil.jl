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
# package org.allbinary.logic.math

mutable struct PrimitiveFloatUtil <: JObject
    PrimitiveFloatUtil() = new()
end


function initFieldsPrimitiveFloatUtil(this::PrimitiveFloatUtil)
    nothing
end


function initPrimitiveFloatUtil(this::PrimitiveFloatUtil)
        initFieldsPrimitiveFloatUtil(this)
        nothing
        nothing
end

function newPrimitiveFloatUtil()
    this = PrimitiveFloatUtil()
    initPrimitiveFloatUtil(this)
    this
end


function getArrayInstance(::Type{PrimitiveFloatUtil})
        return jNewArray(Float32, Int32(0), 0.0f0)
end

