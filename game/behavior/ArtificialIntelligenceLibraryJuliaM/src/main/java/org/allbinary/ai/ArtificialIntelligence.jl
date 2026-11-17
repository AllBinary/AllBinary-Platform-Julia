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
# package org.allbinary.ai

mutable struct ArtificialIntelligence <: JObject
    ArtificialIntelligence() = new()
end

const ArtificialIntelligence_AI_IDValue = Ref{Any}(nothing)
const ArtificialIntelligence_AI_IDSet = Ref(false)
function staticGet_AI_ID(::Type{ArtificialIntelligence})
    if !ArtificialIntelligence_AI_IDSet[]
        ArtificialIntelligence_AI_IDSet[] = true
        ArtificialIntelligence_AI_IDValue[] = Int32(2)
    end
    ArtificialIntelligence_AI_IDValue[]
end
function staticSet_AI_ID(::Type{ArtificialIntelligence}, value)
    ArtificialIntelligence_AI_IDSet[] = true
    ArtificialIntelligence_AI_IDValue[] = value
end
const ArtificialIntelligence_instanceValue = Ref{Any}(nothing)
const ArtificialIntelligence_instanceSet = Ref(false)
function staticGet_instance(::Type{ArtificialIntelligence})
    if !ArtificialIntelligence_instanceSet[]
        ArtificialIntelligence_instanceSet[] = true
        ArtificialIntelligence_instanceValue[] = newArtificialIntelligence()
    end
    ArtificialIntelligence_instanceValue[]
end
function staticSet_instance(::Type{ArtificialIntelligence}, value)
    ArtificialIntelligence_instanceSet[] = true
    ArtificialIntelligence_instanceValue[] = value
end

function initFieldsArtificialIntelligence(this::ArtificialIntelligence)
    nothing
end


function getInstance(::Type{ArtificialIntelligence})
        return staticGet_instance(ArtificialIntelligence)
end


function initArtificialIntelligence(this::ArtificialIntelligence)
        initFieldsArtificialIntelligence(this)
        nothing
        nothing
end

function newArtificialIntelligence()
    this = ArtificialIntelligence()
    initArtificialIntelligence(this)
    this
end


function processAI(this::ArtificialIntelligence, layerManager)
        nothing
        nothing
end


function getId(this::ArtificialIntelligence)
        return Int32(1)
end

