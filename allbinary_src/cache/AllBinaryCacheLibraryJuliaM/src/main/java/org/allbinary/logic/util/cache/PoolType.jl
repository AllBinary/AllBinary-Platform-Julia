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

mutable struct PoolType <: JObject
    cacheType::Any
    PoolType() = new()
end


function initFieldsPoolType(this::PoolType)
    this.cacheType = nothing
    
    nothing
end


function initPoolType(this::PoolType, cacheType)
        initFieldsPoolType(this)
        this.cacheType = cacheType
        nothing
end

function newPoolType(cacheType)
    this = PoolType()
    initPoolType(this, cacheType)
    this
end


function getCacheType(this::PoolType)
        return this.cacheType
end


function toString(this::PoolType)
        local POOL_TYPE = "PoolType: "
        return jstr(POOL_TYPE) * jstr(AllBinary.toString(AllBinary.getCacheType(this)))
end

