# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

mutable struct GameAdStateFactory <: JObject
    gameAdStateArray::Any
    gameAdState::Any
    GameAdStateFactory() = new()
end

const GameAdStateFactory_instanceValue = Ref{Any}(nothing)
const GameAdStateFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameAdStateFactory})
    if !GameAdStateFactory_instanceSet[]
        GameAdStateFactory_instanceSet[] = true
        GameAdStateFactory_instanceValue[] = newGameAdStateFactory()
    end
    GameAdStateFactory_instanceValue[]
end
function staticSet_instance(::Type{GameAdStateFactory}, value)
    GameAdStateFactory_instanceSet[] = true
    GameAdStateFactory_instanceValue[] = value
end

function initFieldsGameAdStateFactory(this::GameAdStateFactory)
    this.gameAdStateArray = nothing
    this.gameAdState = nothing
    this.gameAdStateArray = Any[newGameAdState(newAppNameLicensingAdConfiguration())]
    this.gameAdState = this.gameAdStateArray[Int32(0) + 1]
    nothing
end

function initGameAdStateFactory(this::GameAdStateFactory)
    initFieldsGameAdStateFactory(this)
end

function newGameAdStateFactory()
    this = GameAdStateFactory()
    initGameAdStateFactory(this)
    this
end


function getInstance(::Type{GameAdStateFactory})
        return staticGet_instance(GameAdStateFactory)
end


function getCurrentInstance(this::GameAdStateFactory)
        return this.gameAdState
end


function getInstanceForApp(this::GameAdStateFactory, softwareInformation)
        this.gameAdState = this.gameAdStateArray[Int32(0) + 1]
        return this.gameAdStateArray[Int32(0) + 1]
end


function isEnabled(this::GameAdStateFactory)
        return false
end

