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

mutable struct BasicProbabilityAIDataFactory <: JObject
    BasicProbabilityAIDataFactory() = new()
end


function initFieldsBasicProbabilityAIDataFactory(this::BasicProbabilityAIDataFactory)
    nothing
end

function initBasicProbabilityAIDataFactory(this::BasicProbabilityAIDataFactory)
    initFieldsBasicProbabilityAIDataFactory(this)
end

function newBasicProbabilityAIDataFactory()
    this = BasicProbabilityAIDataFactory()
    initBasicProbabilityAIDataFactory(this)
    this
end


function getInstance(this::BasicProbabilityAIDataFactory)
        local likelyhoodIntegerArray = jNewArrayOf(Vector{Int32}, staticGet_KEY_NUM9(Canvas) + Int32(1), () -> jNewArray(Int32, Int32(2), nothing))
        local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
        likelyhoodIntegerArray[staticGet_UP(Canvas) + 1][Int32(0) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(0))
        likelyhoodIntegerArray[staticGet_UP(Canvas) + 1][Int32(1) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(10))
        likelyhoodIntegerArray[staticGet_DOWN(Canvas) + 1][Int32(0) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(10))
        likelyhoodIntegerArray[staticGet_DOWN(Canvas) + 1][Int32(1) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(14))
        likelyhoodIntegerArray[staticGet_LEFT(Canvas) + 1][Int32(0) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(14))
        likelyhoodIntegerArray[staticGet_LEFT(Canvas) + 1][Int32(1) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(18))
        likelyhoodIntegerArray[staticGet_RIGHT(Canvas) + 1][Int32(0) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(18))
        likelyhoodIntegerArray[staticGet_RIGHT(Canvas) + 1][Int32(1) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(22))
        likelyhoodIntegerArray[staticGet_KEY_NUM7(Canvas) + 1][Int32(0) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(22))
        likelyhoodIntegerArray[staticGet_KEY_NUM7(Canvas) + 1][Int32(1) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(26))
        likelyhoodIntegerArray[staticGet_KEY_NUM9(Canvas) + 1][Int32(0) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(26))
        likelyhoodIntegerArray[staticGet_KEY_NUM9(Canvas) + 1][Int32(1) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(30))
        likelyhoodIntegerArray[staticGet_KEY_NUM1(Canvas) + 1][Int32(0) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(30))
        likelyhoodIntegerArray[staticGet_KEY_NUM1(Canvas) + 1][Int32(1) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(40))
        local repeatLikelyhoodIntegerArray = jNewArray(Int32, staticGet_KEY_NUM9(Canvas) + Int32(1), nothing)
        repeatLikelyhoodIntegerArray[staticGet_UP(Canvas) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(0))
        repeatLikelyhoodIntegerArray[staticGet_DOWN(Canvas) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(0))
        repeatLikelyhoodIntegerArray[staticGet_LEFT(Canvas) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(0))
        repeatLikelyhoodIntegerArray[staticGet_RIGHT(Canvas) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(0))
        repeatLikelyhoodIntegerArray[staticGet_KEY_NUM7(Canvas) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(0))
        repeatLikelyhoodIntegerArray[staticGet_KEY_NUM9(Canvas) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(0))
        repeatLikelyhoodIntegerArray[staticGet_KEY_NUM1(Canvas) + 1] = AllBinary.getAt(smallIntegerSingletonFactory, Int32(10))
        local inputProbability = newInputProbability(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, Int32(42), staticGet_SINGLETON(NoTimeDelayHelper))
        return AllBinary.toHashtable(inputProbability)
end

