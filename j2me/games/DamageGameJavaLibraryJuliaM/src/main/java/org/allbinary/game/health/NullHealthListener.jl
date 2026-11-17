#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.health

mutable struct NullHealthListener <: JObject
    NullHealthListener() = new()
end

const NullHealthListener_NULL_HEALTH_LISTENERValue = Ref{Any}(nothing)
const NullHealthListener_NULL_HEALTH_LISTENERSet = Ref(false)
function staticGet_NULL_HEALTH_LISTENER(::Type{NullHealthListener})
    if !NullHealthListener_NULL_HEALTH_LISTENERSet[]
        NullHealthListener_NULL_HEALTH_LISTENERSet[] = true
        NullHealthListener_NULL_HEALTH_LISTENERValue[] = newNullHealthListener()
    end
    NullHealthListener_NULL_HEALTH_LISTENERValue[]
end
function staticSet_NULL_HEALTH_LISTENER(::Type{NullHealthListener}, value)
    NullHealthListener_NULL_HEALTH_LISTENERSet[] = true
    NullHealthListener_NULL_HEALTH_LISTENERValue[] = value
end

function initFieldsNullHealthListener(this::NullHealthListener)
    nothing
end

function initNullHealthListener(this::NullHealthListener)
    initFieldsNullHealthListener(this)
end

function newNullHealthListener()
    this = NullHealthListener()
    initNullHealthListener(this)
    this
end


function onHealthChange(this::NullHealthListener)
        nothing
        nothing
end

