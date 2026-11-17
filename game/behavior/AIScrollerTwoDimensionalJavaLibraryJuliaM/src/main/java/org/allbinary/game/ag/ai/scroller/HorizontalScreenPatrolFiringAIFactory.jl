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

mutable struct HorizontalScreenPatrolFiringAIFactory <: JObject
    HorizontalScreenPatrolFiringAIFactory() = new()
end


function initFieldsHorizontalScreenPatrolFiringAIFactory(this::HorizontalScreenPatrolFiringAIFactory)
    nothing
end

function initHorizontalScreenPatrolFiringAIFactory(this::HorizontalScreenPatrolFiringAIFactory)
    initFieldsHorizontalScreenPatrolFiringAIFactory(this)
end

function newHorizontalScreenPatrolFiringAIFactory()
    this = HorizontalScreenPatrolFiringAIFactory()
    initHorizontalScreenPatrolFiringAIFactory(this)
    this
end


function getInstance(this::HorizontalScreenPatrolFiringAIFactory, hashtable, ownerLayerInterface, gameInput)
        return newHorizontalScreenPatrolAI(hashtable, ownerLayerInterface, gameInput)
end

