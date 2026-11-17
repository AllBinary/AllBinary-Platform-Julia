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

mutable struct NullAIFactory <: JObject
    NullAIFactory() = new()
end

const NullAIFactory_NULL_AIValue = Ref{Any}(nothing)
const NullAIFactory_NULL_AISet = Ref(false)
function staticGet_NULL_AI(::Type{NullAIFactory})
    if !NullAIFactory_NULL_AISet[]
        NullAIFactory_NULL_AISet[] = true
        NullAIFactory_NULL_AIValue[] = newNullAI()
    end
    NullAIFactory_NULL_AIValue[]
end
function staticSet_NULL_AI(::Type{NullAIFactory}, value)
    NullAIFactory_NULL_AISet[] = true
    NullAIFactory_NULL_AIValue[] = value
end

function initFieldsNullAIFactory(this::NullAIFactory)
    nothing
end

function initNullAIFactory(this::NullAIFactory)
    initFieldsNullAIFactory(this)
end

function newNullAIFactory()
    this = NullAIFactory()
    initNullAIFactory(this)
    this
end


function getInstance(this::NullAIFactory, hashtable, ownerLayerInterface, gameInput)
        return staticGet_NULL_AI(NullAIFactory)
end


function getInstance(::Type{NullAIFactory})
        return staticGet_NULL_AI(NullAIFactory)
end

