# Generated Code Do Not Modify
# package org.allbinary.game

mutable struct BasicGameInfoFactory <: JObject
    currentReleaseIndex::Int32
    currentDestroyIndex::Int32
    total::Int32
    BasicGameInfoFactory() = new()
end

const BasicGameInfoFactory_SINGLETONValue = Ref{Any}(nothing)
const BasicGameInfoFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{BasicGameInfoFactory})
    if !BasicGameInfoFactory_SINGLETONSet[]
        BasicGameInfoFactory_SINGLETONSet[] = true
        BasicGameInfoFactory_SINGLETONValue[] = newBasicGameInfoFactory()
    end
    BasicGameInfoFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{BasicGameInfoFactory}, value)
    BasicGameInfoFactory_SINGLETONSet[] = true
    BasicGameInfoFactory_SINGLETONValue[] = value
end

function initFieldsBasicGameInfoFactory(this::BasicGameInfoFactory)
    this.currentReleaseIndex = Int32(0)
    this.currentDestroyIndex = Int32(0)
    this.total = Int32(0)
    this.currentReleaseIndex = Int32(0)
    this.currentDestroyIndex = Int32(0)
    this.total = Int32(0)
    nothing
end


function getInstance(::Type{BasicGameInfoFactory})
        return staticGet_SINGLETON(BasicGameInfoFactory)
end


function initBasicGameInfoFactory(this::BasicGameInfoFactory)
        initFieldsBasicGameInfoFactory(this)
        nothing
        nothing
end

function newBasicGameInfoFactory()
    this = BasicGameInfoFactory()
    initBasicGameInfoFactory(this)
    this
end


function init(this::BasicGameInfoFactory, total)
        this.currentReleaseIndex = Int32(0)
        this.currentDestroyIndex = Int32(0)
        this.total = total
        nothing
end


function isPeaked(this::BasicGameInfoFactory)
        if this.currentDestroyIndex >= this.total
            return true
        else
            return false
        end
end


function howManyLeft(this::BasicGameInfoFactory)
        return this.total - this.currentDestroyIndex
end

