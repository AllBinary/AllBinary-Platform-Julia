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
# package org.allbinary.system

#ActualPlatform
mutable struct Memory <: JObject
    Memory() = new()
end


function initFieldsMemory(this::Memory)
    nothing
end

function initMemory(this::Memory)
    initFieldsMemory(this)
end

function newMemory()
    this = Memory()
    initMemory(this)
    this
end


function getInfo(::Type{Memory})
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end

