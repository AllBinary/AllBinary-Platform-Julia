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

mutable struct KeyPressesAIFactory <: JObject
    KeyPressesAIFactory() = new()
end


function initFieldsKeyPressesAIFactory(this::KeyPressesAIFactory)
    nothing
end

function initKeyPressesAIFactory(this::KeyPressesAIFactory)
    initFieldsKeyPressesAIFactory(this)
end

function newKeyPressesAIFactory()
    this = KeyPressesAIFactory()
    initKeyPressesAIFactory(this)
    this
end


function getInstance(this::KeyPressesAIFactory, hashtable, ownerLayerInterface, gameInput)
        local isSingleKeyProcessing::Bool = AllBinary.isSingleKeyProcessing(AllBinary.getInstance(InputFeatureFactory))
        if isSingleKeyProcessing
            return newKeyPressesAI(hashtable, ownerLayerInterface, gameInput)
        else
            return newMultiKeyPressesAI(hashtable, ownerLayerInterface, gameInput)
        end
end

