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
# package org.allbinary.game.ag.ai.scroller

# extends PacePatrolAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TerrainPatrolAI <: JObject
    terrainEventListener::Any
    DOWN::Any
    CLIFF::Any
    TerrainPatrolAI() = new()
end


function initFieldsTerrainPatrolAI(this::TerrainPatrolAI)
    this.terrainEventListener = nothing
    this.DOWN = nothing
    this.CLIFF = nothing
    this.terrainEventListener = newTerrainEventListener()
    this.DOWN = AllBinary.getInstance(AngleFactory).DOWN
    this.CLIFF = newBasicTerrainInfo(this.DOWN)
    nothing
end


function initTerrainPatrolAI(this::TerrainPatrolAI, hashtable, ownerLayerInterface, gameInput)
        initPacePatrolAI(this, hashtable, ownerLayerInterface, gameInput)
        initFieldsTerrainPatrolAI(this)
        AllBinary.addListener(AllBinary.getInstance(TerrainEventHandler, ownerLayerInterface), this.terrainEventListener)
        AllBinary.onTerrainEvent(this.terrainEventListener, AllBinary.getNext(AllBinary.getInstance(TerrainEventCircularStaticPool), this.CLIFF))
        nothing
end

function newTerrainPatrolAI(hashtable, ownerLayerInterface, gameInput)
    this = TerrainPatrolAI()
    initTerrainPatrolAI(this, hashtable, ownerLayerInterface, gameInput)
    this
end


function update(this::TerrainPatrolAI)
        AllBinary.update(this)
        AllBinary.changeDirectionIfCliffReached(this)
        nothing
end


function changeDirectionIfCliffReached(this::TerrainPatrolAI)
        local list = AllBinary.getList(this.terrainEventListener)
        local size::Int32 = AllBinary.size(list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local terrainEvent = (AllBinary.removeAt(list, index))
            local basicTerrainInfo = AllBinary.getBasicTerrainInfo(terrainEvent)
            local angle = AllBinary.getAngle(basicTerrainInfo)
            if angle === this.DOWN
                AllBinary.nextDirection(this)
                if !this.isFollowLimitedByTerrain
                    AllBinary.putF(this.logUtil, "Following Limited", this, "onTerrainEvent")
                    this.isFollowLimitedByTerrain = true
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

