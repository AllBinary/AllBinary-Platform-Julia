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
# package org.allbinary.game.displayable

mutable struct GameLevelDisplayChangeEventListenersFactory <: JObject
    list::Any
    GameLevelDisplayChangeEventListenersFactory() = new()
end

const GameLevelDisplayChangeEventListenersFactory_instanceValue = Ref{Any}(nothing)
const GameLevelDisplayChangeEventListenersFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameLevelDisplayChangeEventListenersFactory})
    if !GameLevelDisplayChangeEventListenersFactory_instanceSet[]
        GameLevelDisplayChangeEventListenersFactory_instanceSet[] = true
        GameLevelDisplayChangeEventListenersFactory_instanceValue[] = newGameLevelDisplayChangeEventListenersFactory()
    end
    GameLevelDisplayChangeEventListenersFactory_instanceValue[]
end
function staticSet_instance(::Type{GameLevelDisplayChangeEventListenersFactory}, value)
    GameLevelDisplayChangeEventListenersFactory_instanceSet[] = true
    GameLevelDisplayChangeEventListenersFactory_instanceValue[] = value
end

function initFieldsGameLevelDisplayChangeEventListenersFactory(this::GameLevelDisplayChangeEventListenersFactory)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end

function initGameLevelDisplayChangeEventListenersFactory(this::GameLevelDisplayChangeEventListenersFactory)
    initFieldsGameLevelDisplayChangeEventListenersFactory(this)
end

function newGameLevelDisplayChangeEventListenersFactory()
    this = GameLevelDisplayChangeEventListenersFactory()
    initGameLevelDisplayChangeEventListenersFactory(this)
    this
end


function getInstance(::Type{GameLevelDisplayChangeEventListenersFactory})
        return staticGet_instance(GameLevelDisplayChangeEventListenersFactory)
end


function add(this::GameLevelDisplayChangeEventListenersFactory, displayChangeEventListener)
        AllBinary.add(this.list, displayChangeEventListener)
        AllBinary.addListenerInterface(AllBinary.getInstance(DisplayChangeEventHandler), displayChangeEventListener)
        nothing
end


function clear(this::GameLevelDisplayChangeEventListenersFactory)
        local displayChangeEventHandler = AllBinary.getInstance(DisplayChangeEventHandler)
        local displayChangeEventListener = nothing
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            displayChangeEventListener = (this.list.objectArray[index + 1])
            AllBinary.removeListener(displayChangeEventHandler, displayChangeEventListener)
            finally
            end
            end
        end
        AllBinary.clear(this.list)
        nothing
end

