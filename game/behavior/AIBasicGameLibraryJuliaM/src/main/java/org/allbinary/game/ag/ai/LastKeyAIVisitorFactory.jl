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

mutable struct LastKeyAIVisitorFactory <: JObject
    LastKeyAIVisitorFactory() = new()
end

const LastKeyAIVisitorFactory_instanceValue = Ref{Any}(nothing)
const LastKeyAIVisitorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{LastKeyAIVisitorFactory})
    if !LastKeyAIVisitorFactory_instanceSet[]
        LastKeyAIVisitorFactory_instanceSet[] = true
        LastKeyAIVisitorFactory_instanceValue[] = newLastKeyAIVisitor()
    end
    LastKeyAIVisitorFactory_instanceValue[]
end
function staticSet_instance(::Type{LastKeyAIVisitorFactory}, value)
    LastKeyAIVisitorFactory_instanceSet[] = true
    LastKeyAIVisitorFactory_instanceValue[] = value
end

function initFieldsLastKeyAIVisitorFactory(this::LastKeyAIVisitorFactory)
    nothing
end

function initLastKeyAIVisitorFactory(this::LastKeyAIVisitorFactory)
    initFieldsLastKeyAIVisitorFactory(this)
end

function newLastKeyAIVisitorFactory()
    this = LastKeyAIVisitorFactory()
    initLastKeyAIVisitorFactory(this)
    this
end


function getInstance(::Type{LastKeyAIVisitorFactory})
        return staticGet_instance(LastKeyAIVisitorFactory)
end

