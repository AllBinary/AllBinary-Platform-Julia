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
# package org.allbinary.debug

mutable struct DebugFactory <: JObject
    DebugFactory() = new()
end


function initFieldsDebugFactory(this::DebugFactory)
    nothing
end

function initDebugFactory(this::DebugFactory)
    initFieldsDebugFactory(this)
end

function newDebugFactory()
    this = DebugFactory()
    initDebugFactory(this)
    this
end


function getInstance(::Type{DebugFactory})
        return AllBinary.getInstance(NoDebug)
end

