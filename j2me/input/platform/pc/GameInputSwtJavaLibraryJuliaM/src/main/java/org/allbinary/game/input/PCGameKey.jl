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
# package org.allbinary.game.input

# extends Input: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PCGameKey <: JObject
    PCGameKey() = new()
end


function initFieldsPCGameKey(this::PCGameKey)
    nothing
end


function initPCGameKey(this::PCGameKey, keyCode, name)
        initInput(this, keyCode, name)
        local id::Int32 = AllBinary.getId(this)
        if id >= Int32(0)
            AllBinary.add(AllBinary.getInstance(InputFactory), id, this)
        end
        nothing
end

function newPCGameKey(keyCode, name)
    this = PCGameKey()
    initPCGameKey(this, keyCode, name)
    this
end


function toString(this::PCGameKey)
        return jstr("PCGameKey: ") * jstr(AllBinary.toString(this))
end


function getString(::Type{PCGameKey}, keyCode)
        local input = AllBinary.getInstanceById(AllBinary.getInstance(InputFactory), keyCode)
        if input !== nothing
            return AllBinary.getName(input)
        else
            return AllBinary.getInstance(StringUtil).EMPTY_STRING
        end
end

