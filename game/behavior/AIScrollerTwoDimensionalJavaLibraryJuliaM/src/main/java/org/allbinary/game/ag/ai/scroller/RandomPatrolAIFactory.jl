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

mutable struct RandomPatrolAIFactory <: JObject
    RandomPatrolAIFactory() = new()
end


function initFieldsRandomPatrolAIFactory(this::RandomPatrolAIFactory)
    nothing
end

function initRandomPatrolAIFactory(this::RandomPatrolAIFactory)
    initFieldsRandomPatrolAIFactory(this)
end

function newRandomPatrolAIFactory()
    this = RandomPatrolAIFactory()
    initRandomPatrolAIFactory(this)
    this
end


function getInstance(this::RandomPatrolAIFactory, hashtable, ownerLayerInterface, gameInput)
        return newRandomPatrolAI(hashtable, ownerLayerInterface, gameInput)
end

