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

mutable struct BasicArrayListCacheableInterfaceFactory <: JObject
    BasicArrayListCacheableInterfaceFactory() = new()
end


function initFieldsBasicArrayListCacheableInterfaceFactory(this::BasicArrayListCacheableInterfaceFactory)
    nothing
end

function initBasicArrayListCacheableInterfaceFactory(this::BasicArrayListCacheableInterfaceFactory)
    initFieldsBasicArrayListCacheableInterfaceFactory(this)
end

function newBasicArrayListCacheableInterfaceFactory()
    this = BasicArrayListCacheableInterfaceFactory()
    initBasicArrayListCacheableInterfaceFactory(this)
    this
end


function getInstance(this::BasicArrayListCacheableInterfaceFactory, key)
        return newBasicArrayListCacheable()
end

