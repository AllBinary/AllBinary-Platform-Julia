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
# package org.allbinary.game.input

mutable struct InputProcessorFactory <: JObject
    inputProcessor::Any
    InputProcessorFactory() = new()
end

const InputProcessorFactory_instanceValue = Ref{Any}(nothing)
const InputProcessorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{InputProcessorFactory})
    if !InputProcessorFactory_instanceSet[]
        InputProcessorFactory_instanceSet[] = true
        InputProcessorFactory_instanceValue[] = newInputProcessorFactory()
    end
    InputProcessorFactory_instanceValue[]
end
function staticSet_instance(::Type{InputProcessorFactory}, value)
    InputProcessorFactory_instanceSet[] = true
    InputProcessorFactory_instanceValue[] = value
end

function initFieldsInputProcessorFactory(this::InputProcessorFactory)
    this.inputProcessor = nothing
    this.inputProcessor = newInputProcessor()
    nothing
end

function initInputProcessorFactory(this::InputProcessorFactory)
    initFieldsInputProcessorFactory(this)
end

function newInputProcessorFactory()
    this = InputProcessorFactory()
    initInputProcessorFactory(this)
    this
end


function getInstance(::Type{InputProcessorFactory})
        return staticGet_instance(InputProcessorFactory)
end


function getInputProcessor(this::InputProcessorFactory)
        return this.inputProcessor
end

