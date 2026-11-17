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
# package org.allbinary

mutable struct AvianUtil <: JObject
    AvianUtil() = new()
end


function initFieldsAvianUtil(this::AvianUtil)
    nothing
end

function initAvianUtil(this::AvianUtil)
    initFieldsAvianUtil(this)
end

function newAvianUtil()
    this = AvianUtil()
    initAvianUtil(this)
    this
end


function isAvian(::Type{AvianUtil})
        return false
end

