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

mutable struct CachePolicyFactory <: JObject
    NAME::Any
    MAX_TIME_THOUSAND_MAX::Any
    THIRTY_MINUTES_TEN_THOUSAND_MAX::Any
    THIRTY_MINUTES_FIFTY_THOUSAND_MAX::Any
    ONE_MINUTE_FIVE_MAX::Any
    ONE_MINUTE_TEN_MAX::Any
    ONE_MINUTE_ONE_HUNDRED_MAX::Any
    CachePolicyFactory() = new()
end

const CachePolicyFactory_instanceValue = Ref{Any}(nothing)
const CachePolicyFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{CachePolicyFactory})
    if !CachePolicyFactory_instanceSet[]
        CachePolicyFactory_instanceSet[] = true
        CachePolicyFactory_instanceValue[] = newCachePolicyFactory()
    end
    CachePolicyFactory_instanceValue[]
end
function staticSet_instance(::Type{CachePolicyFactory}, value)
    CachePolicyFactory_instanceSet[] = true
    CachePolicyFactory_instanceValue[] = value
end

function initFieldsCachePolicyFactory(this::CachePolicyFactory)
    this.NAME = nothing
    this.MAX_TIME_THOUSAND_MAX = nothing
    this.THIRTY_MINUTES_TEN_THOUSAND_MAX = nothing
    this.THIRTY_MINUTES_FIFTY_THOUSAND_MAX = nothing
    this.ONE_MINUTE_FIVE_MAX = nothing
    this.ONE_MINUTE_TEN_MAX = nothing
    this.ONE_MINUTE_ONE_HUNDRED_MAX = nothing
    this.NAME = "lru"
    this.MAX_TIME_THOUSAND_MAX = newCachePolicy(this.NAME, staticGet_MAX_VALUE(Long), Int32(1000))
    this.THIRTY_MINUTES_TEN_THOUSAND_MAX = newCachePolicy(this.NAME, Int32(1000) * Int32(60) * Int32(30), Int32(10000))
    this.THIRTY_MINUTES_FIFTY_THOUSAND_MAX = newCachePolicy(this.NAME, Int32(1000) * Int32(60) * Int32(30), Int32(100000))
    this.ONE_MINUTE_FIVE_MAX = newCachePolicy(this.NAME, Int32(1000) * Int32(60) * Int32(1), Int32(5))
    this.ONE_MINUTE_TEN_MAX = newCachePolicy(this.NAME, Int32(1000) * Int32(60) * Int32(1), Int32(10))
    this.ONE_MINUTE_ONE_HUNDRED_MAX = newCachePolicy(this.NAME, Int32(1000) * Int32(60) * Int32(1), Int32(100))
    nothing
end

function initCachePolicyFactory(this::CachePolicyFactory)
    initFieldsCachePolicyFactory(this)
end

function newCachePolicyFactory()
    this = CachePolicyFactory()
    initCachePolicyFactory(this)
    this
end


function getInstance(::Type{CachePolicyFactory})
        return staticGet_instance(CachePolicyFactory)
end

