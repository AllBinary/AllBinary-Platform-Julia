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

mutable struct LurchRotationAIFactory <: JObject
    LurchRotationAIFactory() = new()
end


function initFieldsLurchRotationAIFactory(this::LurchRotationAIFactory)
    nothing
end

function initLurchRotationAIFactory(this::LurchRotationAIFactory)
    initFieldsLurchRotationAIFactory(this)
end

function newLurchRotationAIFactory()
    this = LurchRotationAIFactory()
    initLurchRotationAIFactory(this)
    this
end


function getInstance(this::LurchRotationAIFactory, hashtable, ownerLayerInterface, gameInput)
        return newLurchRotationAI(ownerLayerInterface, gameInput)
end

