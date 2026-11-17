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

mutable struct CachePolicy <: JObject
    name::Any
    maxTime::Int64
    maxSize::Int64
    CachePolicy() = new()
end


function initFieldsCachePolicy(this::CachePolicy)
    this.name = nothing
    this.maxTime = Int64(0)
    this.maxSize = Int64(0)
    
    this.maxTime = Int64(0)
    this.maxSize = Int64(0)
    nothing
end


function initCachePolicy(this::CachePolicy, name, maxTime, maxSize)
        initFieldsCachePolicy(this)
        this.name = name
        AllBinary.setMaxTime(this, maxTime)
        AllBinary.setMaxSize(this, maxSize)
        nothing
end

function newCachePolicy(name, maxTime, maxSize)
    this = CachePolicy()
    initCachePolicy(this, name, maxTime, maxSize)
    this
end


function getMaxTime(this::CachePolicy)
        return this.maxTime
end


function setMaxTime(this::CachePolicy, maxTime)
        this.maxTime = maxTime
        nothing
end


function getMaxSize(this::CachePolicy)
        return this.maxSize
end


function setMaxSize(this::CachePolicy, maxSize)
        this.maxSize = maxSize
        nothing
end


function getName(this::CachePolicy)
        return this.name
end

