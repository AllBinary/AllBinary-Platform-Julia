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

mutable struct PacePatrolAIFactory <: JObject
    PacePatrolAIFactory() = new()
end


function initFieldsPacePatrolAIFactory(this::PacePatrolAIFactory)
    nothing
end

function initPacePatrolAIFactory(this::PacePatrolAIFactory)
    initFieldsPacePatrolAIFactory(this)
end

function newPacePatrolAIFactory()
    this = PacePatrolAIFactory()
    initPacePatrolAIFactory(this)
    this
end


function getInstance(this::PacePatrolAIFactory, hashtable, ownerLayerInterface, gameInput)
        AllBinary.put(hashtable, staticGet_MAX_DISTANCE(BasePatrolAI), AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(220)))
        return newPacePatrolAI(hashtable, ownerLayerInterface, gameInput)
end

