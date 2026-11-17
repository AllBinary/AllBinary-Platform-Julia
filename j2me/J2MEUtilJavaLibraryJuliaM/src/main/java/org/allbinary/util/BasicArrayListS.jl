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

# extends BasicArrayList: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicArrayListS <: JObject
    BasicArrayListS() = new()
end


function initFieldsBasicArrayListS(this::BasicArrayListS)
    nothing
end


function initBasicArrayListS(this::BasicArrayListS, size)
        initBasicArrayList(this, AllBinary.getInstance(NullUtil).NULL_OBJECT_ARRAY)
        if size < Int32(0)
            throw(jNewException("IllegalArgumentException", AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "Init Size Exception: "), size))))
        end
        this.objectArray = jNewArray(Any, size, nothing)
        nothing
end

function newBasicArrayListS(size)
    this = BasicArrayListS()
    initBasicArrayListS(this, size)
    this
end

