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

mutable struct PrimitiveIntUtil <: JObject
    PrimitiveIntUtil() = new()
end


function initFieldsPrimitiveIntUtil(this::PrimitiveIntUtil)
    nothing
end


function initPrimitiveIntUtil(this::PrimitiveIntUtil)
        initFieldsPrimitiveIntUtil(this)
        nothing
        nothing
end

function newPrimitiveIntUtil()
    this = PrimitiveIntUtil()
    initPrimitiveIntUtil(this)
    this
end


function getArrayInstance(::Type{PrimitiveIntUtil})
        return AllBinary.getInstance(NullUtil).NULL_INT_ARRAY
end


function getTwoDimensionalArrayInstance(::Type{PrimitiveIntUtil})
        return AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY
end

