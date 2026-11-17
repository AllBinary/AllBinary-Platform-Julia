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

# extends BasicAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct FlockingAI <: JObject
    allowedDistance::Int32
    FlockingAI() = new()
end


function initFieldsFlockingAI(this::FlockingAI)
    this.allowedDistance = Int32(0)
    
    nothing
end


function initFlockingAI(this::FlockingAI, hashtable, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsFlockingAI(this)
        local allowedDistance = (AllBinary.get(hashtable, staticGet_MAX_DISTANCE(BasePatrolAI)))
        this.allowedDistance = AllBinary.intValue(allowedDistance)
        nothing
end

function newFlockingAI(hashtable, ownerLayerInterface, gameInput)
    this = FlockingAI()
    initFlockingAI(this, hashtable, ownerLayerInterface, gameInput)
    this
end


function processAI(this::FlockingAI, allBinaryLayerManager)
        local maxDistance::Int32 = Int32(0)
        local farAllbinaryLayer = staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
        local groupLayerManagerListener = AllBinary.getInstance(GroupLayerManagerListener)
        local list = AllBinary.getList(groupLayerManagerListener, AllBinary.getInstance(BasicGroupFactory).ENEMY)
        local size::Int32 = AllBinary.size(list)
        local allBinaryLayer = nothing
        local ownerLayerInterface = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            allBinaryLayer = (AllBinary.get(list, index))
            if AllBinary.getType(allBinaryLayer) != AllBinary.getStaticType(WeaponLayer)
                local distance::Int32 = AllBinary.getXYDistance(this, allBinaryLayer)
                if distance > maxDistance
                    maxDistance = distance
                    farAllbinaryLayer = allBinaryLayer
                    if distance > this.allowedDistance
                        break
                    end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        if maxDistance > this.allowedDistance
            if farAllbinaryLayer !== staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
                ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
                if AllBinary.getXP(farAllbinaryLayer) < AllBinary.getXP(ownerLayerInterface)
                    AllBinary.processKeyAI(this, staticGet_LEFT(Canvas))
                elseif AllBinary.getXP(farAllbinaryLayer) > AllBinary.getXP(ownerLayerInterface)
                    AllBinary.processKeyAI(this, staticGet_RIGHT(Canvas))
                elseif AllBinary.getYP(farAllbinaryLayer) > AllBinary.getYP(ownerLayerInterface)
                    AllBinary.processKeyAI(this, staticGet_UP(Canvas))
                elseif AllBinary.getYP(farAllbinaryLayer) < AllBinary.getYP(ownerLayerInterface)
                    AllBinary.processKeyAI(this, staticGet_DOWN(Canvas))
                end
            end
        end
        nothing
end


function getXYDistance(this::FlockingAI, allBinaryLayer)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local xTotalDistance::Int32 = (AllBinary.getXP(allBinaryLayer) + AllBinary.getHalfWidth(allBinaryLayer)) - (AllBinary.getXP(ownerLayerInterface) + AllBinary.getHalfWidth(ownerLayerInterface))
        local yTotalDistance::Int32 = (AllBinary.getYP(allBinaryLayer) + AllBinary.getHalfHeight(allBinaryLayer)) - (AllBinary.getYP(ownerLayerInterface) + AllBinary.getHalfHeight(ownerLayerInterface))
        local mathUtil = AllBinary.getInstance(MathUtil)
        local totalDistance::Int32 = AllBinary.abs(mathUtil, xTotalDistance) + AllBinary.abs(mathUtil, yTotalDistance)
        return totalDistance
end

