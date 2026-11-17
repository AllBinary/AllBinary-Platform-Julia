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

# extends BasePatrolAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PacePatrolAI <: JObject
    trackingList::Any
    firingDistance::Int32
    isFollowLimitedByTerrain::Bool
    PacePatrolAI() = new()
end


function initFieldsPacePatrolAI(this::PacePatrolAI)
    this.trackingList = nothing
    this.firingDistance = Int32(0)
    this.isFollowLimitedByTerrain = false
    
    this.firingDistance = Int32(0)
    this.isFollowLimitedByTerrain = false
    nothing
end


function initPacePatrolAI(this::PacePatrolAI, hashtable, ownerLayerInterface, gameInput)
        initBasePatrolAI(this, hashtable, ownerLayerInterface, gameInput)
        initFieldsPacePatrolAI(this)
        AllBinary.addListenerInterface(AllBinary.getInstance(TrackingEventHandler), this)
        this.trackingList = newBasicArrayListD()
        nothing
end

function newPacePatrolAI(hashtable, ownerLayerInterface, gameInput)
    this = PacePatrolAI()
    initPacePatrolAI(this, hashtable, ownerLayerInterface, gameInput)
    this
end


function processAI(this::PacePatrolAI, allBinaryLayerManager)
        AllBinary.update(this)
        local direction = AllBinary.setFiringDirectionForTargetIfInRange(this)
        local directionFactory = AllBinary.getInstance(DirectionFactory)
        if direction === directionFactory.LEFT
            if this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain
                AllBinary.processKeyAI(this, staticGet_LEFT(Canvas))
            end
            this.keyDirection = staticGet_LEFT(Canvas)
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = Int32(0)
            AllBinary.processKeyAI(this, staticGet_KEY_NUM1(Canvas))
        elseif direction === directionFactory.RIGHT
            if this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain
                AllBinary.processKeyAI(this, staticGet_RIGHT(Canvas))
            end
            this.keyDirection = staticGet_RIGHT(Canvas)
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = Int32(0)
            AllBinary.processKeyAI(this, staticGet_KEY_NUM1(Canvas))
        else
            AllBinary.processKeyAI(this, this.keyDirection)
        end
        nothing
end


function setFiringDirectionForTargetIfInRange(this::PacePatrolAI)
        local directionFactory = AllBinary.getInstance(DirectionFactory)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local direction = directionFactory.NOT_BORDERED_WITH
        local lastTrackingEvent = nothing
        local lastTrackingLayerInterface = nothing
        local directionCompositeInterface = nothing
        local size::Int32 = AllBinary.size(this.trackingList)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            lastTrackingEvent = (AllBinary.get(this.trackingList, Int32(0)))
            lastTrackingLayerInterface = AllBinary.getLayerInterface(lastTrackingEvent)
            local x::Int32 = AllBinary.getXP(lastTrackingLayerInterface)
            local y::Int32 = AllBinary.getYP(lastTrackingLayerInterface)
            local yDistance::Int32 = AllBinary.getYP(ownerLayerInterface) - y - AllBinary.getHeight(ownerLayerInterface)
            local xDistance::Int32 = AllBinary.getXP(ownerLayerInterface) - x - AllBinary.getWidth(ownerLayerInterface)
            local absXDistance::Int32 = Base.abs(xDistance)
            local absYDistance::Int32 = Base.abs(yDistance)
            if absYDistance <= Int32(100)
                if absXDistance < AllBinary.getFiringDistance(this) ÷ Int32(2)
                    directionCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
                    if xDistance < Int32(0) && AllBinary.getDirection(directionCompositeInterface) == directionFactory.RIGHT
                        direction = directionFactory.RIGHT
                    elseif xDistance > Int32(0) && AllBinary.getDirection(directionCompositeInterface) == directionFactory.LEFT
                        direction = directionFactory.LEFT
                    end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return direction
end


function disable(this::PacePatrolAI)
        nothing
        nothing
end


function onEvent(this::PacePatrolAI, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onMovement(this::PacePatrolAI, trackingEvent)
        AllBinary.clear(this.trackingList)
        AllBinary.add(this.trackingList, trackingEvent)
        nothing
end


function getFiringDistance(this::PacePatrolAI)
        return this.firingDistance
end


function setFiringDistance(this::PacePatrolAI, firingDistance)
        this.firingDistance = firingDistance
        nothing
end

