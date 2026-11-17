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

mutable struct ThrustAIVisitorFactory <: JObject
    ThrustAIVisitorFactory() = new()
end

const ThrustAIVisitorFactory_instanceValue = Ref{Any}(nothing)
const ThrustAIVisitorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ThrustAIVisitorFactory})
    if !ThrustAIVisitorFactory_instanceSet[]
        ThrustAIVisitorFactory_instanceSet[] = true
        ThrustAIVisitorFactory_instanceValue[] = newThrustAIVisitor()
    end
    ThrustAIVisitorFactory_instanceValue[]
end
function staticSet_instance(::Type{ThrustAIVisitorFactory}, value)
    ThrustAIVisitorFactory_instanceSet[] = true
    ThrustAIVisitorFactory_instanceValue[] = value
end

function initFieldsThrustAIVisitorFactory(this::ThrustAIVisitorFactory)
    nothing
end

function initThrustAIVisitorFactory(this::ThrustAIVisitorFactory)
    initFieldsThrustAIVisitorFactory(this)
end

function newThrustAIVisitorFactory()
    this = ThrustAIVisitorFactory()
    initThrustAIVisitorFactory(this)
    this
end


function getInstance(::Type{ThrustAIVisitorFactory})
        return staticGet_instance(ThrustAIVisitorFactory)
end

