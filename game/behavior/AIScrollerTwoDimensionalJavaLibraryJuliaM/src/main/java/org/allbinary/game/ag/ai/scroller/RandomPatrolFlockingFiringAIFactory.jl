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

mutable struct RandomPatrolFlockingFiringAIFactory <: JObject
    RandomPatrolFlockingFiringAIFactory() = new()
end


function initFieldsRandomPatrolFlockingFiringAIFactory(this::RandomPatrolFlockingFiringAIFactory)
    nothing
end

function initRandomPatrolFlockingFiringAIFactory(this::RandomPatrolFlockingFiringAIFactory)
    initFieldsRandomPatrolFlockingFiringAIFactory(this)
end

function newRandomPatrolFlockingFiringAIFactory()
    this = RandomPatrolFlockingFiringAIFactory()
    initRandomPatrolFlockingFiringAIFactory(this)
    this
end


function getInstance(this::RandomPatrolFlockingFiringAIFactory, hashtable, ownerLayerInterface, gameInput)
        local artificialIntelligenceInterface = jNewArray(Any, Int32(2), nothing)
        artificialIntelligenceInterface[Int32(0) + 1] = newRandomPatrolAI(hashtable, ownerLayerInterface, gameInput)
        artificialIntelligenceInterface[Int32(1) + 1] = newTimedFireAI(Int32(1800), ownerLayerInterface, gameInput)
        return newArrayAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
end

