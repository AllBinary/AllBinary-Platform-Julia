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
# package org.allbinary.logic.math.permutations

mutable struct ComparableObject <: JObject
    ComparableObject() = new()
end


function initFieldsComparableObject(this::ComparableObject)
    nothing
end

function initComparableObject(this::ComparableObject)
    initFieldsComparableObject(this)
end

function newComparableObject()
    this = ComparableObject()
    initComparableObject(this)
    this
end


function compareTo(this::ComparableObject, anyType)
        if AllBinary.hashCode(AllBinary.getInstance(TsUtil), this) < AllBinary.hashCode(AllBinary.getInstance(TsUtil), anyType)
            return -Int32(1)
        elseif AllBinary.hashCode(AllBinary.getInstance(TsUtil), this) > AllBinary.hashCode(AllBinary.getInstance(TsUtil), anyType)
            return Int32(1)
        end
        return Int32(0)
end

