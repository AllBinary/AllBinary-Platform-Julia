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
# package org.allbinary.logic.util.cache

mutable struct NoCacheableFactory <: JObject
    NoCacheableFactory() = new()
end


function initFieldsNoCacheableFactory(this::NoCacheableFactory)
    nothing
end


function initNoCacheableFactory(this::NoCacheableFactory)
        initFieldsNoCacheableFactory(this)
        nothing
        nothing
end

function newNoCacheableFactory()
    this = NoCacheableFactory()
    initNoCacheableFactory(this)
    this
end


function getInstance(this::NoCacheableFactory, key)
        throw(jNewException("Exception", "This Factory Does Not"))
end

