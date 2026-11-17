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

mutable struct InputProbability <: JObject
    likelyhoodIntegerArray::Any
    repeatLikelyhoodIntegerArray::Any
    max::Int32
    timeDelayHelper::Any
    InputProbability() = new()
end

const InputProbability_INPUT_PROBABILITYValue = Ref{Any}(nothing)
const InputProbability_INPUT_PROBABILITYSet = Ref(false)
function staticGet_INPUT_PROBABILITY(::Type{InputProbability})
    if !InputProbability_INPUT_PROBABILITYSet[]
        InputProbability_INPUT_PROBABILITYSet[] = true
        InputProbability_INPUT_PROBABILITYValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(0))
    end
    InputProbability_INPUT_PROBABILITYValue[]
end
function staticSet_INPUT_PROBABILITY(::Type{InputProbability}, value)
    InputProbability_INPUT_PROBABILITYSet[] = true
    InputProbability_INPUT_PROBABILITYValue[] = value
end

function initFieldsInputProbability(this::InputProbability)
    this.likelyhoodIntegerArray = nothing
    this.repeatLikelyhoodIntegerArray = nothing
    this.max = Int32(0)
    this.timeDelayHelper = nothing
    
    
    
    
    nothing
end


function initInputProbability(this::InputProbability, likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, max, timeDelayHelper)
        initFieldsInputProbability(this)
        this.likelyhoodIntegerArray = likelyhoodIntegerArray
        this.repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray
        this.max = max
        this.timeDelayHelper = timeDelayHelper
        nothing
end

function newInputProbability(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, max, timeDelayHelper)
    this = InputProbability()
    initInputProbability(this, likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, max, timeDelayHelper)
    this
end


function getLikelyhoodIntegerArray(this::InputProbability)
        return this.likelyhoodIntegerArray
end


function getRepeatLikelyhoodIntegerArray(this::InputProbability)
        return this.repeatLikelyhoodIntegerArray
end


function getMax(this::InputProbability)
        return this.max
end


function getTimeDelayHelper(this::InputProbability)
        return this.timeDelayHelper
end


function toHashtable(this::InputProbability)
        local hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
        AllBinary.put(hashtable, staticGet_INPUT_PROBABILITY(InputProbability), this)
        return hashtable
end

