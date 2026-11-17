#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

mutable struct CacheInterfaceFactory <: JObject
    CacheInterfaceFactory() = new()
end


function initFieldsCacheInterfaceFactory(this::CacheInterfaceFactory)
    nothing
end


function initCacheInterfaceFactory(this::CacheInterfaceFactory)
        initFieldsCacheInterfaceFactory(this)
        nothing
        nothing
end

function newCacheInterfaceFactory()
    this = CacheInterfaceFactory()
    initCacheInterfaceFactory(this)
    this
end


function getInstance(::Type{CacheInterfaceFactory}, cacheType, cachePolicy)
        throw(jNewException("Exception", jstr("No such ") * jstr(AllBinary.toString(cacheType))))
end

