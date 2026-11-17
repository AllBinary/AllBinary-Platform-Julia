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
# package org.allbinary.logic.java.character

#import java.nio.charset.Charset;
mutable struct CharacterSet <: JObject
    CharacterSet() = new()
end


function initFieldsCharacterSet(this::CharacterSet)
    nothing
end


function initCharacterSet(this::CharacterSet)
        initFieldsCharacterSet(this)
        nothing
        nothing
end

function newCharacterSet()
    this = CharacterSet()
    initCharacterSet(this)
    this
end


function toString(this::CharacterSet)
        return "Default Character Set: Empty Implementation"
end

