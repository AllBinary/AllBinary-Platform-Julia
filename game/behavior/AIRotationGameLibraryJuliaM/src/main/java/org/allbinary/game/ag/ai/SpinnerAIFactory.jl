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

mutable struct SpinnerAIFactory <: JObject
    SpinnerAIFactory() = new()
end


function initFieldsSpinnerAIFactory(this::SpinnerAIFactory)
    nothing
end

function initSpinnerAIFactory(this::SpinnerAIFactory)
    initFieldsSpinnerAIFactory(this)
end

function newSpinnerAIFactory()
    this = SpinnerAIFactory()
    initSpinnerAIFactory(this)
    this
end


function getInstance(this::SpinnerAIFactory, hashtable, ownerLayerInterface, gameInput)
        local direction = Int32[staticGet_LEFT(Canvas)]
        return newSpinnerAI(direction, ownerLayerInterface, gameInput)
end

