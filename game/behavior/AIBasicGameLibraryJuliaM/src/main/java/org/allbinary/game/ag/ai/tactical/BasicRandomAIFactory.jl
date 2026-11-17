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
# package org.allbinary.game.ag.ai.tactical

mutable struct BasicRandomAIFactory <: JObject
    BasicRandomAIFactory() = new()
end


function initFieldsBasicRandomAIFactory(this::BasicRandomAIFactory)
    nothing
end

function initBasicRandomAIFactory(this::BasicRandomAIFactory)
    initFieldsBasicRandomAIFactory(this)
end

function newBasicRandomAIFactory()
    this = BasicRandomAIFactory()
    initBasicRandomAIFactory(this)
    this
end


function getInstance(this::BasicRandomAIFactory, hashtable, ownerLayerInterface, gameInput)
        local visitor = (AllBinary.get(hashtable, (staticGet_AI_VISITOR(BasicAI))))
        if visitor === nothing
            throw(jNewException("Exception", "No Visitor Provided"))
        end
        local inputProbability = (AllBinary.get(hashtable, (staticGet_INPUT_PROBABILITY(InputProbability))))
        return newBasicRandomAI(ownerLayerInterface, gameInput, inputProbability, visitor)
end

