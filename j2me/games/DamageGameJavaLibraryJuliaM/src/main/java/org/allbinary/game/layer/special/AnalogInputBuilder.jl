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
# package org.allbinary.game.layer.special

mutable struct AnalogInputBuilder <: JObject
    AnalogInputBuilder() = new()
end

const AnalogInputBuilder_instanceValue = Ref{Any}(nothing)
const AnalogInputBuilder_instanceSet = Ref(false)
function staticGet_instance(::Type{AnalogInputBuilder})
    if !AnalogInputBuilder_instanceSet[]
        AnalogInputBuilder_instanceSet[] = true
        AnalogInputBuilder_instanceValue[] = newAnalogInputBuilder()
    end
    AnalogInputBuilder_instanceValue[]
end
function staticSet_instance(::Type{AnalogInputBuilder}, value)
    AnalogInputBuilder_instanceSet[] = true
    AnalogInputBuilder_instanceValue[] = value
end

function initFieldsAnalogInputBuilder(this::AnalogInputBuilder)
    nothing
end

function initAnalogInputBuilder(this::AnalogInputBuilder)
    initFieldsAnalogInputBuilder(this)
end

function newAnalogInputBuilder()
    this = AnalogInputBuilder()
    initAnalogInputBuilder(this)
    this
end


function getInstance(::Type{AnalogInputBuilder})
        return staticGet_instance(AnalogInputBuilder)
end


function disable(this::AnalogInputBuilder, inputProcessorArray, collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_UP(Canvas) + 1] = newSpecialUpGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_DOWN(Canvas) + 1] = newSpecialDownGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_RIGHT(Canvas) + 1] = newSpecialRightGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_LEFT(Canvas) + 1] = newSpecialLeftGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_KEY_NUM0(Canvas) + 1] = newSpecial1GameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_KEY_NUM5(Canvas) + 1] = newSpecial3GameInputProcessor(collidableDestroyableDamageableLayer)
        nothing
end


function enable(this::AnalogInputBuilder, inputProcessorArray, collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_UP(Canvas) + 1] = newSpecialAnalogUpGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_DOWN(Canvas) + 1] = newSpecialAnalogDownGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_RIGHT(Canvas) + 1] = newSpecialAnalogRightGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_LEFT(Canvas) + 1] = newSpecialAnalogLeftGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_KEY_NUM0(Canvas) + 1] = newSpecialAnalogLeftTriggerGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[staticGet_KEY_NUM5(Canvas) + 1] = newSpecialAnalogRightTriggerGameInputProcessor(collidableDestroyableDamageableLayer)
        nothing
end

