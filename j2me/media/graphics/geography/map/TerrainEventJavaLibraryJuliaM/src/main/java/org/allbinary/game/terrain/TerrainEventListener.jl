# Generated Code Do Not Modify
# package org.allbinary.game.terrain

mutable struct TerrainEventListener <: JObject
    list::Any
    TerrainEventListener() = new()
end


function initFieldsTerrainEventListener(this::TerrainEventListener)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end

function initTerrainEventListener(this::TerrainEventListener)
    initFieldsTerrainEventListener(this)
end

function newTerrainEventListener()
    this = TerrainEventListener()
    initTerrainEventListener(this)
    this
end


function onEvent(this::TerrainEventListener, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onTerrainEvent(this::TerrainEventListener, terrainEvent)
        AllBinary.clear(this.list)
        AllBinary.add(this.list, terrainEvent)
        nothing
end


function getList(this::TerrainEventListener)
        return this.list
end

