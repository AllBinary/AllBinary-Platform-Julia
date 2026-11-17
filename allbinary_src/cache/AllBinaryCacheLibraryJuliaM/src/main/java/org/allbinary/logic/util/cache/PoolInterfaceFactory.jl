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

mutable struct PoolInterfaceFactory <: JObject
    PoolInterfaceFactory() = new()
end


function initFieldsPoolInterfaceFactory(this::PoolInterfaceFactory)
    nothing
end


function initPoolInterfaceFactory(this::PoolInterfaceFactory)
        initFieldsPoolInterfaceFactory(this)
        nothing
        nothing
end

function newPoolInterfaceFactory()
    this = PoolInterfaceFactory()
    initPoolInterfaceFactory(this)
    this
end


function getInstance(::Type{PoolInterfaceFactory}, cacheableInterfaceFactoryInterface, poolType, cachePolicy)
        throw(jNewException("Exception", jstr("No Such PoolType: ") * jstr(AllBinary.toString(poolType))))
end

