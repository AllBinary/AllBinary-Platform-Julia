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

mutable struct UpDownVectorAIFactory <: JObject
    UpDownVectorAIFactory() = new()
end


function initFieldsUpDownVectorAIFactory(this::UpDownVectorAIFactory)
    nothing
end

function initUpDownVectorAIFactory(this::UpDownVectorAIFactory)
    initFieldsUpDownVectorAIFactory(this)
end

function newUpDownVectorAIFactory()
    this = UpDownVectorAIFactory()
    initUpDownVectorAIFactory(this)
    this
end


function getInstance(this::UpDownVectorAIFactory, hashtable, ownerLayerInterface, gameInput)
        return newUpDownVectorAI(ownerLayerInterface, gameInput)
end

