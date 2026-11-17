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
# package org.allbinary.game.ag.ai

mutable struct DiveAndDirectionalTrackingAIFactory <: JObject
    DiveAndDirectionalTrackingAIFactory() = new()
end


function initFieldsDiveAndDirectionalTrackingAIFactory(this::DiveAndDirectionalTrackingAIFactory)
    nothing
end

function initDiveAndDirectionalTrackingAIFactory(this::DiveAndDirectionalTrackingAIFactory)
    initFieldsDiveAndDirectionalTrackingAIFactory(this)
end

function newDiveAndDirectionalTrackingAIFactory()
    this = DiveAndDirectionalTrackingAIFactory()
    initDiveAndDirectionalTrackingAIFactory(this)
    this
end


function getInstance(this::DiveAndDirectionalTrackingAIFactory, hashtable, ownerLayerInterface, gameInput)
        local visitorCanBeNull = AllBinary.get(hashtable, (staticGet_AI_VISITOR(BasicAI)))
        if visitorCanBeNull === nothing
            visitorCanBeNull = AllBinary.getInstance(ThrustAIVisitorFactory)
        end
        local hashtable2 = AllBinary.getInstance(newBasicProbabilityAIDataFactory())
        AllBinary.put(hashtable2, staticGet_AI_VISITOR(BasicAI), AllBinary.getInstance(LastKeyAIVisitorFactory))
        local artificialIntelligenceInterface = AllBinary.getInstance(newBasicRandomAIFactory(), hashtable2, ownerLayerInterface, gameInput)
        return newDiveAndDirectionalTrackingAI(ownerLayerInterface, artificialIntelligenceInterface, gameInput, (visitorCanBeNull))
end

