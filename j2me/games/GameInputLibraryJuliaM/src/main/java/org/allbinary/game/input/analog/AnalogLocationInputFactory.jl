# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

mutable struct AnalogLocationInputFactory <: JObject
    list::Any
    AnalogLocationInputFactory() = new()
end

const AnalogLocationInputFactory_instanceValue = Ref{Any}(nothing)
const AnalogLocationInputFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{AnalogLocationInputFactory})
    if !AnalogLocationInputFactory_instanceSet[]
        AnalogLocationInputFactory_instanceSet[] = true
        AnalogLocationInputFactory_instanceValue[] = newAnalogLocationInputFactory()
    end
    AnalogLocationInputFactory_instanceValue[]
end
function staticSet_instance(::Type{AnalogLocationInputFactory}, value)
    AnalogLocationInputFactory_instanceSet[] = true
    AnalogLocationInputFactory_instanceValue[] = value
end

function initFieldsAnalogLocationInputFactory(this::AnalogLocationInputFactory)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{AnalogLocationInputFactory})
        return staticGet_instance(AnalogLocationInputFactory)
end


function initAnalogLocationInputFactory(this::AnalogLocationInputFactory)
        initFieldsAnalogLocationInputFactory(this)
        nothing
        nothing
end

function newAnalogLocationInputFactory()
    this = AnalogLocationInputFactory()
    initAnalogLocationInputFactory(this)
    this
end


function addPlayer(this::AnalogLocationInputFactory, playerInputId)
        local analogLocationInput = staticGet_NULL_ANALOG_LOCATION_INPUT(AnalogLocationInput)
        if playerInputId < AllBinary.size(this.list)
            analogLocationInput = (AllBinary.get(this.list, playerInputId))
        end
        if analogLocationInput === staticGet_NULL_ANALOG_LOCATION_INPUT(AnalogLocationInput)
            analogLocationInput = newAnalogLocationInput(playerInputId)
            AllBinary.add(this.list, analogLocationInput)
        end
        nothing
end


function getInstanceForPlayer(this::AnalogLocationInputFactory, playerInputId)
        return (AllBinary.get(this.list, playerInputId))
end


function getList(this::AnalogLocationInputFactory)
        return this.list
end

