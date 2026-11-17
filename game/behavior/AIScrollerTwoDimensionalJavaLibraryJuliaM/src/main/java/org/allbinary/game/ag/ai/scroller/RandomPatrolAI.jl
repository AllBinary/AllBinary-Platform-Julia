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
mutable struct RandomPatrolAI <: JObject
    changedDirection::Bool
    RandomPatrolAI() = new()
end


function initFieldsRandomPatrolAI(this::RandomPatrolAI)
    this.changedDirection = false
    this.changedDirection = true
    nothing
end


function initRandomPatrolAI(this::RandomPatrolAI, hashtable, ownerLayerInterface, gameInput)
        initBasePatrolAI(this, hashtable, ownerLayerInterface, gameInput)
        initFieldsRandomPatrolAI(this)
        AllBinary.updateRandomDistance(this)
        nothing
end

function newRandomPatrolAI(hashtable, ownerLayerInterface, gameInput)
    this = RandomPatrolAI()
    initRandomPatrolAI(this, hashtable, ownerLayerInterface, gameInput)
    this
end


function updateRandomDistance(this::RandomPatrolAI)
        this.currentDistance = AllBinary.getAbsoluteNextInt(AllBinary.getInstance(MyRandomFactory), AllBinary.intValue(this.maxDistance))
        nothing
end


function processAI(this::RandomPatrolAI, allBinaryLayerManager)
        AllBinary.update(this)
        AllBinary.processKeyAI(this, this.keyDirection)
        if this.changedDirection
            AllBinary.processKeyAI(this, staticGet_KEY_NUM1(Canvas))
            AllBinary.updateRandomDistance(this)
            this.changedDirection = false
        end
        nothing
end


function nextDirection(this::RandomPatrolAI)
        AllBinary.nextDirection(this)
        this.changedDirection = true
        nothing
end

