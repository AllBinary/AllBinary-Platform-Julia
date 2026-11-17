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

mutable struct AutomaticCacheInterfaceFactory <: JObject
    AutomaticCacheInterfaceFactory() = new()
end


function initFieldsAutomaticCacheInterfaceFactory(this::AutomaticCacheInterfaceFactory)
    nothing
end


function initAutomaticCacheInterfaceFactory(this::AutomaticCacheInterfaceFactory)
        initFieldsAutomaticCacheInterfaceFactory(this)
        nothing
        nothing
end

function newAutomaticCacheInterfaceFactory()
    this = AutomaticCacheInterfaceFactory()
    initAutomaticCacheInterfaceFactory(this)
    this
end


function getInstance(::Type{AutomaticCacheInterfaceFactory}, cacheableInterfaceFactoryInterface, cacheType, cachePolicy)
        throw(jNewException("Exception", jstr("No such ") * jstr(AllBinary.toString(cacheType))))
end

