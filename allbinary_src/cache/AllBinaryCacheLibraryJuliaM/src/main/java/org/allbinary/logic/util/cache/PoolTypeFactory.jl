# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

mutable struct PoolTypeFactory <: JObject
    VECTOR_POOL::Any
    PoolTypeFactory() = new()
end

const PoolTypeFactory_instanceValue = Ref{Any}(nothing)
const PoolTypeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{PoolTypeFactory})
    if !PoolTypeFactory_instanceSet[]
        PoolTypeFactory_instanceSet[] = true
        PoolTypeFactory_instanceValue[] = newPoolTypeFactory()
    end
    PoolTypeFactory_instanceValue[]
end
function staticSet_instance(::Type{PoolTypeFactory}, value)
    PoolTypeFactory_instanceSet[] = true
    PoolTypeFactory_instanceValue[] = value
end

function initFieldsPoolTypeFactory(this::PoolTypeFactory)
    this.VECTOR_POOL = nothing
    this.VECTOR_POOL = newPoolType(AllBinary.getInstance(CacheTypeFactory).NO_CACHE)
    nothing
end

function initPoolTypeFactory(this::PoolTypeFactory)
    initFieldsPoolTypeFactory(this)
end

function newPoolTypeFactory()
    this = PoolTypeFactory()
    initPoolTypeFactory(this)
    this
end


function getInstance(::Type{PoolTypeFactory})
        return staticGet_instance(PoolTypeFactory)
end

