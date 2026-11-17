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
# package org.allbinary.logic.java

mutable struct PrimitiveArrayToString <: JObject
    PrimitiveArrayToString() = new()
end


function initFieldsPrimitiveArrayToString(this::PrimitiveArrayToString)
    nothing
end

function initPrimitiveArrayToString(this::PrimitiveArrayToString)
    initFieldsPrimitiveArrayToString(this)
end

function newPrimitiveArrayToString()
    this = PrimitiveArrayToString()
    initPrimitiveArrayToString(this)
    this
end


function toString(::Type{PrimitiveArrayToString}, floats)
        local stringBuffer = newStringMaker()
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(floats))
            try
            AllBinary.appendfloat(stringBuffer, floats[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end

