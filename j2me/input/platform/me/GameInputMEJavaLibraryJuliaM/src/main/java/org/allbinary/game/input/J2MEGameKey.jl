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
mutable struct J2MEGameKey <: JObject
    J2MEGameKey() = new()
end


function initFieldsJ2MEGameKey(this::J2MEGameKey)
    nothing
end


function initJ2MEGameKey(this::J2MEGameKey, key, keyName)
        initInput(this, key, keyName)
        local id::Int32 = AllBinary.getId(this)
        if id >= Int32(0)
            local inputFactory = AllBinary.getInstance(InputFactory)
            AllBinary.add(inputFactory, id, this)
        end
        nothing
end

function newJ2MEGameKey(key, keyName)
    this = J2MEGameKey()
    initJ2MEGameKey(this, key, keyName)
    this
end


function toString(this::J2MEGameKey)
        return AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "J2MEGameKey: "), AllBinary.toString(this)))
end


function getString(::Type{J2MEGameKey}, keyCode)
        local input = AllBinary.getInstanceById(AllBinary.getInstance(InputFactory), keyCode)
        if input !== nothing
            return AllBinary.getName(input)
        else
            return AllBinary.getInstance(StringUtil).EMPTY_STRING
        end
end

