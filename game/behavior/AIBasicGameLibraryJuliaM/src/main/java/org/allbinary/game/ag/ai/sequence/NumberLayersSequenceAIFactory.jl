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
# package org.allbinary.game.ag.ai.sequence

mutable struct NumberLayersSequenceAIFactory <: JObject
    NumberLayersSequenceAIFactory() = new()
end


function initFieldsNumberLayersSequenceAIFactory(this::NumberLayersSequenceAIFactory)
    nothing
end

function initNumberLayersSequenceAIFactory(this::NumberLayersSequenceAIFactory)
    initFieldsNumberLayersSequenceAIFactory(this)
end

function newNumberLayersSequenceAIFactory()
    this = NumberLayersSequenceAIFactory()
    initNumberLayersSequenceAIFactory(this)
    this
end


function getInstance(this::NumberLayersSequenceAIFactory, numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        return newNumberLayersSequenceAI(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
end

