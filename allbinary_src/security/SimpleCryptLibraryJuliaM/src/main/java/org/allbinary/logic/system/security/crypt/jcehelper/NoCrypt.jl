#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.system.security.crypt.jcehelper

mutable struct NoCrypt <: JObject
    NoCrypt() = new()
end


function initFieldsNoCrypt(this::NoCrypt)
    nothing
end

function initNoCrypt(this::NoCrypt)
    initFieldsNoCrypt(this)
end

function newNoCrypt()
    this = NoCrypt()
    initNoCrypt(this)
    this
end


function encrypt(this::NoCrypt, array)
        return array
end


function decrypt(this::NoCrypt, array)
        return array
end

