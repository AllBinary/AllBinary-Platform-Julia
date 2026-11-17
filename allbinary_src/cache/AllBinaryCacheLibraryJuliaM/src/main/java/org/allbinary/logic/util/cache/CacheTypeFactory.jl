# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

mutable struct CacheTypeFactory <: JObject
    NO_CACHE::Any
    CACHE::Any
    SET::Any
    CACHE_VECTOR::Any
    CacheTypeFactory() = new()
end

const CacheTypeFactory_instanceValue = Ref{Any}(nothing)
const CacheTypeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{CacheTypeFactory})
    if !CacheTypeFactory_instanceSet[]
        CacheTypeFactory_instanceSet[] = true
        CacheTypeFactory_instanceValue[] = newCacheTypeFactory()
    end
    CacheTypeFactory_instanceValue[]
end
function staticSet_instance(::Type{CacheTypeFactory}, value)
    CacheTypeFactory_instanceSet[] = true
    CacheTypeFactory_instanceValue[] = value
end

function initFieldsCacheTypeFactory(this::CacheTypeFactory)
    this.NO_CACHE = nothing
    this.CACHE = nothing
    this.SET = nothing
    this.CACHE_VECTOR = nothing
    this.NO_CACHE = newCacheType(AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(StringUtil).EMPTY_STRING)
    this.CACHE = newCacheType(AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(StringUtil).EMPTY_STRING)
    this.SET = newCacheType(AllBinary.getInstance(StringUtil).EMPTY_STRING, "Set")
    this.CACHE_VECTOR = newCacheType(AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(StringUtil).EMPTY_STRING)
    nothing
end

function initCacheTypeFactory(this::CacheTypeFactory)
    initFieldsCacheTypeFactory(this)
end

function newCacheTypeFactory()
    this = CacheTypeFactory()
    initCacheTypeFactory(this)
    this
end


function getInstance(::Type{CacheTypeFactory})
        return staticGet_instance(CacheTypeFactory)
end

