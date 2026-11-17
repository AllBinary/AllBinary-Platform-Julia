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

mutable struct CacheType <: JObject
    vendor::Any
    type_::Any
    CacheType() = new()
end


function initFieldsCacheType(this::CacheType)
    this.vendor = nothing
    this.type_ = nothing
    
    
    nothing
end


function initCacheType(this::CacheType, vendor, type_)
        initFieldsCacheType(this)
        this.vendor = vendor
        this.type_ = type_
        nothing
end

function newCacheType(vendor, type_)
    this = CacheType()
    initCacheType(this, vendor, type_)
    this
end


function getVendor(this::CacheType)
        return this.vendor
end


function getType(this::CacheType)
        return this.type_
end


function toString(this::CacheType)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "CacheType: Vendor: ")
        AllBinary.append(stringBuffer, AllBinary.getVendor(this))
        AllBinary.append(stringBuffer, " Type: ")
        AllBinary.append(stringBuffer, AllBinary.getType(this))
        return AllBinary.toString(stringBuffer)
end

