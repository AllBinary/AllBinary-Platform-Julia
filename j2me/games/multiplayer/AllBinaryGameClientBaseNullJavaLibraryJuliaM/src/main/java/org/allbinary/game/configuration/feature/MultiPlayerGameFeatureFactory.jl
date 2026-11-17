# Generated Code Do Not Modify
# package org.allbinary.game.configuration.feature

mutable struct MultiPlayerGameFeatureFactory <: JObject
    MultiPlayerGameFeatureFactory() = new()
end

const MultiPlayerGameFeatureFactory_instanceValue = Ref{Any}(nothing)
const MultiPlayerGameFeatureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{MultiPlayerGameFeatureFactory})
    if !MultiPlayerGameFeatureFactory_instanceSet[]
        MultiPlayerGameFeatureFactory_instanceSet[] = true
        MultiPlayerGameFeatureFactory_instanceValue[] = newMultiPlayerGameFeatureFactory()
    end
    MultiPlayerGameFeatureFactory_instanceValue[]
end
function staticSet_instance(::Type{MultiPlayerGameFeatureFactory}, value)
    MultiPlayerGameFeatureFactory_instanceSet[] = true
    MultiPlayerGameFeatureFactory_instanceValue[] = value
end

function initFieldsMultiPlayerGameFeatureFactory(this::MultiPlayerGameFeatureFactory)
    nothing
end


function getInstance(::Type{MultiPlayerGameFeatureFactory})
        return staticGet_instance(MultiPlayerGameFeatureFactory)
end


function initMultiPlayerGameFeatureFactory(this::MultiPlayerGameFeatureFactory)
        initFieldsMultiPlayerGameFeatureFactory(this)
        nothing
        nothing
end

function newMultiPlayerGameFeatureFactory()
    this = MultiPlayerGameFeatureFactory()
    initMultiPlayerGameFeatureFactory(this)
    this
end


function addCommands(this::MultiPlayerGameFeatureFactory, anyType)
        local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
        local canvas = (anyType)
        AllBinary.addCommand(canvas, gameCommandsFactory.QUIT_COMMAND)
        nothing
end

