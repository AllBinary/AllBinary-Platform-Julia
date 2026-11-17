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
# package org.allbinary.game.terrain

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TerrainEventHandler <: JObject
    list::Any
    TerrainEventHandler() = new()
end

const TerrainEventHandler_hashtableValue = Ref{Any}(nothing)
const TerrainEventHandler_hashtableSet = Ref(false)
function staticGet_hashtable(::Type{TerrainEventHandler})
    if !TerrainEventHandler_hashtableSet[]
        TerrainEventHandler_hashtableSet[] = true
        TerrainEventHandler_hashtableValue[] = AllBinary.getInstance(StdUtil).NULL_TABLE
    end
    TerrainEventHandler_hashtableValue[]
end
function staticSet_hashtable(::Type{TerrainEventHandler}, value)
    TerrainEventHandler_hashtableSet[] = true
    TerrainEventHandler_hashtableValue[] = value
end

function initFieldsTerrainEventHandler(this::TerrainEventHandler)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function init(::Type{TerrainEventHandler})
        staticSet_hashtable(TerrainEventHandler, AllBinary.createHashtable(AllBinary.getInstance(StdUtil)))
        nothing
end


function getInstance(::Type{TerrainEventHandler}, anyType)
        local eventHandlerCanBeNull = AllBinary.get(staticGet_hashtable(TerrainEventHandler), anyType)
        if eventHandlerCanBeNull === nothing
            eventHandlerCanBeNull = newTerrainEventHandler()
            AllBinary.put(staticGet_hashtable(TerrainEventHandler), anyType, eventHandlerCanBeNull)
        end
        return (eventHandlerCanBeNull)
end


function initTerrainEventHandler(this::TerrainEventHandler)
        initBasicEventHandler(this)
        initFieldsTerrainEventHandler(this)
        nothing
        nothing
end

function newTerrainEventHandler()
    this = TerrainEventHandler()
    initTerrainEventHandler(this)
    this
end


function addListener(this::TerrainEventHandler, terrainEventListener)
        if !AllBinary.contains(this.list, terrainEventListener)
            AllBinary.add(this.list, terrainEventListener)
        end
        nothing
end


function removeAllListeners(this::TerrainEventHandler)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListener(this::TerrainEventHandler, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEvent(this::TerrainEventHandler, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local terrainEventListener = (AllBinary.get(this.list, index))
                AllBinary.onTerrainEvent(terrainEventListener, (eventObject))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            finally
            end
            end
        end
        AllBinary.fireEvent(this, eventObject)
        nothing
end


function process(this::TerrainEventHandler, eventObject, eventListenerInterface)
        local terrainEventListenerInterface = (eventListenerInterface)
        AllBinary.onTerrainEvent(terrainEventListenerInterface, (eventObject))
        nothing
end

