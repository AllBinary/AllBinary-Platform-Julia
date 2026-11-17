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
# package org.allbinary.util

# extends BasicArrayListS: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImmutableBasicArrayList <: JObject
    name::Any
    ImmutableBasicArrayList() = new()
end


function initFieldsImmutableBasicArrayList(this::ImmutableBasicArrayList)
    this.name = nothing
    
    nothing
end


function initImmutableBasicArrayList(this::ImmutableBasicArrayList, name, size)
        initBasicArrayListS(this, size)
        initFieldsImmutableBasicArrayList(this)
        this.name = name
        nothing
end

function newImmutableBasicArrayList(name, size)
    this = ImmutableBasicArrayList()
    initImmutableBasicArrayList(this, name, size)
    this
end


function add(this::ImmutableBasicArrayList, e)
        AllBinary.log(ForcedLogUtil, this.name, this)
        return true
end


function addAt(this::ImmutableBasicArrayList, index, element)
        AllBinary.log(ForcedLogUtil, this.name, this)
        nothing
end


function toString(this::ImmutableBasicArrayList)
        return this.name
end

