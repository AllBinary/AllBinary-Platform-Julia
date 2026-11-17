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
# package org.allbinary.input.event

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct VirtualKeyboardEvent <: JObject
    VirtualKeyboardEvent() = new()
end


function initFieldsVirtualKeyboardEvent(this::VirtualKeyboardEvent)
    nothing
end


function initVirtualKeyboardEvent(this::VirtualKeyboardEvent, anyType)
        initAllBinaryEventObject(this, anyType)
        nothing
end

function newVirtualKeyboardEvent(anyType)
    this = VirtualKeyboardEvent()
    initVirtualKeyboardEvent(this, anyType)
    this
end

